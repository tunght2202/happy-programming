<%-- 
    Document   : staticRequest
    Created on : Jun 30, 2023, 6:22:35 AM
    Author     : QUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Statistic of Requests</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    h1 {
      text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
  </style>
</head>
<body>
  <h1>Statistic of Requests</h1>
  
  <table>
    <thead>
      <tr>
        <th>Title of Request</th>
        <th>Total Requests</th>
        <th>Total Hours</th>
        <th>Total Mentors</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Request 1</td>
        <td>5</td>
        <td>20</td>
        <td>3</td>
      </tr>
      <tr>
        <td>Request 2</td>
        <td>3</td>
        <td>12</td>
        <td>2</td>
      </tr>
      <!-- Add more rows for each request -->
    </tbody>
  </table>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

