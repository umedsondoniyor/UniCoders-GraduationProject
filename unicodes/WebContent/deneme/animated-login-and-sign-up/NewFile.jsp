<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
  <title>Giriş Ekrana</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300, 400, 500" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/style.css">

</head>
<body>


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
        <form class="forms_form">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="Kullanıcı Adı" class="forms_field-input" required>
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Şifre" class="forms_field-input" required>
            </div>
          </fieldset>
          
          
          <div class="forms_buttons">
            <button type="button" class="forms_buttons-forgot">Şifremi unuttum?</button>
            <input type="submit" value="Giriş Yap" class="forms_buttons-action">
          </div>
        </form>
      </div>
      <div class="user_forms-signup">
        <h2 class="forms_title">Editör Bilgileri</h2>
        <form class="forms_form">
          <fieldset class="forms_fieldset">
            <div class="forms_field">
              <input type="text" placeholder="Kullanıcı Adı" class="forms_field-input" required />
            </div>
            <div class="forms_field">
              <input type="password" placeholder="Şifre" class="forms_field-input" required />
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
  
  

    <script  src="js/index.js"></script>


</body>
</html>



<FORM METHOD=POST ACTION="Anasayfa.jsp">

	<div id="margin">
		Kullanici Adi: <INPUT TYPE=TEXT NAME=kullanici SIZE=40 ><BR>
		Sifre: <INPUT TYPE=TEXT NAME=sifre SIZE=30 ><BR>
		</div>
		
<INPUT TYPE=SUBMIT value="Giriş Yap" id="button">


</FORM>