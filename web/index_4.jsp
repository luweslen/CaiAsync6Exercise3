<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carros 2</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
       <jsp:include page = "navbar.jsp" /> 
       <jsp:useBean id="car" class="modelos.Car" />           
        
       <div class="container">
            <h1>Definindo os dados da Pessoa Diretamente na página</h1>
            
            <p>Dado que isso é feito via JSP, o usuário não será capaz de ver as próximas duas linhas de código.</p> 
            
            <jsp:setProperty name="car" property="model" value="AA" />
            <jsp:setProperty name="car" property="color" value="A" />
            <jsp:setProperty name="car" property="year"  value="2022" />
            <jsp:setProperty name="car" property="brand" value="A" />
            
            <pre>
                <label>Marca: </label> <jsp:getProperty name="car" property="brand" /> 
                <label>Cor: </label> <jsp:getProperty name="car" property="color" /> 
                <label>Ano: </label> <jsp:getProperty name="car" property="year" /> 
                <label>Modelo: </label> <jsp:getProperty name="car" property="model" /> 
            </pre>
            
            <p><a href="index_3.jsp">Exemplo Anterior</a></p>
            <p><a href="index_5.jsp">Próximo Exemplo</a></p>
        </div>       
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
