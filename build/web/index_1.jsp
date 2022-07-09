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
                  
            <h1>Definindo os dados da Pessoa Diretamente na página</h1>
            
            <p>Dado que isso é feito via JSP, o usuário não será capaz de ver as próximas duas linhas de código.</p>     
            <jsp:setProperty name = "bean1" property = "nome" value="Cicrano de Tal"/>
            <jsp:setProperty name = "bean1" property = "idade" param="50"/>
            
            <h1>Obtendo Dados da Pessoa</h1>
            
            <pre>
            <label>Nome: </label> <jsp:getProperty name="bean1" property="nome" /> 
            <label>Idade: </label> <jsp:getProperty name="bean1" property="idade" /> 
            </pre>
                       
            
            <p><a href="index.jsp">Exemplo Anterior</a></p>
            <p><a href="index_2.jsp">Próximo Exemplo</a></p>
        </div>     
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
