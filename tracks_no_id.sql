SELECT
    t.Name,
    g.Name,
    m.Name
FROM Track AS t
JOIN ALBUM as a
    ON t.AlbumId = a.AlbumId
JOIN Genre as g
    ON t.GenreId = g.GenreId
JOIN MediaType as m
    ON t.MediaTypeId = m.MediaTypeId