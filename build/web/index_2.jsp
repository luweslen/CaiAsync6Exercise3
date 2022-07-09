<%-- 
    Document   : index
    Created on : 15/12/2020, 12:09:57
    Author     : AI-Dev1
    Tempo de dev: 15 min
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo JavaBeans</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
        
       <jsp:include page = "navbar.jsp" /> 
       <jsp:useBean id="bean1" class="modelos.Pessoa" />           
        
       <div class="container">
                  
            <h1>Enviando novos dados da Pessoa</h1>
            
            <jsp:setProperty name = "bean1" property = "nome" param="nomePessoa"/>
            <jsp:setProperty name = "bean1" property = "idade" param="idadePessoa"/>
            
            <form action="index_2.jsp" method="post">
              <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" name="nomePessoa" id="nome">
              </div>
              <div class="form-group">
                <label for="idade">Idade</label>
                <input type="text" class="form-control" name="idadePessoa" id="idade">
              </div>

              <button type="submit" class="btn btn-default">Enviar</button>
            </form>                       
            
            
            <h1>Obtendo Dados da Pessoa</h1>
            
            <pre>
            <label>Nome: </label> <jsp:getProperty name="bean1" property="nome" /> 
            <label>Idade: </label> <jsp:getProperty name="bean1" property="idade" /> 
            </pre>
                       
            
            <p><a href="index_1.jsp">Exemplo Anterior</a></p>
        </div>       
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
