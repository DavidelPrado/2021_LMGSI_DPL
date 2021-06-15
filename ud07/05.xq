<html>
  <head>
    <title>05</title>
    <link href="css/estilo.css"  rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <h1>Analisis de datos</h1>
    {for $i in //05
    return
    <h2>La tabla {$i//@name}</h2>
     }
        
  </body>
</html>


