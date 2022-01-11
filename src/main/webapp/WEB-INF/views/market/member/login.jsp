<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../inc/header.jsp" %>

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>로그인</h2>
                        <form id="form1">
                            <div class="group-input">
                                <input type="text" id="user_id" name="user_id" placeholder="아이디를 입력해주세요">
                            </div>
                            
                            <div class="group-input">
                                <input type="password" id="member_pass" name="member_pass" placeholder="비밀번호를 입력해주세요">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        Save Password
                                        <input type="checkbox" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="#" class="forget-pass">Forget your Password</a>
                                </div>
                            </div>
                            <button type="button" class="site-btn login-btn" onClick="loginCheck()" style=" border: 1px solid #5f0081; 
                            																													 background-color: #5f0080;
                         																														   border-radius: 3px;">로그인</button>
                            <button type="button" class="site-btn login-btn" onClick="location.href='/registform'" style="border: 1px solid #5f0080; 
                            																															 background-color: #fff; 
                            																															 color:#5f0080;
                            																															 border-radius: 3px;">회원가입</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->

   <%@ include file="../inc/footer.jsp" %>
<script type="text/javascript">

function loginCheck(){
	$.ajax({
		url:"/login",
		type:"POST",
		data:{
			user_id:$("input[name='user_id']").val(),
			member_pass:$("input[name='member_pass']").val()
		
		},
		success:function(result, status, xhr){ //200요청에 애한 처리 메서드
			alert(result.msg);
			if(result.code==1){
				location.href="/";
			}
			
		}
		
	});
	
}
</script>
</body>
</html>