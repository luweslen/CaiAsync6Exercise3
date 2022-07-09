<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carros 3</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
        
       <jsp:include page = "navbar.jsp" /> 
       <jsp:useBean id="car" class="modelos.Car" />           
        
       <div class="container">
            <h1>Enviando novos dados do Carro</h1>
            
            <jsp:setProperty name="car" property="model" param="model"/>
            <jsp:setProperty name="car" property="color" param="color"/>
            <jsp:setProperty name="car" property="year" param="year"/>
            <jsp:setProperty name="car" property="brand" param="brand"/>
            
            <form action="index_5.jsp" method="post">
              <div class="form-group">
                <label for="brand">Marca</label>
                <input type="text" class="form-control" name="brand" id="brand">
              </div>
              <div class="form-group">
                <label for="color">Cor</label>
                <input type="text" class="form-control" name="color" id="color">
              </div>
              <div class="form-group">
                <label for="year">Ano</label>
                <input type="text" class="form-control" name="year" id="year">
              </div>
              <div class="form-group">
                <label for="model">Modelo</label>
                <input type="text" class="form-control" name="model" id="model">
              </div>

              <button type="submit" class="btn btn-default">Enviar</button>
            </form>                       
            
            
            <h1>Obtendo Dados do carro</h1>
            
            <pre>
                <label>Marca: </label> <jsp:getProperty name="car" property="brand" /> 
                <label>Cor: </label> <jsp:getProperty name="car" property="color" /> 
                <label>Ano: </label> <jsp:getProperty name="car" property="year" /> 
                <label>Modelo: </label> <jsp:getProperty name="car" property="model" /> 
            </pre>
            <p><a href="index_4.jsp">Exemplo Anterior</a></p>
        </div>       
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
