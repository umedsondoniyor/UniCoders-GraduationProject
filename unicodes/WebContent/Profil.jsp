<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Profil</title>

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
                        <a class="logo" href="Anasayfa.jsp">unicoders</a>
                    </div>
                    <nav id="main-menu" role="navigation">
                        <ul class="horizontal-navigation">
                            <li class="menu-home " itemprop="url"><a href="Anasayfa.jsp" title="Anasayfa" itemprop="name">Anasayfa</a></li>
                            <li class="menu-about" itemprop="url"><a href="Antreman.jsp" title="Antreman" itemprop="name">Antreman</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar.jsp" title="Yarismalar" itemprop="name">Yarışmalar</a></li>
                            <li class="menu-blog" itemprop="url"><a href="Topliste.jsp" title="Top 100" itemprop="name">Top 100</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Hakkimizda_.jsp" title="Hakkimizda" itemprop="name">Hakkımızda</a></li>
                            <li class="menu-contact active" itemprop="url"><a href="Profil.jsp" title="Hakkimizda" itemprop="name">Profil</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">Çıkış Yap</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </div>
      

  <%

  if(session.getAttribute( "Kullanici" )!=null){
	  String id= session.getAttribute( "Kullanici").toString();
  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
  Statement st= conn.createStatement();  
  ResultSet rs=st.executeQuery("select * from kullanicilar where id_k='"+id+"'");
  while(rs.next()) {

	  %>
	  
	  
<div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><%=rs.getString("isim") %> <%=rs.getString("soyisim") %></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6 col-lg-6 " align="center"> <img alt="Kullanici Img" src="image/user1.png" class="img-circle img-responsive"> </div>
                <div class=" col-md-12 col-lg-12 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Kullanici Adi:</td>
                        <td><%=rs.getString("kullanici_adi") %></td>
                      </tr>
                      <tr>
                        <td>Okul Adi</td>
                        <td><%=rs.getString("okul_adi") %></td>
                      </tr>
                      <tr>
                        <td>Dogum Tarihi</td>
                        <td><input type="date" name="dateofbirth" id="dateofbirth" value="<%=rs.getString("dogum_tarihi") %>"style="background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;   border: 1px solid #c4c4c4;border-radius: 5px;background-color: #fff;padding: 3px 5px;box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);width: 190px;"></td>
                      </tr>
                         <tr>
                             <tr>
                        <td>Cinsiyet</td>
                        <td><%=rs.getString("cinsiyet") %></td>
                      </tr>
                        <tr>
                        <td>Puan</td>
                        <td><%=rs.getString("puan") %></td>
                      </tr>
                      <tr>
                        <td>Mail</td>
                        <td><%=rs.getString("kullanici_adi") %></td>
                      </tr>                 
                     
                    </tbody>
                  </table>
                  
                  <a href="Soru_oner.jsp" class="btn btn-primary">Bize Soru Oner</a>
                  <a href="Profil_guncelle.jsp" class="btn btn-primary">Hesabini Guncelle</a>
                  <a href="onerilen_soru_listesi_k.jsp" class="btn btn-primary">Önerilen Soru Listesi</a>
                  <a href="cozulen_sorular.jsp" class="btn btn-primary">Çözülen Soru Listesi</a>
                </div>
              </div>
            </div>
            <div class="panel-footer">
             </div>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript" src="js/Profile.js"></script>
	  
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
<%   
}
rs.close();                  
}
else
{	  
	response.sendRedirect("Anasayfa.jsp");
}
%>
</body>
</html>