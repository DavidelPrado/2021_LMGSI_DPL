for $i in //book
let $x:=$i/author
where count($x)>2
return $i/title/text()