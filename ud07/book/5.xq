<html>
  <head>
    <title>05</title>
    <link href="css/estilo.css"  rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <h1>Bookstore</h1>
    <table>
       <tr>
         <th>Titulo</th>
         <th>Categoría</th>
       </tr>
       {for $i in //book
        order by $i/title
        return 
          <tr>
            <td>{$i/title/text()}</td>
            <td>{data($i/@category)}</td>
          </tr>}
    </table>
     <ol>
      {for $i in //book
      order by $i/title
      return <li class="{data($i/@category)}">{$i/title/text()}</li>}
    </ol>
  </body>
</html>


