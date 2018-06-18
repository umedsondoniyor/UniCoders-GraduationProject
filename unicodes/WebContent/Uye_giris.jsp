<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Giriş Sayfası</title>

  <link href="https://fonts.googleapis.com/css?family=Montserrat:300, 400, 500" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/giris_style.css">
    <link href="css/eniyiler.css" rel="stylesheet" />
    <link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/core.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/skins/green.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/custom.css" rel="stylesheet"/>
</head>
<body>

<div id="masthead">
        <div id="site-header" role="banner">
            <div class="container">
                <div class="row">
                    <div id="branding">
                        <a class="logo" href="Anasayfa.jsp">unicoders</a>
                    </div>
                    <nav id="main-menu" role="navigation">
                        <ul class="horizontal-navigation">
                            <li class="menu-home " itemprop="url"><a href="Anasayfa.jsp" title="Anasayfa" itemprop="name">Anasayfa</a></li>
                            <li class="menu-about" itemprop="url"><a href="Antreman.jsp" title="Antreman" itemprop="name">Antreman</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar.jsp" title="Yarismalar" itemprop="name">Yarışmalar</a></li>
                            <li class="menu-blog" itemprop="url"><a href="Topliste.jsp" title="Top 100" itemprop="name">Top 100</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Hakkimizda_.jsp" title="Hakkimizda" itemprop="name">Hakkımızda</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Profil.jsp" title="Hakkimizda" itemprop="name">Profil</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">Giriş</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </div>
      



<section class="user">
  <div class="user_options-container">
    <div class="user_options-text">
      <div class="user_options-unregistered">
        <h2 class="user_unregistered-title">Editör müsünüz?</h2>
        <button class="user_unregistered-signup" id="signup-button">Editör Girişi</button>
      </div>

      <div class="user_options-registered">
        <h2 class="user_registered-title">Kullanıcı mısınız?</h2>
        <button class="user_registered-login" id="login-button">Kullanıcı Girişi</button>
      </div>
    </div>
    
    <div class="user_options-forms" id="user_options-forms">
      <div class="user_forms-login">
        <h2 class="forms_title">Kullanıcı Bilgileri</h2>
        <form class="forms_form" METHOD=POST ACTION="Anasayfa.jsp">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="Kullanıcı Adı" NAME=kullanici  class="forms_field-input" required>
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Şifre" NAME=sifre class="forms_field-input" required>
            </div>
          </fieldset>
          
          
          <div class="forms_buttons">
            <input type="submit" value="Giriş Yap" class="forms_buttons-action">
          </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">Editör Bilgileri</h2>
        
        <form class="forms_form"  METHOD=POST ACTION="Anasayfa_editor.jsp">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="Kullanıcı Adı" NAME=kullanicie  class="forms_field-input" required >
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Şifre" NAME=sifree class="forms_field-input" required >
            </div>
          </fieldset>
          
        <div class="forms_buttons">
            <input type="submit" value="Giriş Yap" class="forms_buttons-action">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>

    <script  src="js/giris_index.js"></script>


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