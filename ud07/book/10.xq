<libros>
{
  for $i in //book
  let $x:=$i/author
  return <libro autores="{count($x)}">{$i/title/text()}</libro>
}
</libros>