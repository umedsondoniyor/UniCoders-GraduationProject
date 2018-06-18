<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Antreman</title>

    <link href="css/eniyiler.css" rel="stylesheet" />
    <link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/core.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/skins/black.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/custom.css" rel="stylesheet"/>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
Statement st= conn.createStatement(); 
ResultSet rs=null;
/*
ResultSet rs=st.executeQuery("select * from kullanicilar where kullanici_adi='"+kullaniciad+"'"); 
if(rs.next()) 
{ 
if(rs.getString("sifre").equals(sifre)) 
{ 
    
	   out.println("Giri� ba�ar�l�");
	   session.setAttribute( "Kullanici", rs.getString("id_k") );
	   
} 
else{

	 session.setAttribute( "mesaj", "�ifre yanl�� tekrar deneyin" );
	 response.sendRedirect("Uye_giris.jsp");
	   
}
} 
else{
	
	 session.setAttribute( "mesaj", "B�yle bir kullan�c� yok" );
	 response.sendRedirect("Uye_giris.jsp");
	   
}
rs.close();*/
%>

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
                            <li class="menu-about active" itemprop="url"><a href="Antreman.jsp" title="Antreman" itemprop="name">Antreman</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar.jsp" title="Yarismalar" itemprop="name">Yar��malar</a></li>
                            <li class="menu-blog" itemprop="url"><a href="Topliste.jsp" title="Top 100" itemprop="name">Top 100</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Hakkimizda_.jsp" title="Hakkimizda" itemprop="name">Hakk�m�zda</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Profil.jsp" title="Hakkimizda" itemprop="name">Profil</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">��k��</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </div>
      

    <main id="content" role="main">
              

        <div class="section">
            <div class="container" style="text-align: center;">
        
        
                
                
                
                <div class="row">
                    
                    
                   <%

rs=st.executeQuery("SELECT k.id_s,k.soru_adi,k.soru_icerik,k.girisler,k.cikis,k.kayit_tarihi,e.isim_e,k.yay�n_durumu,k.id_e FROM unicodes.sorular as k,unicodes.editor as e where k.id_e=e.id_e and k.yay�n_durumu='1' ORDER BY k.id_s DESC"); 
String sorular="";
while(rs.next()) {
	sorular += "<div class=\"three-quarters-block\"><div class=\"content\"><article class=\"post hentry\" itemscope itemprop=\"blogPost\"><header class=\"entry-header\"><h2 class=\"entry-title\" itemprop=\"headline\"><a class=\"fn url\" href=\"Soru_coz.jsp?id="+rs.getString("k.id_s")+"\">" + rs.getString("k.soru_adi");
     sorular += "</h2><div class=\"entry-meta\"><span class=\"post-date\"><i class=\"fa fa-clock-o fa-fw\"></i> <span class=\"updated\">" + rs.getString("k.kayit_tarihi");
     sorular += "</span></span><span class=\"post-author\"><i class=\"fa fa-user fa-fw\"></i> Yazar <span class=\"vcard\"><a class=\"fn url\" href=\"profil.jsp?id="+rs.getString("k.id_e")+"\">" + rs.getString("e.isim_e");
     sorular += "</a></span></span></div></header>";
     sorular += "<div class=\"entry-content\" itemprop=\"articleBody\"><p>" + rs.getString("k.soru_icerik");
     sorular += "</p><p>Grir�ler</p><p>" + rs.getString("k.girisler");
     sorular += "</p></div></article></div></div>";

}
rs.close();
rs=st.executeQuery("SELECT k.id_s,k.soru_adi,k.soru_icerik,k.girisler,k.cikislar,k.Kayit_tarihi,e.isim,k.yatin_durumu,k.id_k FROM unicodes.onerilen_sorular as k,unicodes.kullanicilar as e where k.id_k=e.id_k and k.yatin_durumu='1' ORDER BY k.id_s DESC"); 
String sorularo="";
while(rs.next()) {
	sorular += "<div class=\"three-quarters-block\"><div class=\"content\"><article class=\"post hentry\" itemscope itemprop=\"blogPost\"><header class=\"entry-header\"><h2 class=\"entry-title\" itemprop=\"headline\"><a class=\"fn url\" href=\"antreman_soru_coz.jsp?id="+rs.getString("k.id_s")+"\">" + rs.getString("k.soru_adi");
     sorular += "</h2><div class=\"entry-meta\"><span class=\"post-date\"><i class=\"fa fa-clock-o fa-fw\"></i> <span class=\"updated\">" + rs.getString("k.Kayit_tarihi");
     sorular += "</span></span><span class=\"post-author\"><i class=\"fa fa-user fa-fw\"></i> Yazar <span class=\"vcard\"><a class=\"fn url\" href=\"profil.jsp?id="+rs.getString("k.id_k")+"\">" + rs.getString("e.isim");
     sorular += "</a></span></span></div></header>";
     sorular += "<div class=\"entry-content\" itemprop=\"articleBody\"><p>" + rs.getString("k.soru_icerik");
     sorular += "</p><p>Grir�ler</p><p>" + rs.getString("k.girisler");
     sorular += "</p></div></article></div></div>";

}
out.print(sorular);
out.print(sorularo);


rs.close();
st.close();
conn.close();
         
        %>
                </div>
            </div>
        </div>
    </main>



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