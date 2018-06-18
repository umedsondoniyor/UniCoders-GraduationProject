<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@ page import ="java.sql.*" %>
    
<%@ page import="veri.Api" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Sonuc</title>
</head>
<body>

<%
String clientId = "de34167bf555acd6c0ec878e7a08cf72";
String clientSecret = "13c2e4507b06f7e9cdda12d26c1e8400368951df44ce54154e8d6e4fad7a5bde";
String script=request.getParameter("kod");
String language = request.getParameter("dil");

String versionIndex = "0";
script=script.replace("\n", "").replace("\r", "");

Api api =new Api();
String cevap =api.Api_derleyici(clientId, clientSecret, script, language, versionIndex);


Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
Statement st= conn.createStatement(); 
PreparedStatement ps=null;
String sonuc="";
int soru_puani=0;
ResultSet rs=st.executeQuery("select * from sorular where id_s='"+session.getAttribute( "soru_id")+"'"); 
if(rs.next()) 
{ 
	sonuc=rs.getString(5);
	soru_puani=rs.getInt(9);	
}




String[] couple = cevap.split("\"");

cevap=couple[3];

cevap=cevap.replace("n","");
cevap=cevap.replace("\\","");
%>
<br>
<%
out.print("Sorunun Cevabı="+sonuc);
%>
<br>
<%
out.print("Sizin Cevabınız="+cevap);


String id= session.getAttribute( "Kullanici").toString();
int puan=0;

rs=st.executeQuery("select * from kullanicilar where id_k='"+id+"'");
if(rs.next()) {
	puan=rs.getInt("puan");
}
%>
<br>
<%
out.print("Puanınız="+puan);

%>
<br>
<%
out.print("Sorunun puanı="+soru_puani);

%>
<br>
<%
int durum=0;

if(sonuc.equals(cevap))
{
	durum=1;
	out.print("Cevap doğru");
	puan+=soru_puani;
String update="update kullanicilar set puan='"+puan+"' where id_k='"+id+"';";

ps=conn.prepareStatement(update);


int gunc=ps.executeUpdate();}

else
	out.print("Cevap yanlış");



String ekle="insert into cevaplar_sorular (id_k,id_s,cevap,durum) values('"+id+"','"+session.getAttribute( "soru_id")+"','"+script +"','"+durum+"');";

ps=conn.prepareStatement(ekle);

int ekel=ps.executeUpdate();

	%> <p>Profile gidecek bir li</p><%



%>



</body>
</html>