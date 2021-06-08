for $i in //book
order by $i/title
where $i/price>30
return $i/title/text()