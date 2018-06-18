<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
 <link rel="apple-touch-icon" href="apple-touch-icon.png"/>
    <!-- Place favicon.ico in the root directory -->
    <title>UniCoders</title>
    <link href="css/liste.css" rel="stylesheet" />
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
    <link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/core.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/skins/red.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/custom.css" rel="stylesheet"/>
</head>
<body>      
    <div id="masthead">
        <div id="site-header" role="banner">
            <div class="container">
                <div class="row">
                    <div id="branding">
                        <a class="logo" href="Anasayfa_of.jsp">unicoders</a>
                    </div>
                    <nav id="main-menu" role="navigation">
                        <ul class="horizontal-navigation">
                            <li class="menu-home " itemprop="url"><a href="Anasayfa_of.jsp" title="Anasayfa" itemprop="name">Anasayfa</a></li>
                            <li class="menu-about" itemprop="url"><a href="Antreman_of.jsp" title="Antreman" itemprop="name">Antreman</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar_of.jsp" title="Yarismalar" itemprop="name">Yarışmalar</a></li>
                            <li class="menu-blog active" itemprop="url"><a href="Topliste_of.jsp" title="Top 100" itemprop="name">Top 100</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Hakkimizda_.jsp" title="Hakkimizda" itemprop="name">Hakkımızda</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Kayit_ol.jsp" title="Hakkimizda" itemprop="name">Kayıt</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">Giriş</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>  
<div class="container-fluid" >
<div id="container" class="col-md-8 col-md-offset-2"  style=" background: linear-gradient(45deg, #f44242 0%, rgba(102, 245, 66, 0.75) 100%);">
    <table class="table table-hover" id="oi">
        <thead>
        <tr>
          <th>#</th>
          <th>Kullanıcı Adı</th>
          <th>İsim</th>
          <th>Soyisism</th>
          <th>Mail</th>
          <th>Puan</th>
          </tr>
        </thead>     
        <tbody>
         <%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
Statement st= conn.createStatement(); 
ResultSet rs=st.executeQuery("SELECT  * FROM kullanicilar ORDER BY puan DESC LIMIT 100"); 
String kisiler="";
int i=1;
while(rs.next()) {

    kisiler += "<tr>";
    kisiler += "<th scope=\"row\">"+i+"</th>";
    kisiler += "<td>" + rs.getString("kullanici_adi") + "</td>";
    kisiler += "<td>" + rs.getString("isim") + "</td>";
    kisiler += "<td>" + rs.getString("soyisim") + "</td>";
    kisiler += "<td>" + "" + "</td>";
    kisiler += "<td>" +rs.getString("puan") + "</td>";
    kisiler += "</tr>";
    i++;
}
out.print(kisiler);
rs.close();
st.close();
conn.close();        
        %>
      </tbody>
    </table>  
</div>    
  </div>
    <footer id="footer" role="contentinfo">
        <div class="container">
            <div class="row">
                <div class="social-icons">
                    <ul class="horizontal-navigation">
                        <li class="facebook"><a href="#" title="Facebook" target="_blank"><i class="fa fa-facebook fa-2x fa-fw"></i></a></li>
                        <li class="github"><a href="#" title="Github" target="_blank"><i class="fa fa-github fa-2x fa-fw"></i></a></li>
                        <li class="twitter"><a href="#" title="Twitter" target="_blank"><i class="fa fa-twitter fa-2x fa-fw"></i></a></li>
                        <li class="instagram"><a href="#" title="Instagram" target="_blank"><i class="fa fa-instagram fa-2x fa-fw"></i></a></li>
                        <li class="youtube"><a href="#" title="YouTube" target="_blank"><i class="fa fa-youtube fa-2x fa-fw"></i></a></li>
                    </ul>
                </div>
                <div class="copyright"> UniCoders 2017</div>
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