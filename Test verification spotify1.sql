SELECT a.id, a.name
FROM artist_follower af
JOIN artist a ON af.artist_id = a.id
WHERE af.user_name = 'juliana';

-- SELECT artist_id FROM artist_follower WHERE user_name = 'juliana123';




