SELECT
    DISTINCT p.Name,
    COUNT(*) 
FROM PlaylistTrack AS pt
LEFT JOIN Playlist AS p
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name