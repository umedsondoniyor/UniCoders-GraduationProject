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
  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","Eser"); 
  Statement st= conn.createStatement();  
  ResultSet rs=st.executeQuery("SELECT * FROM sunucu_final.bolumler;");

  PreparedStatement ps=null;
  String ekle="";
  String user="user-";
  String isim="isim-";
  int sonuc;
  for(int i =0;i<100;i++){
   ekle="insert into kullanicilar(kullanici_adi,sifre,isim,soyisim,mail,puan) values(?,?,?,?,?,'"+i+"');";
   
  ps=conn.prepareStatement(ekle);
  ps.setString(1, (user+i));
  ps.setString(2, "123");
  ps.setString(3, isim);
  ps.setString(4, isim+i);
  ps.setString(5, "mail@mai.com");
   sonuc=ps.executeUpdate();
  if(sonuc!=0)
  	out.print("başarıyla eklendi");
  else 
  	out.print("başarsız");
  }
  %>

</body>
</html>