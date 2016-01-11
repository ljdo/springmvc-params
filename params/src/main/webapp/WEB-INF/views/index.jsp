<%--
  Created by IntelliJ IDEA.
  User: fly
  Date: 2016/1/3
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <title>springmvc 接受参数方式--只列常用的</title>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <style rel="stylesheet">
        *{
            padding:0;
            margin:0;
            box-sizing: border-box;
        }
        body,
        html{
            height: 100%;
            width: 100%;
        }
        .box{
            width: 1200px;
            margin: 100px auto;
            border: 2px solid #e5e5e5;
            border-radius: 3px;
        }
        .box button{
            margin: 0 5px;
        }
    </style>
</head>
<body>

    <h2>${index},<span style="color:red;font-weight: 600;">注意：以下基于json方式传递参数的必须在配置MappingJackson2HttpMessageConverter下才生效，不然报错。下面有一点要注意的，当dataType指定为json的时候，后台返回一定是json对象，这一点可能容易忽略，否则无法得到返回值</span></h2>
    <hr>
    <div class="box">
        <button onclick="test01()">简单的参数传递01</button>
        <button onclick="test02()">简单的参数传递02-@PathVariable</button>
        <button onclick="test03()">简单的对象传递01</button>
        <button onclick="test04()">简单的对象传递02-@requestBody</button>
        <button onclick="test05()">简单的List&lt;String&gt;集合传递-@RequestParam("list[]") 注意[]</button>
        <button onclick="test06()">List&lt;User&gt;集合传递-@RequestBody</button>
        <button onclick="test07()">User[]数组传递-@RequestBody</button>
        <button onclick="test08()">List&lt;Map&lt;String,Object&gt;&gt;传递-@RequestBody</button>
        <button onclick="test09()">对象（有对象集合）传递-@RequestBody</button>
        <button onclick="test10()">String数组传递-@requestBody</button>
        <button onclick="test11()">PathVariable 奇葩的Integer数组传递方式（慎用）</button>
    </div>

    <script>
        function test01(){
            $.ajax({
                type:"post",
                url:"/test01",
                data:{name:"小花",age:18},
                success:function(data){
                    alert(data);
                }
            });
        }

        function test02(){
            $.ajax({
                type:"post",
                url:"/test02/小花/18",
                success:function(data){
                    alert(data);
                }
            });
        }


        function test03(){
            var params = {name:"小花", age:18, height:19.87, hasGirl:true, likes:"MOVIE"};
            $.ajax({
                type:"post",
                url:"/test03",
                data:params,
                success:function(data){
                    alert(data);
                }
            });
        }

        function test04(){
            var params = {name:"小花", age:18, height:19.87, hasGirl:true, likes:"MOVIE"};
            $.ajax({
                type:"post",
                url:"/test04",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(params),
                success:function(data){
                    alert(data);
                }
            });
        }

        function test05(){
            var params = ["1","2","3","4"];
            $.ajax({
                type:"post",
                url:"/test05",
                data:{"list":params},
                success:function(data){
                    alert(data);
                }
            });
        }

        function test06(){

            var users = [];
            var user = {name:"小花", age:18, height:19.87, hasGirl:true, likes:"MOVIE"};
            users.push(user);
            users.push(user);
            users.push(user);

            $.ajax({
                type:"post",
                url:"/test06",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(users),//将对象序列化成JSON字符串
                success:function(data){
                    alert(data);
                }
            });
        }

        function test07(){

            var users = [];
            var user = {name:"小花", age:18, height:19.87, hasGirl:true, likes:"MOVIE"};
            users.push(user);
            users.push(user);
            users.push(user);

            $.ajax({
                type:"post",
                url:"/test07",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(users),//将对象序列化成JSON字符串
                success:function(data){
                    alert(data);
                }
            });
        }


        function test08(){
            var list = [];
            list.push({name: "小花",age: 18});
            list.push({name: "小花",age: 18});

            $.ajax({
                type:"post",
                url:"/test08",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(list),//将对象序列化成JSON字符串
                success:function(data){
                    alert(data);
                }
            });
        }


        function test09(){
            var list = {};
            list.id = "110";
            var users = [];
            var user = {name:"小花", age:18, height:19.87, hasGirl:true, likes:"MOVIE"};
            users.push(user);
            users.push(user);
            list.users = users;

            $.ajax({
                type:"post",
                url:"/test09",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(list),//将对象序列化成JSON字符串
                success:function(data){
                    alert(data);
                }
            });
        }

        function test10(){

            var str = ["d","a","c","e"];

            $.ajax({
                type:"post",
                url:"/test10",
                dataType:"json",
                contentType : 'application/json;charset=utf-8', //设置请求头信息
                data:JSON.stringify(str),//将对象序列化成JSON字符串
                success:function(data){
                    alert(data);
                }
            });
        }

        function test11(){

            var str = [1,2,3,4,5];

            $.ajax({
                type:"post",
               // url:"/test11/1,2,3,4,5",
                url:"/test11/"+str,
                success:function(data){
                    alert(data);
                }
            });
        }
    </script>
</body>
</html>
