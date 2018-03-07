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
        window.location.href = "/flawMission/flawMissionView?fwId=" + obj.attr("fwId");
    });

    $(".modifyFlawMission").on("click", function () {
        var obj = $(this);
        window.location.href = "/flawMission/toFlawMissionModify?fwId=" + obj.attr("fwId");
    });
    $("examinaFlawMission").on("click",function () {
        var obj=$(this);
        window.location.href="/flawMission/flawMissionExamina?fwId=" + obj.attr("fwId");
    })
})