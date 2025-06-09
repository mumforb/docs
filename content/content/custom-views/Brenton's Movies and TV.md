---
publish: true
---
## Up Next	
```dataview
TABLE type, blurb, imdbRating
FROM "content/movies-and-tv"
WHERE up-next = true AND watched = null AND contains(interested, "brenton")
```

## Backlog
```dataview
TABLE type, blurb, imdbRating
FROM "content/movies-and-tv"
WHERE up-next = false OR up-next = null AND watched = null AND contains(interested, "brenton")
```

## Watched
```dataview
TABLE type, b-rating, g-rating, k-rating
FROM "content/movies-and-tv"
WHERE watched = true AND contains(interested, "brenton")
```
