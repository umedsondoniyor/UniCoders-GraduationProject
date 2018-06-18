<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
  <%

  String id= session.getAttribute( "Kullanici").toString();
  
  String soru_adi=request.getParameter("soru_adi");
  
  String icerik=request.getParameter("icerik"); 
  
  String giris=request.getParameter("giris"); 
  
  String cikis=request.getParameter("cikis"); 
  
  
  
  String tarih="2018-04-19"; 
  


  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
  PreparedStatement ps=null;
  Statement st= conn.createStatement();  
  
  String ekle="insert into onerilen_sorular(soru_adi,soru_icerik,girisler,cikislar,Kayit_tarihi,yatin_durumu,id_k,puan) values(?,?,?,?,?,'0','"+id+"','1');";

  ps=conn.prepareStatement(ekle);
  ps.setString(1, soru_adi);
  ps.setString(2, icerik);
  
  ps.setString(3, giris);

  ps.setString(4, cikis);
  ps.setString(5, tarih);
  
  int sonuc=ps.executeUpdate();
  if(sonuc!=0){
	  response.sendRedirect("Profil.jsp");
  	}
  else {
  	%> <p>Güncelleme işlemi başarısız olmuştur. Dahasonra tekrara deneyin.</p><%
  }
  %>
  %>

</body>
</html>