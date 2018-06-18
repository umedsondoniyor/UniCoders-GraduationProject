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

  String isim=request.getParameter("isim");
  
  String soyisim=request.getParameter("soyisim"); 
  
  String kullaniciadi=request.getParameter("kullaniciadi"); 
  
  String okul=request.getParameter("okul"); 
  
  String tarih=request.getParameter("tarih"); 
  
  String mail=request.getParameter("mail"); 
  
  String sifre=request.getParameter("sifre"); 
  
  String cinsiyet=request.getParameter("cinsiyet"); 
  

  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
  PreparedStatement ps=null;
  Statement st= conn.createStatement();  
  
  String ekle="insert into kullanicilar(isim, soyisim, kullanici_adi, okul_adi, dogum_tarihi, mail,sifre,cinsiyet,puan) values(?,?,?,?,?,?,?,?,'0')";
  ps=conn.prepareStatement(ekle);
  ps.setString(1, isim);
  ps.setString(2, soyisim);
  
  ps.setString(3, kullaniciadi);
  
  ps.setString(4, okul);
  
  ps.setString(5, tarih);

  ps.setString(6, mail);
  ps.setString(7, sifre);
  ps.setString(8, cinsiyet);
  
  int sonuc=ps.executeUpdate();
  if(sonuc!=0){
	  response.sendRedirect("Uye_giris.jsp");
  	}
  else {
  	%> <p>Güncelleme işlemi başarısız olmuştur. Dahasonra tekrara deneyin.</p><%
  }
  %>
  %>

</body>
</html>