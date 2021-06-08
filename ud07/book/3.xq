<html>
  <head>
    <title>03</title>
  </head>
  <body>
    <ol>
      {for $i in //book
      order by $i/title
      where $i/price>30
      return <li>{$i/title/text()}</li>}
    </ol>
  </body>
</html>

