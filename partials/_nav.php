
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #2C3E50;">

    <div class="text-center image-size-big position-relative mx-2">
        <a href="index.php"><img src="assetsForSideBar/img/perfil.jpg" style="width:50px; height:50px"></a>
    </div>

    <a class="navbar-brand" href="index.php">
        <i class='bx bx-layer nav__logo-icon'></i>
        <span class="nav__logo-name">后台管理</span>
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Home <span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=orderManage">订单</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=categoryManage">菜品分类</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=menuManage">菜单</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=contactManage">消息</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=userManage">客人</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.php?page=siteManage">网站设置</a>
            </li>
        </ul>
        <a href="partials/_logout.php" class="nav-link">
            <i class='bx bx-log-out nav__icon'></i>
            <span class="nav__name">登出</span>
        </a>
    </div>
</nav>



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
    <?php $page = isset($_GET['page']) ? $_GET['page'] :'home'; ?>
	  $('.nav-<?php echo $page; ?>').addClass('active')
</script>