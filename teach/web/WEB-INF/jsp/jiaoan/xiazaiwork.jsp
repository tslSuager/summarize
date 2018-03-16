<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="common/head.jsp"/>
    <jsp:include page="common/foot.jsp"/>
</head>
<body>
<div class="ibox-content">
    <h3>
        下拉选择
    </h3>

    <div class="form-group">
        <label class="font-noraml"></label>
        <div class="input-group">
            <select data-placeholder="选择省份..." class="chosen-select" style="width:350px;" tabindex="2">
                <option value="">请选择班级</option>
                <option value="110000" hassubinfo="true">一班</option>
                <option value="120000" hassubinfo="true">二班</option>
                <option value="130000" hassubinfo="true">三班</option>
                <option value="140000" hassubinfo="true">四班</option>
                <option value="150000" hassubinfo="true">五班</option>
            </select>
        </div>
    </div>
</div>
<div class="col-sm-6">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>边框</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
                <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                    <i class="fa fa-wrench"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="table_basic.html#">选项1</a>
                    </li>
                    <li><a href="table_basic.html#">选项2</a>
                    </li>
                </ul>
                <a class="close-link">
                    <i class="fa fa-times"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">

            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>
                        <input type="checkbox" class="i-checks" name="input[]">
                    </td>
                    <th>#</th>
                    <th>题目</th>
                    <th>时间</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <input type="checkbox" class="i-checks" name="input[]">
                    </td>
                    <td>1</td>
                    <td>需求</td>
                    <td>2017.1.1</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" class="i-checks" name="input[]">
                    </td>
                    <td>2</td>
                    <td>设计</td>
                    <td>2017.2.14</td>
                </tr>
                <tr>
                    <td>
                        <input type="checkbox" class="i-checks" name="input[]">
                    </td>
                    <td>3</td>
                    <td>王麻子</td>
                    <td>2017.44</td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>
<button class="fa-angle-down">下载</button>
</body>
</html>
