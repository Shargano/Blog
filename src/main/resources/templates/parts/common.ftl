<#include "security.ftl">

<#macro page>
<!DOCTYPE html>
<html>
<head>
    <link rel="apple-touch-icon" sizes="57x57" href="images/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="images/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="images/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="images/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="images/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="images/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="images/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="images/favicon/ms-icon-144x144.png">
    <!-- Template Basic Images End -->

    <!-- Custom Browsers Color Start -->
    <meta name="theme-color" content="#000">
    <!-- Custom Browsers Color End -->

    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <title>Panda Blog</title>
</head>
<body>
<div id="page-wrape">
    <header>
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" class="logotip" x="0px" y="0px" width="40px" height="40px" viewBox="0 0 887.417 887.417" style="enable-background:new 0 0 887.417 887.417;" xml:space="preserve" class=""><g><g>
                    <g>
                        <path d="M457.923,718.04v62.395c0,0,56.916,14.236,99.624-14.235c0,0-28.474,48.381-113.861,48.381    c-85.417,0-113.889-48.381-113.889-48.381c42.708,28.473,99.652,14.235,99.652,14.235V718.82    c-15.015-8.342-28.472-24.691-28.472-24.691c-29.362-2.669-59.614-25.803-71.181-42.708    c-11.567-16.906,9.564-35.702,29.361-41.818c43.599-13.401,125.431-14.236,169.026-0.891c19.909,6.117,40.93,25.803,29.362,42.709    c-11.566,16.905-41.818,40.039-71.179,42.708C486.368,694.128,473.021,710.032,457.923,718.04 M372.505,544.981    c0,0,71.181-28.473,142.333,0c0,0-14.233-28.473-71.153-28.473C386.741,516.51,372.505,544.981,372.505,544.981 M833.149,283.642    c18.796,41.596,61.505,204.396,18.24,319.397C803.009,728.94,696.571,735.168,696.571,735.168    C598.587,873.526,516.617,877.53,443.686,877.53c-72.293,0-154.93-4.004-252.803-142.362c0,0-106.438-6.228-154.93-132.129    c-43.265-115.002-0.556-277.801,18.24-319.397c-24.469-19.908-112.11-105.325,6.339-223.217    C165.302-44.9,231.811,41.629,252.387,76.33c86.528-30.141,142.917-30.697,191.298-30.697c48.465,0,104.741,0.556,191.38,30.697    C655.53,41.629,722.15-44.9,826.92,60.425C945.37,178.316,857.618,263.733,833.149,283.642 M850.277,452.752    c-2.892,0.611-6.896,0.611-12.012,0.611c-20.465,0-60.837-4.004-137.245-19.408c21.688,52.358-3.894,88.226-3.894,88.226    s28.473,71.182,0,99.653c-9.677,9.676-23.912,12.568-39.929,9.12c23.356,34.2,20.576,62.061,20.576,62.061    c-10.899-39.871-34.812-63.173-49.049-74.017c-4.004-2.836-6.784-4.561-9.12-5.673c-0.556-0.557-0.556-1.167-1.111-1.725    c-19.353-15.402-38.148-40.429-49.492-75.185c-19.354-58.613-39.372-110.971-26.248-142.335    c-167.469-60.948-277.243-193.634-285.25-300.07c-26.138,7.953-42.708,15.349-46.156,17.684    c-51.829,27.859-92.757,75.128-115.001,114.444c-2.225,3.948-191.299,417.938,106.994,495.958c0,0,67.844,141.194,240.347,141.194    c172.584,0,240.318-141.194,240.318-141.194C830.369,683.951,859.286,564.334,850.277,452.752 M790.997,226.141    c-22.133-39.316-63.173-86.584-115.002-114.444c-9.118-5.171-104.213-47.268-232.309-47.268    c-55.721,0-105.325,7.896-144.586,17.628c0.556,99.652,116.114,232.282,290.922,282.998c19.353-2.836,46.156,0.557,69.513,16.517    c143.475,31.309,180.511,29.64,186.184,28.473C830.369,311.558,792.221,227.809,790.997,226.141 M302.548,365.611    c-31.364-6.229-85.417,2.335-113.89,59.279c-28.472,56.862,0,97.291,0,97.291s-28.472,71.182,0,99.653    c9.009,9.12,23.245,12.568,38.705,9.676c-23.356,33.646-21.132,61.506-21.132,61.506c10.232-38.148,33.033-60.894,47.27-71.736    c5.115-4.004,9.119-6.841,11.456-7.953c1.111-0.556,1.668-1.167,1.668-1.167c19.908-15.349,38.704-40.985,50.16-75.741    C345.256,451.028,373.728,379.847,302.548,365.611 M618.495,611.603l-0.557,0.557c0,0,0.557,0.611,1.668,1.167    C619.052,612.771,619.052,612.159,618.495,611.603" data-original="#000000" class="active-path" data-old_color="#fafafa" fill="#fafafa"/>
                    </g>
                </g></g> </svg>
        <div class="container-fluid">
            <div class="row">
                <div class="topline">
                    <div class="col-md-4 text-left">
                        <ul>
                            <li><a href="/blog">Статьи</a></li>
                            <#if isAdmin>
                                <li><a href="/addArticle"><span class="glyphicon glyphicon-plus"></span> Добавить статью</a></li>
                                <li><a href="/user">Список пользователей</a></li>
                            <#elseif isModer>
                                <li><a href="/addArticle"><span class="glyphicon glyphicon-plus"></span> Добавить статью</a></li>
                            </#if>
                        </ul>
                    </div>
                    <div class="col-md-4 text-center">
                        <#if isActive>
                            <h3 class="welcome">Добро пожаловать, ${name}</h3>
                        </#if>
                    </div>
                    <div class="col-md-4 text-right">
                        <#if isActive>
                            <form action="/logout" method="post" id="logout">
                                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                                <span class="glyphicon glyphicon-log-out"></span>
                                <input type="submit" value="Выйти"/>
                            </form>
                        <#else>
                            <a href="/login"><span class="glyphicon glyphicon-log-in"></span> Войти</a>
                        </#if>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <#nested>
</div>
<footer class="text-center">
    <h4>All right reserved!</h4>
</footer>
</body>
</html>
</#macro>