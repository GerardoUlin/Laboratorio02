<%@ Language=VBScript %>
<html>
<head>
  <meta charset="utf-8">
  <title>Calculadora</title>
</head>
<body>
  <div align="center">
    <form name="calcForm" action="calculadora.asp" method="post">
      <p align="center">
        Primer número:
        <select align="center" name="num1">
          <% 
          For k = 1 To 10
            Response.Write "<option>" & k & "</option>"
          Next
          %>
        </select>
        <br />

        Operación:
        <select align="center" name="operation">
          <option>+</option>
          <option>-</option>
          <option>*</option>
          <option>/</option>
        </select>
        <br />

        Segundo número:
        <select align="center" name="num2">
          <% 
          For k = 1 To 10
            Response.Write "<option>" & k & "</option>"
          Next
          %>
        </select>
        <br />

        <input type="submit" value="Calcular" name="submitCalc" />
      </p>
    </form>

    <%
      Dim num1, num2, operation, result
      num1 = CInt(Request.Form("num1"))
      num2 = CInt(Request.Form("num2"))
      operation = Request.Form("operation")
      
      If operation = "+" Then
        result = num1 + num2
      ElseIf operation = "-" Then
        result = num1 - num2
      ElseIf operation = "*" Then
        result = num1 * num2
      ElseIf operation = "/" Then
        If num2 <> 0 Then
          result = num1 / num2
        Else
          result = "Error: División por cero"
        End If
      End If
    %>

    <br /><br />
    <p>Resultado de la operación: <%= num1 %> <%= operation %> <%= num2 %> = <%= result %></p>
  </div>
</body>
</html>

