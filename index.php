<!DOCTYPE html>
<html lang="en">
<head>
	<title>Tugas pkk e fian</title>
	<link rel="shortcut icon" href="system/assets/images/logo/ipin.png">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="system/assets/css/bootstrap.min.css">
	<!-- <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700|Nunito+Sans:400,600,700&display=swap" rel="stylesheet"> -->
</head>
<style type="text/css">
	body, html {
		padding: 0;
		margin: 0;
		height: 100%;
		width: 100%
	}

	.nunitor {font-family: 'Nunito Sans', sans-serif; font-weight: 400}
	.nunitos {font-family: 'Nunito Sans', sans-serif; font-weight: 600}
	.nunitob {font-family: 'Nunito Sans', sans-serif; font-weight: 700}

	.bg-login {
		background: url('system/assets/images/bg.jpg');
		background-attachment: fixed;
		background-size: cover;
		background-repeat: no-repeat;
		height: 100%;
		padding: 25px 60px; 
		overflow: hidden;
		overflow-y: scroll;
		opacity: 80%;
	}

	.panel-login {
		border-radius: 16px;
		background: #f0f0a0;
		padding: 35px;
	}
	.bg-primary { background: #330033;}
	
	.buttonn {
	text-align: center;
	border-radius: 8px;
	padding: 14px;
	border: none;
	color: white;
    }

	a:hover{text-decoration: none; color: #000000;}
	.txt-center {text-align: center;}
	.m-t-15 {margin-top: 15px;}
	.form-control {padding: 1.375rem .75rem !important;}
	.logogaris {width: 200px;}
	.w100 {width: 100%}
	.paddingbtn {padding: .775rem .75rem !important;}
	.clr-black {color: #000000}
	.clr-white {color: #ffffff}
	.fs-28 {font-size: 24px;}
	.btn-orange:hover {color: #fff}
	.btn-orange-outline:hover {color: #F2994A}
	
	.hr {
		border-bottom: 1px solid #dedede;
		margin-top: 40px;
	}

	.btn-orange {
		color: #fff;
		background-color: #F2994A;
		border-color: #F2994A;
		box-shadow: 0 25px 20px -22px rgba(254, 157, 42, 1);
	}
	.btn-orange-outline {
		color: #F2994A;
		background-color: #fff;
		border-color: #F2994A;
	}

	.noround {
		width: 60px;
		height: 60px;
		padding-top: 8px;
		border-radius: 100px;
		font-size: 26px;
		background: rgba(255, 255, 255, 0.5);
		text-align: center;
		align-content: center;
	}

</style>
<body>

	<div class="bg-login">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4" align="center">
				</div>
				<div class="col-md-4" align="center">
					<div class="panel-login">
						<img src="system/assets/images/logo/ipin.png" width="80%" class="logogaris">
						<form method="post" action="">
							<input type="text" name="username" id="username" value="" placeholder="Username" class="form-control txt-center m-t-15">
							<input type="password" name="password" id="password" value="" placeholder="Password" class="form-control txt-center m-t-15">
							<button type="button" id="btn-login" class="buttonn bg-primary m-t-15 w100 paddingbtn" onclick="do_login();">Masok...</button>
						</form>
						<div class="hr"></div><br>
						<a href="" class="nunitos clr-black">Oleh</a>
						<span>Fian</span>
						<!-- <div class="row m-t-15">
							<div class="col-md-6">
								<a href="register_user.html">
									<button class="btn btn-orange m-t-15 w100 paddingbtn">Daftar User</button>
								</a>
							</div>
							<div class="col-md-6">
								<a href="lupa_password.html">
									<button class="btn btn-orange-outline m-t-15 w100 paddingbtn">Lupa Password</button>
								</a>
							</div>
						</div> -->
					</div>
				</div>
				<div class="col-md-4" align="center">
				</div>
			</div>
		</div>
	</div>


	<script src="system/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="system/assets/js/sweetalert.min.js"></script>

	<script>
		var input = document.getElementById("username");
		var input = document.getElementById("password");
		input.addEventListener("keypress", function(event) {
    	if (event.key === "Enter") {
		event.preventDefault();
    	document.getElementById("btn-login").click();
   		}
   		});
		
		
		 function do_login()
		{
			var username=$("#username").val();
			var pass=$("#password").val();
			if(username!="" && pass!="")
			{
				$.ajax
				({
					type:'post',
					url:'server/svr_login.php',
					data:{
						act:"login",
						username:username,
						password:pass
					},
					success:function(response) {
						if(response=="success")
						{
							// swal("YEY");
							window.location.href="system/d_data_barang.php";
						}
						else
						{
							swal(response);
						}
					}
				});
			}

			else
			{
				swal("Silahkan isi username dan password !");
			}

			return false;
		}
		
	</script>
</body>
</html>
