$(document).ready(function() 
    {
	for (var i = 1; i <=5; i++)
    {
       $("#tablevalue tbody").append("<tr id='tr" + i + "'><td id='position" + i + "'><input class='check' id='chk" + i + "' type='checkbox'/></td><td id='location" + i + "'></td><td id='date" + i + "'></td><td id='status" + i + "'></td></tr>");
    }
	 $("#nocourse").text("5");
	
   /* var tlength = '';
    var data;
    var a = $.ajax({
        url: "table",
        type: "POST",
        data: {id: "tech"},
        dataType: "text"
    });
    var aa = $.get("table", function(result) {
        tlength = result.length;
//                    alert(size);
        var count = 0;
        $("#nocourse").text(tlength);
        $.each(result, function(key, value) {
            $("#tablevalue tbody").append("<tr id=\"courseTr" + count + "\"><td><input class='check' id='chk" + count + "' type='checkbox'/></td><td id='roleid" + count + "'></td><td id=\"coursecode" + count + "\"></td><td id=\"coursename" + count + "\"></td><td  id=\"coursesyllabus" + count + "\"><a style='cursor:pointer;'>View</a></td><td   id=\"coursereappear" + count + "\"><a  class='sch' style='cursor:pointer;'>Schedule</a></td></tr>");
            $.each(value, function(key, value) {
                if (key === "coursename")
                {
                    $("#coursename" + count).append(value);
                }
                if (key === "time")
                {
                    $("#coursedate" + count).append(value);
                }
                if (key === "code")
                {
                    $("#coursecode" + count).append(value);
                }
                if (key === 'id')
                {
                    $("#roleid" + count).append(count + 1);
                }
            });
            count++;
        });
   */     $('#tablevalue').bootstrapTable({
            //                    url:data,
            //                    height: auto,
            clickToSelect: true,
            pagination: true,
            pageList: [5, 10, 15],
            //mergeCells:five
        });
    /*});*/

/*    aa.done(function()
    {
        //    alert("get also done"); 
    });
    aa.error(function() {
        alert("error");
    });*/





    var ar = [];
    $(document).on('click', '#maincheck', function()
    {
        if ($(this).prop("checked") === true)
        {
            $(".check").prop("checked", true);
            var size = $(".check").prop("checked", true).length;
            for (var i = 1; i <= size; i++)
            {
                var a = "#chk" + (i - 1);
                var set = $(a).closest('tr').find('td:eq(2)').text();
                ar.push(set);
            }
//                        alert(ar);
//                        var don = $.ajax({
//                            url: "mycourse",
//                            type: "post",
//                            data: {"mapList[]": ar}
//                        });
            don.done(function() {
                $.get("mycourse", function() {
                });
            });
        }


        else if ($(this).prop("checked") === false)
        {
            arr.length = 0;
            ar.length = 0;
            $(".check").prop("checked", false);
//                        var don = $.ajax({
//                            url: "mycourse",
//                            type: "post",
//                            data: {"mapList[]": 0}
//                        });
            don.done(function() {
                $.get("mycourse", function() {

                });
            });
        }

    });









    var arr = [];
    $(document).on('click', '.check', function() {
        ar.length = 0;
        if ($(this).prop("checked") === true)
        {
//                        var a = $(this).closest("tr").find("td:eq(2)").text();
//                        arr.push(a);
//                        alert(tlength+"  "+arr.length);


            $(".check").each(function()
            {

                var id = '#' + $(this).attr("id");
                if ($(id).prop("checked") === true)
                {
                    data = $(this).closest("tr").find("td:eq(2)").text();
//                                arr.push(data);

                    ar.push(data);
                    if (5 === ar.length)
                    {
                        $("#maincheck").prop("checked", true);
                    }
                }
            });
//              alert("The checked data is-->" + ar);              
        }



        else if ($(this).prop("checked") === false)
        {
            ar.length = 0;
            $("#maincheck").prop("checked", false);

            $(".check").each(function()
            {
                var id = '#' + $(this).attr("id");
                if ($(id).prop("checked") === true)
                {
                    data = $(this).closest("tr").find("td:eq(2)").text();
                    ar.push(data);

                }
            });
//            alert("The checked data is-->" + data);
//                            alert(arr);
//                                 var don = $.ajax({
//                            url: "mycourse",
//                            type: "post",
//                            data: {"mapList[]":arr}
//                        });
            don.done(function() {
                $.get("mycourse", function() {

                });
            });




//                        var a = $(this).closest("tr").find("td:eq(1)").text();
//                        var pos = arr.indexOf(data);
//                        arr.splice(pos, 1);
//                        alert("arr array is-->"+arr);
//                         alert(tlength+" "+arr.length);

        }
    });

    $(document).on('click', '.sch', function() {
        var a = $(this).closest('tr').find('td:eq(2)').text();
//                   alert(a);
        var don = $.ajax
                ({
                    url: "sch",
                    type: "post",
                    data:
                            {
                                code: a
                            }

                });
        don.done
                (
                        function()
                        {
                            window.location = "schedulex.html";
                        });
    });
    $(document).on('click', '#add', function()
    {


        var don = $.ajax({
            url: "mycourse",
            type: "post",
            data: {"mapList[]": ar}
        });
        don.done(function() {
            $.get("mycourse", function() {

            });
            window.location.href = "mycourse";
        });
    });

});
