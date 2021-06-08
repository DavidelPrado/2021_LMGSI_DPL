<libros>
  {
    for $i in //book
    return
      <libro>
        {$i/title}
        {$i/author}
      </libro>
  }
</libros>