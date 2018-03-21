var initPullListTree = function (startlevel, count) {
//        var message;
//        var levels = level;
//        var counts = count;
    console.info("wozhiixngle");
    $.get("/office/getAllArea", {}, function (msg) {
//            message = msg;

        for (var i = startlevel; (count + startlevel) > i; i++) {
            switch (i) {
                case (1):
                    $("#pullListTree").append($("<span>").html("区域："));
                    $("#pullListTree").append($("<select>").data("type", 1).addClass("form-control").attr("name", "areaId").css("display","inline").css("width","23%").append($("<option>").css("value", "")));
                    break;
                case (2):
                    $("#pullListTree").append($("<span>").html("学校："));
                    $("#pullListTree").append($("<select>").data("type", 2).addClass("form-control").attr("name", "areaId").css("display","inline").css("width","30%").append($("<option>").css("value", "")));
                    break;
                case (3):
                    $("#pullListTree").append($("<span>").html("班级："));
                    $("#pullListTree").append($("<select>").data("type", 3).addClass("form-control").attr("name", "areaId").css("display","inline").css("width","23%").append($("<option>").css("value", "")));
                    break;
                case (4):
                    $("#pullListTree").append($("<span>").html("组："));
                    $("#pullListTree").append($("<select>").data("type", 4).addClass("form-control").attr("name", "areaId").css("display","inline").css("width","23%").append($("<option>").css("value", "")));
                    break;
            }
        }
        $.each(msg.allArea, function (i, e) {
            switch (e.officeType) {
                case startlevel:
                    $("#pullListTree").find("select").eq(0).append($("<option>").attr("value", e.id).html(e.name));
                    break;
            }
        });
        for (var ss = 0; count - 1 > ss; ss++) {
            //为每个有子级的区域设置change事件
            $("#pullListTree").find("select").eq(ss).change(function () {
                var parentid = $(this).val();
                var son = $(this).data("type");
//                    console.info(son);
//                    console.info(parentid);
                for(var em=son;em<(count+startlevel-1);em++) {
                    $("#pullListTree").find("select").eq(em).empty();
                }
                $.each(msg.allArea, function (i, e) {
                    console.info(parentid === e.parentId);
                    if (parentid === e.parentId) {
                        $("#pullListTree").find("select").eq(son).append($("<option>").attr("value", e.id).html(e.name));
                    }
                });

            });
        }
        $("#pullListTree").find("select").eq(count-1).change(function () {
            $("#pullListTree").data("selectAreaId",$(this).val());
        });
    }, "json");

}