<html>
  <head>
    <title>8</title>
  </head>
  <body>
    {for $tema in (1,2,3,4,5,6,7),$y in(1,2,3)
      return
        <div>
          <a href="ud{$tema}/0{$y}">{concat("Tema",$tema,"Ejercicio", $y)}</a>
        </div>
    }
  </body>
</html>