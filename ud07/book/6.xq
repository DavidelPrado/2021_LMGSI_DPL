for $i in //book
order by $i/title
where $i/price>30
return concat($i/title/text(),":",$i/price/text(),"$")
