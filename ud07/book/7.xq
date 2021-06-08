<books>
    {for $i at $x in //book
    return <book>{concat($x,". ",$i/title/text())}</book>}
</books>