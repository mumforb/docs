---
publish: true
---
### Currently Reading
```dataview
TABLE author, genre
FROM "data/books"
WHERE read = false AND date-started != null
```

### Up Next
```dataview
TABLE author, genre, priority
FROM "data/books"
WHERE read = false AND priority > 6 AND date-started = null
SORT priority DESC
```

### Unscheduled
```dataview
TABLE author, genre, priority
FROM "data/books"
WHERE read = false AND priority <= 6 AND date-started = null
SORT priority DESC
```

### Completed
```dataview
TABLE author, genre, date-complete
FROM "data/books" 
WHERE read = true
SORT date-complete DESC
```
