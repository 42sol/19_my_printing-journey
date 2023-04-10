> We are on page "`= this.file.name`".

## TODOs:
```dataview
task from #projects
```

## BOOKs:

```dataview
TABLE alias AS "Name", rating AS "thoughts.rating" FROM #book
```

```dataviewjs
for (let group of dv.pages("#book").where(p => p["time-read"].year == 2021).groupBy(p => p.genre)) {
	dv.header(3, group.key);
	dv.table(["Name", "Time Read", "Rating"],
		group.rows
			.sort(k => k.rating, 'desc')
			.map(k => [k.file.link, k["time-read"], k.rating]))
}
```