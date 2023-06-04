

<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
     <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="./assets/css/main.css">
<link rel="stylesheet" href="./upload.js">
    <title>submitnotes</title>
  </head>
    
    <body>
       
        <nav class="navbar navbar-dark bg-primary">
        <div class="container-fluid ">
          <a class="btn-outline-light btn btn-outline-light text-decoration-none bg-light" href="./home.jsp" role="button"> <h5>Back to Home</h5> </a>
          <span class="navbar-brand mb-0 h-100 text-md-center mx-auto " >Upload Your Notes</span>
   
        </div>
      </nav>
        <br>
            <body class="text-center">
  <h1 class=" text-primary"> Upload your Notes</h1>
  <form method="POST" action="UploadServlet" enctype="multipart/form-data">
      <input class="btn btn-info" type="file" name="file" >
      <br>
      <br>
      <input class=" btn btn-primary" type="submit" id="submitBtn" value="Upload">
      <label id="resp"></label>
  </form>
 
 



    
<!------------------------------semester 2----------------->

    <br>
    
    




<hr>

<!-----------------------------------------------------------------------------------------footer-->




    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    
  </body>
          
               
      
</html>
