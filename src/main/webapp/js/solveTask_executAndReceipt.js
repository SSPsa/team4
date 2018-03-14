$(function() {
    //通过jquery的class选择器（数组）
    //对每个class为viewUser的元素进行动作绑定（click）
    /**
     * bind、live、delegate
     * on
     */
    $(".viewFlawMission").on("click", function () {
        //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
        var obj = $(this);
        window.location.href = "/flawMission/flawMissionExecView?fwId=" + obj.attr("fwId");
    });
    $(".entryFlawMission").on("click", function () {
        //将被绑定的元素（a）转换成jquery对象，可以使用jquery方法
        var obj = $(this);
        window.location.href = "/flawMission/flawMissionExecEntry?fwId=" + obj.attr("fwId");
    });

    $(".modifyFlawMission").on("click", function () {
        var obj = $(this);
        window.location.href = "/flawMission/toFlawMissionExecModify?fwId=" + obj.attr("fwId");
    });
})