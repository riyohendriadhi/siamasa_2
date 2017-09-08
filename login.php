<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<!-- Custom Theme files -->
<link href="css/login_style.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$('#horizontalTab').easyResponsiveTabs({
			type: 'default', //Types: default, vertical, accordion           
			width: 'auto', //auto or any width like 600px
			fit: true   // 100% fit in a container
		});

		$('#login_password').keypress(function(e){
			if(e.which==13){
				doLogin();
			}
		})
		function doLogin(){
			$.ajax({
				url : 'ceklog.php',
				method : 'post',
				data : {
					username :$('#login_namauser').val(),
					password :$('#login_password').val()
				},
				success : function(res){
					console.log(res);
					var respon = JSON.parse(res);
					if(respon.success == true){
						window.location=respon.location;						
					}else{
						alert('Username dan Password salah');
						// window.location='login.php';						
					}
				}
			})
		}

		$('#btn_login').on('click',	function(){
			doLogin();
		});

		$('#btn_signup').on('click',	function(){
			$.ajax({
				url : 'sign_up.php',
				method : 'post',
				data : {
					username : $('#su_username').val(),
					email : $('#su_email').val(),
					passw : $('#su_passw').val(),
				},
				success : function(res){
					var respon = JSON.parse(res);
					if(respon.success == true){
						window.location=respon.location;						
					}else{
						alert('Username dan Password salah');
						window.location='login.php';						
					}
				}
			})
		})

	});
				
</script>	
<!--script-->

</head>
<body>
	<div class="head">
		<div class="logo">
			<img src="logo/logo.png"></br>
			<!-- <div class="logo-top">

			</div>
			<div class="logo-bottom">

			</div> -->
			<span>SIMASA</span></br>
			<span>Sistem Informasi Absensi Siswa</span></br>
			<span>MTSS Al Wathoniyyah 17</span></br>
			<span>Pulo Gebang - Jakarta Timur</span></br>
		</div>		
		<div class="login">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span style="color:#00B050">Login</span></li>
						<!-- <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><label style="color:#888888">/</label><span style="color:#888888">Sign up</span></li> -->
						<!-- <div class="clearfix"></div> -->
					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="login-top">
								<form>
									<input class="name" id="login_namauser" type="text"  placeholder="Nama User" required=""/>
									<input class="password" id="login_password" type="password"  placeholder="Password" required=""/>		
								</form>
								<div class="login-bottom login-bottom1">
									<div class="submit">
										<input id="btn_login" type="submit" value="LOGIN"/>
									</div>
									<!-- <div class="clear"></div> -->
								</div>	
							</div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="login-top">
								<form>
									<input class="name" id="su_username" type="text" placeholder="Nama User" required=""/>
									<input class="email" id="su_email" type="text"  placeholder="E-mail" required=""/>
									<input class="password" id="su_passw" type="password"  placeholder="Password" required=""/>		
								</form>
								<div class="login-bottom">
									<div class="submit">
										<input id="btn_signup" type="submit" value="SIGN UP"/>
									</div>
									<!-- <div class="clear"></div> -->
								</div>	
							</div>
							
						</div>							
					</div>	
				</div>
			</div>	
		</div>	
		<!-- <div class="clear"></div> -->
	</div>	
	<div class="account">
			<!-- <ul>
				<li><p>Don't have an <a href="#">account?</a></p></li><span>/</span>
				<li><p>Forgot <a href="#">password?</a></p></li>
				<div class="clear"></div>
			</ul> -->
		</div>
	<div class="footer">

	</div>
</body>
</html>