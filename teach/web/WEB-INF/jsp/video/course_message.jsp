<%--
  Created by IntelliJ IDEA.
  User: G2W
  Date: 2018/2/7
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="/static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="/static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="/static/css/animate.min.css" rel="stylesheet">
    <link href="/static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="/static/css/course_message.css" rel="stylesheet">
</head>
<body>

<div id="main">

    <div class="course-infos">
        <div class="w pr div-content">
            <div class="path">
                <a href="/course/list">课程</a>
                <i class="path-split">\</i><a href="/course/list?c=be">后端开发</a>
                <i class="path-split">\</i><a href="/course/list?c=php">PHP</a>
                <i class="path-split">\</i><a href="/learn/938"><span>PhpStorm的基本应用</span></a>
            </div>
            <div class="hd clearfix">
                <h2 class="l">PhpStorm的基本应用</h2>
            </div>

            <div class="statics clearfix">

                <div class="static-item l">
                    <em></em>
                    <span class="meta">学习人数</span>
                    <span class="meta-value js-learn-num">666人</span>

                </div>
                <div class="static-item l">
                    <span class="meta">视频数量</span>
                    <span class="meta-value js-learn-num">66个</span>
                    <em></em>
                </div>
                <div class="static-item l">
                    <em></em>
                    <span class="meta">难度级别</span>

                    <span class="meta-value">初级</span>

                </div>
                <em></em>
                <div class="static-item l">
                    <span class="meta">课程时长</span>
                    <span class="meta-value"> 1小时 0分</span>
                    <em></em>
                </div>
                <em></em>
            </div>
        </div>



    </div>


    <div class="course-info-main clearfix w">
        <div class="content-wrap">
            <div class="content">
                <!-- 课程简介 -->
                <div class="course-brief">
                    <p class="auto-wrap">简介：PhpStorm是PHP集成开发工具，能提高我们的开发效率，提供智能代码补全，快速导航以及即时错误检查。</p>
                </div>

                <!-- 课程章节 -->
                <div class="mod-chapters">
                    <div class="chapter ">
                        <h3>
                            <strong>
                                第1章 课程介绍
                                <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                            </strong>
                        </h3>
                        <!-- 章节小节 -->
                    </div>
                    <div class="chapter ">
                        <!-- 章节标题 -->
                        <h3>
                            <strong>
                                第2章 PhpStorm的基本操作
                                <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                            </strong>
                        </h3>
                        <!-- 章节标题 end -->
                    </div>
                    <div class="chapter ">
                <!-- 章节标题 -->
                <h3>
                    <strong>
                        第3章 PhpStorm进阶
                        <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                    </strong>
                </h3>
            </div>
                    <div class="chapter ">
                        <h3>
                            <strong>
                                第4章 课程介绍
                                <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                            </strong>
                        </h3>
                        <!-- 章节小节 -->
                    </div>
                    <div class="chapter ">
                        <!-- 章节标题 -->
                        <h3>
                            <strong>
                                第5章 PhpStorm的基本操作
                                <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                            </strong>
                        </h3>
                        <!-- 章节标题 end -->
                    </div>
                    <div class="chapter ">
                        <!-- 章节标题 -->
                        <h3>
                            <strong>
                                第6章 PhpStorm进阶
                                <a href="/page/video/course_player" class=" learn-btn-r ">开始学习</a>
                            </strong>
                        </h3>
                    </div>
            </div>

                <!-- 课程章节 end -->
            </div><!--content end-->
            <div class="aside ">
                <div class="bd">

                    <div class="box mb40 js-usercard-box">
                        <h4>讲师提示</h4>
                        <div class="teacher-info">
                            <a href="/u/255838/courses?sort=publish" target="_blank">
                                <img data-userid="255838" class="js-usercard-dialog"
                                     src="//img3.mukewang.com/59e0d3be0001672a05120512-80-80.jpg" width="80"
                                     height="80">
                            </a>
                            <span class="tit">
                <a href="/u/255838/courses?sort=publish" target="_blank">hkx</a><i class="icon-imooc"></i>
            </span>
                            <span class="job">java工程师</span>
                        </div>
                        <div class="course-info-tip">
                            <dl class="first">
                                <dt>课程须知</dt>
                                <dd class="autowrap">1、课程难度属于初级
                                    2、了解PHP基本语法
                                </dd>
                            </dl>
                            <dl>
                                <dt>老师告诉你能学到什么？</dt>
                                <dd class="autowrap">1、phpstorm安装
                                    2、导入项目
                                    3、phpstorm工作区的认知
                                    4、 和其他编辑器的区别
                                    5、代码补全，快速定位类以及方法
                                    6、其他小技巧的使用
                                </dd>
                            </dl>
                        </div>
                    </div>

                    <div class="js-recom-box">
                    </div>

                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

</body>
<script src="/static/js/jquery.min.js?v=2.1.4"></script>
<script src="/static/js/bootstrap.min.js?v=3.3.6"></script>
<script src="/static/js/content.min.js?v=1.0.0"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</html>

