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
<%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
Statement st= conn.createStatement(); 

ResultSet rs=null;
/*
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
      

  <%

String ids=request.getParameter("id"); 

  if(session.getAttribute( "editor_id" )!=null){
	  String id= session.getAttribute( "editor_id").toString();
   rs=st.executeQuery("SELECT k.id_s,k.soru_adi,k.soru_icerik,k.girisler,k.cikislar,k.Kayit_tarihi,e.isim,k.yatin_durumu,k.puan FROM unicodes.onerilen_sorular as k,unicodes.kullanicilar as e where k.id_k=e.id_k and k.id_s ='"+ids+"'");
   session.setAttribute( "soru_id",ids);
   while(rs.next()) {

	  %>
	  
	  
<div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"><%=rs.getString("soru_adi") %></h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class=" col-md-12 col-lg-12 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Soru İçeriği:</td>
                        <td><%=rs.getString("soru_icerik") %></td>
                      </tr>
                      <tr>
                        <td>Kayit Tarihi</td>
                        <td><input type="date" name="dateofbirth" id="dateofbirth" value="<%=rs.getString("Kayit_tarihi") %>"style="background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;   border: 1px solid #c4c4c4;border-radius: 5px;background-color: #fff;padding: 3px 5px;box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);width: 190px;"></td>
                      </tr>
                         <tr>
                             <tr>
                        <td>Girişler</td>
                        <td><%=rs.getString("girisler") %></td>
                      </tr>
                        <tr>
                        <td>Çıkışlar</td>
                        <td><%=rs.getString("cikislar") %></td>
                      </tr>
                      
                         <tr>
                        <td>Puan</td>
                        <td><%=rs.getString("k.puan") %></td>
                      </tr>
                      
                  
                    </tbody>
                  </table>
                       <form  METHOD=POST ACTION="puan_guncelle.jsp">
 <input type=text placeholder="Puan" NAME=puan class="forms_field-input" required value=<%=rs.getString("k.puan") %> >
 
            <input type="submit" value="Güncelle" class="forms_buttons-action">
                      </form>
                </div>
              </div>
            </div>
            <div class="panel-footer">
             </div>
          </div>
        </div>
      </div>
    </div>
     <%   
	
}
  rs.close();
  }
         

  %>
    
<script type="text/javascript" src="js/Profile.js"></script>
</body>
</html>