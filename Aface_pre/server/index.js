const express = require('express');

const md5 = require('md5');

const cors = require('cors');

const bodyParser = require('body-parser');

const mysql = require('mysql');

const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'123456',
    database:'xzqa',
    //编码方式
    charset:'utf8',
    //最大连接数
    connectionLimit:20
})

const server = express();

//将cors作为服务器的server的中间件
server.use(cors({
    origin:['http://localhost:8080','http://127.0.0.1:8080']
}));

//将bodyParser作为Server的中间件
server.use(bodyParser.urlencoded({extended:false}));

server.get('/category',(req,res)=>{
    let sql = 'SELECT id,category_name FROM xzqa_category';
    //通过连接池的query（）方法来执行SQL语句
    pool.query(sql,(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results});
    });
});

server.get('/articles',(req,res)=>{
    let cid = req.query.cid;
    //获取地址栏中的page参数，该参数表示页码
    let page = parseInt(req.query.page);
    //存储分页显示的记录数量
    let pagesize = 10;

    let pagecount;
    //
    let sql = "SELECT COUNT(id) AS count FROM xzqa_article WHERE category_id=?";
    pool.query(sql,[cid],(error,results)=>{
        if(error) throw error;
        //获取总记录数
        let rowcount = results[0].count;
        //计算总页数，标准公式MAth.ceil(总记录数/每页显示的条数);
        pagecount = Math.ceil(rowcount / pagesize);
        //******************************************** */
        
        //******************************************** */
        let offset = (page-1) * pagesize;
        sql = 'SELECT id,subject,description,image FROM xzqa_article WHERE category_id=? LIMIT ?,?';
        pool.query(sql,[cid,offset,pagesize],(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,results:results,pagecount:pagecount})
        });

        // console.log("总记录数有：" + results[0].count + '条');
        // console.log("总页数有：" + pagecount + '页');
    });
    //
    
});

//获取文章详细信息

server.get('/cdetails',(req,res)=>{
    let id = req.query.id;
    //SQL查询
    let sql = 'SELECT r.id,subject,content,image,created_at,nickname,avatar,article_number FROM xzqa_article AS r INNER JOIN xzqa_author AS u ON author_id = u.id WHERE r.id=?';
    pool.query(sql,[id],(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,articleInfo:results[0]});
    });
});
server.get('/details',(req,res)=>{
    let id = req.query.id;
    //SQL查询
    let sql = 'SELECT r.id,subject,content,image,created_at,nickname,avatar,article_number FROM xzqa_article AS r INNER JOIN xzqa_author AS u ON author_id = u.id WHERE r.id=?';
    pool.query(sql,[id],(error,results)=>{
        if(error) throw error;
        res.send({message:'查询成功',code:1,articleInfo:results[0]});
    });
});

//用户注册的接口
server.post('/register',(req,res)=>{
    //获取用户名和密码
    let username = req.body.username;
    let password = req.body.password;
    //已经获取到用户名和密码，但不能直接插入数据表
    let sql = 'SELECT COUNT(id) AS count FROM xzqa_author WHERE username=?';
    pool.query(sql,[username],(error,results)=>{
        if(error) throw error;
        if(!results[0].count){
            sql = 'INSERT INTO xzqa_author(username,password) VALUES(?,MD5(?))';
            pool.query(sql,[username,password],(error,results)=>{
                if(error) throw error;
                res.send({message8:'注册成功',code:1});
            })
        }else{
            res.send({message:'用户已存在',code:0})
        }
    })
})

server.post('/cregister',(req,res)=>{
    //获取用户名和密码
    let username = req.body.username;
    let password = req.body.password;
    //已经获取到用户名和密码，但不能直接插入数据表
    let sql = 'SELECT COUNT(id) AS count FROM xzqa_author WHERE username=?';
    pool.query(sql,[username],(error,results)=>{
        if(error) throw error;
        if(!results[0].count){
            sql = 'INSERT INTO xzqa_author(username,password) VALUES(?,MD5(?))';
            pool.query(sql,[username,password],(error,results)=>{
                if(error) throw error;
                res.send({message8:'注册成功',code:1});
            })
        }else{
            res.send({message:'用户已存在',code:0})
        }
    })
})

//用户登录的接口
server.post('/login',(req,res)=>{
    let username = req.body.username;
    let password = req.body.password;
    //以用户名和密码为条件进行查找
    let sql = 'SELECT id,username,avatar,article_number,nickname FROM xzqa_author WHERE username=? AND password=MD5(?)';
    pool.query(sql,[username,password],(error,results)=>{
        if(error) throw error;
        if(results.length == 0){
            res.send({message:'登录失败',code:0});
        }else{
            res.send({message:'登录成功',code:1,userInfo:results[0]});
        }
    });
});

server.post('/clogin',(req,res)=>{
    let username = req.body.username;
    let password = req.body.password;
    //以用户名和密码为条件进行查找
    let sql = 'SELECT id,username,avatar,article_number,nickname FROM xzqa_author WHERE username=? AND password=MD5(?)';
    pool.query(sql,[username,password],(error,results)=>{
        if(error) throw error;
        if(results.length == 0){
            res.send({message:'登录失败',code:0});
        }else{
            res.send({message:'登录成功',code:1,userInfo:results[0]});
        }
    });
});

server.get('/data',(req,res)=>{
    let object = {
        productName:'厕所大电视',
        salePrice:900000
    };
    res.send({message:'查询成功',code:1,results:object});
});

//指定WEB服务器监听的端口
server.listen(3000);

