<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carro 1</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
        <jsp:include page = "navbar.jsp" /> 
        <jsp:useBean id="car" class="modelos.Car" />           
        
        <jsp:setProperty name="car" property="model" param="model"/>
        <jsp:setProperty name="car" property="color" param="color"/>
        <jsp:setProperty name="car" property="year" param="year"/>
        <jsp:setProperty name="car" property="brand" param="brand"/>
        
        <div class="container">
            <h1>Obtendo Dados do carro</h1>
            <pre>
                <label>Marca: </label> <jsp:getProperty name="car" property="brand" /> 
                <label>Cor: </label> <jsp:getProperty name="car" property="color" /> 
                <label>Ano: </label> <jsp:getProperty name="car" property="year" /> 
                <label>Modelo: </label> <jsp:getProperty name="car" property="model" /> 
            </pre>
            <p><a href="index_4.jsp">Próximo Exemplo</a></p>
        </div>
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
