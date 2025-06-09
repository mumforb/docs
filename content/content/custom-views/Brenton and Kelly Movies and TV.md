---
publish: true
---
## Both Interested
```dataview
TABLE type, blurb, imdbRating, contains(interested, "grace") as grace-also-interested
FROM "content/movies-and-tv"
WHERE watched = null AND contains(interested, "brenton") AND contains(interested, "kelly")
```

## Partially Interested
```dataview
TABLE type, blurb, interested, imdbRating
FROM "content/movies-and-tv"
WHERE watched = null AND contains(interested, "brenton") OR contains(interested, "kelly") AND !(contains(interested, "brenton") AND contains(interested, "kelly"))
```