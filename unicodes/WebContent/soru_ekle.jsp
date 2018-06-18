<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
	<title>Soru Ekleme</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
      <link rel="stylesheet" href="css/tarih_style.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/core.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/skins/blue.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/custom.css" rel="stylesheet"/>
</head>
<body>


<div id="masthead">
        <div id="site-header" role="banner">
            <div class="container">
                <div class="row">
                    <div id="branding">
                        <a class="logo" href="Anasayfa.html">unicoders</a>
                    </div>
                    <nav id="main-menu" role="navigation">
                        <ul class="horizontal-navigation">
                            <li class="menu-home active" itemprop="url"><a href="anasayfa.jsp" title="Anasayfa" itemprop="name">Profil</a></li>
                            <li class="menu-about" itemprop="url"><a href="antreman_listesi.jsp" title="Antreman" itemprop="name">Antreman soruları</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar.jsp" title="Yarismalar" itemprop="name">Yarışmalar Soruları</a></li>
                            <li class="menu-blog" itemprop="url"><a href="onerilen_soru_listesi.jsp" title="Top 100" itemprop="name">Önerilen Sorular</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">Çıkış Yap</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </div>
    
    
    
	<div class="container-contact100" style="">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" METHOD=POST ACTION="soru_ekles.jsp">
	
				<div class="wrap-input100">
					<span class="label-input100">Soru Basligi</span>
					<input class="input100" type="text" name="soru_adi" placeholder="kisa, basit, anlasilir...">
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100">Soru Icerigi</span>
					<textarea class="input100" name="icerik" placeholder="uzun, basit, anlasilir..."></textarea>
				</div>
				
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Giris</span>
					<input class="input100" type="text" name="giris" placeholder="Girisler">
				</div>

				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Cikis</span>
					<input class="input100" type="text" name="cikis" placeholder="cikislar">
				</div>	
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Puan</span>
					<input class="input100" type="text" name="puan" placeholder="cikislar">
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Ekle
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
    
	  
	  
    <footer id="footer" role="contentinfo">
        <div class="container">
            <div class="row">

                <div class="social-icons">
                    <ul class="horizontal-navigation">
                        <li class="facebook"><a href="#" title="Facebook" target="_blank"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
                        <li class="twitter"><a href="#" title="Twitter" target="_blank"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
                        <li class="google-plus"><a href="#" title="Google+" target="_blank"><i class="fa fa-google-plus fa-2x fa-fw"></i></a></li>
                        <li class="pinterest"><a href="#" title="Pinterest" target="_blank"><i class="fa fa-pinterest fa-2x fa-fw"></i></a></li>
                        <li class="instagram"><a href="#" title="Instagram" target="_blank"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
                        <li class="youtube"><a href="#" title="YouTube" target="_blank"><i class="fa fa-youtube fa-2x fa-fw"></i></a></li>
                    </ul>
                </div>
                <div class="copyright"> UniCoders 2018</div>
                <div class="attribution">Web Design by <a href="https://www.facebook.com/umedzhon.izbasarov" title="Web Design by Umedzhon Izbasarov" target="_blank">Umedzhon Izbasarov </a>&
                <a href="https://www.facebook.com/zubeyr.eser" title="Zubeyr ESER" target="_blank"> Zubeyr ESER</a>.
                </div>
            </div>
        </div>
    </footer>


    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
	  
	  

</body>
</html>