<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <title>Top 100 Yarismacilar</title>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/css/materialize.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="css/Kulla_Listesi.css">
</head>

<body>
  <div class="row">
  <div id="admin" class="col s12">
    <div class="card material-table">
      <div class="table-header">
        <span class="table-title">Top 100Yarismacilarr</span>
        <div class="actions">
          <a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"><i class="material-icons">person_add</i></a>
          <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons">search</i></a>
        </div>
      </div>
      <table id="datatable">
        <thead>
          <tr>
          	
            <th>Sýra</th>
            <th>Kullanýcý Adý</th>
            <th>Okul</th>
            <th>Mail</th>
            <th>Puan</th>
          </tr>
        </thead>
        <tbody>
        <%
        for(int i=1;i<150;i++)
        {
        %>
          <tr>
            <td><%=i %></td>
            <td><%=i %>. Architect</td>
            <td>Edinburgh</td>
            <td>61</td>
            <td>$320,800</td>
          </tr>
          <%} %>
        </tbody>
      </table>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>
<script type="text/javascript" src="js/Kulla_Listesi.js"></script>

</body>
</html>