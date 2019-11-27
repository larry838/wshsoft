layui.use(['jquery',"layer"],function() {
        $ = layui.jquery,
        layer = parent.layer === undefined ? layui.layer : top.layer;
    //锁屏
    function lockPage(){
        layer.open({
            title : false,
            type : 1,
            content : '<div class="admin-header-lock" id="lock-box">'+
                            '<div class="admin-header-lock-img"><img src="/img/profile.jpg" class="userAvatar"/></div>'+
                            '<div class="admin-header-lock-name" id="lockUserName">sdfsfs</div>'+
                            '<div class="input_btn">'+
                                '<input type="password" class="admin-header-lock-input layui-input" autocomplete="off" placeholder="请输入密码解锁..." name="lockPwd" id="lockPwd" />'+
                                '<button class="layui-btn" id="unlock">解锁</button>'+
                            '</div>'+
                        '</div>',
            closeBtn : 0,
            shade : 0.9,
            success : function(){

            }
        })
        $("#lockUserName").text($(".userName").text());
        $(".admin-header-lock-input").focus();
    }
    $(".lockcms").on("click",function(){
        window.sessionStorage.setItem("lockcms",true);
        lockPage();
    })
    // 判断是否显示锁屏
    if(window.sessionStorage.getItem("lockcms") == "true"){
        lockPage();
    }
    // 解锁
    $("body").on("click","#unlock",function(){
        if($(this).siblings(".admin-header-lock-input").val() == ''){
            layer.msg("请输入解锁密码！");
            $(this).siblings(".admin-header-lock-input").focus();
        }else{
            $.post("/system/user/unlock",{
                password : $(this).siblings(".admin-header-lock-input").val()
            },function(res){
                if(res.code==0){
                    window.sessionStorage.setItem("lockcms",false);
                    $(this).siblings(".admin-header-lock-input").val('');
                    layer.closeAll("page");
                }else{
                    layer.msg("密码错误，请重新输入！");
                    $(this).siblings(".admin-header-lock-input").val('').focus();
                }
            })
        }
    });
    $(document).on('keydown', function(event) {
        var event = event || window.event;
        if(event.keyCode == 13) {
            $("#unlock").click();
        }
    });
})