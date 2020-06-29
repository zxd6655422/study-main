<title>列表展示</title>
<head>
    <script src="/webjars/jquery/3.4.0/jquery.min.js"></script>
    <script src="/webjars/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/webjars/bootstrap/3.4.0/css/bootstrap.min.css"/>
</head>
<body>
    <h1>姓名：${name}</h1>
    <h1>测试列表1</h1>
    <input type="button" onclick="toPage()" value="刷新"/>
    <div class="container-fluid">
        <p>这是内容刷新区域</p>
    </div>
    <br>
    <h1>测试列表2</h1>

    <script type="text/javascript">
        //跳转第几页
        function toPage() {
            $.ajax({
                url: '/queryTable1',
                type: 'GET',
                data: {},
                success: function (data) {
                    $(".container-fluid").empty();
                    $(".container-fluid").append(data);
                }
            });
        }
    </script>
</body>