---
publish: true
---
## Up Next	
```dataview
TABLE type, interested, blurb, imdbRating
FROM "content/movies-and-tv"
WHERE up-next = true AND watched = null
```

## Backlog
```dataview
TABLE type, interested, blurb, imdbRating
FROM "content/movies-and-tv"
WHERE up-next = false OR up-next = null AND watched = null
```

## Watched
```dataview
TABLE type, b-rating, g-rating, k-rating
FROM "content/movies-and-tv"
WHERE watched = true
```
