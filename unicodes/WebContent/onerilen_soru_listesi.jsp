<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Profil</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="css/tablo.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"/>
    <link media="all" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/font-awesome.min.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/core.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/skins/blue.css" rel="stylesheet"/>
    <link media="all" type="text/css" href="css/custom.css" rel="stylesheet"/>

</head>
<body>
<%

String kullaniciad=request.getParameter("kullanicie"); 
String sifre=request.getParameter("sifree"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 

Statement st= conn.createStatement(); 
/*
ResultSet rs=st.executeQuery("select * from editor where user_e='"+kullaniciad+"'"); 
if(rs.next()) 
{ 
if(rs.getString("sifre").equals(sifre)) 
{ 
    
	   session.setAttribute( "editor_id", rs.getString("id_e") );
	   
} 
else{

	 session.setAttribute( "mesaj", "şifre yanlış tekrar deneyin" );
	 response.sendRedirect("Uye_giris.jsp");
	   
}
} 
else{
	
	 session.setAttribute( "mesaj", "Böyle bir kullanıcı yok" );
	 response.sendRedirect("Uye_giris.jsp");
	   
}
rs.close();*/
%>

<div id="masthead">
        <div id="site-header" role="banner">
            <div class="container">
                <div class="row">
                    <div id="branding">
                        <a class="logo" href="Anasayfa.html">unicoders</a>
                    </div>
                    <nav id="main-menu" role="navigation">
                        <ul class="horizontal-navigation">
                            <li class="menu-home " itemprop="url"><a href="anasayfa.jsp" title="Anasayfa" itemprop="name">Profil</a></li>
                            <li class="menu-about" itemprop="url"><a href="antreman_listesi.jsp" title="Antreman" itemprop="name">Antreman soruları</a></li>
                            <li class="menu-portfolio" itemprop="url"><a href="Yarismalar.jsp" title="Yarismalar" itemprop="name">Yarışmalar Soruları</a></li>
                            <li class="menu-blog active" itemprop="url"><a href="onerilen_soru_listesi.jsp" title="Top 100" itemprop="name">Önerilen Sorular</a></li>
                            <li class="menu-contact" itemprop="url"><a href="Uye_giris.jsp" title="Hakkimizda" itemprop="name">Çıkış Yap</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </div>
      <div class="row">
 <div class="col-sm-2"></div>
    <% 
    String psoru = "";
    String asoru = "";
    psoru += "<div class=\"col-sm-4\"> <h1>Yayınlanmamış Sorular</h1> <br> <table><thead><tr>" +
            "<th>Soru Adi</th>" +
            "<th>Yazar</th>" +
            "<th>kayıt Tarihi</th>" +
            "<th>Durum</th>" +
            "</tr></thead><tbody>";

    ResultSet rs=st.executeQuery("SELECT k.id_s,k.soru_adi,k.soru_icerik,k.girisler,k.cikislar,k.Kayit_tarihi,e.isim,k.yatin_durumu FROM unicodes.onerilen_sorular as k,unicodes.kullanicilar as e where k.id_k=e.id_k and k.yatin_durumu='0' ORDER BY k.id_s DESC"); 

while(rs.next()) {

	 psoru += "<tr><td> <a href=\"soru_detay.jsp?id="+ rs.getString("k.id_s")+"\">" + rs.getString("k.soru_adi") + "</td>";
     psoru += "<td> " + rs.getString("e.isim") + "</td>";
     psoru += "<td> " + rs.getString("k.Kayit_tarihi")+ "</td>";
     psoru += "</td><td> <a href=\"oneri_soru_dd.jsp?id=" + rs.getString("k.id_s");
     psoru += "\"> <i class=\"fas fa-calendar-plus\"></a></i></td> </tr>";
	
	

}
psoru += "</tbody></table></div>";
out.print(psoru);


rs.close();


asoru += "<div class=\"col-sm-4\"> <h1>Yayınlanmış Sorular</h1> <br> <table><thead><tr>" +
        "<th>Soru Adi</th>" +
        "<th>Yazar</th>" +
        "<th>kayıt Tarihi</th>" +
        "<th>Durum</th>" +
        "</tr></thead><tbody>";
        
    
         rs=st.executeQuery("SELECT k.id_s,k.soru_adi,k.soru_icerik,k.girisler,k.cikislar,k.Kayit_tarihi,e.isim,k.yatin_durumu FROM unicodes.onerilen_sorular as k,unicodes.kullanicilar as e where k.id_k=e.id_k and k.yatin_durumu='1' ORDER BY k.id_s DESC"); 

        while(rs.next()) {

        	asoru += "<tr><td><a href=\"soru_detay.jsp?id="+ rs.getString("k.id_s")+"\">" + rs.getString("k.soru_adi") + "</a></td>";
        	asoru += "<td> " + rs.getString("e.isim") + "</td>";
        	asoru += "<td> " + rs.getString("k.Kayit_tarihi")+ "</td>";
        	asoru += "</td><td> <a href=\"oneri_soru_dd.jsp?id=" + rs.getString("k.id_s");
        	asoru += "\"> <i class=\"fas fa-calendar-minus\"></a></i></td> </tr>";
        	
        	

        }
        asoru += "</tbody></table></div>";
        out.print(asoru);


        rs.close();

    
    %>
      
 <div class="col-sm-2"></div>
 </div>
</body>
</html>