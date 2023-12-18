-- Verificar quais albuns pertencem a um artista
-- SELECT * FROM album WHERE artist_id = 1;

-- Verificar quais usuários seguem um artista
-- SELECT u.user_name, a.name
-- FROM artist_follower af
-- JOIN user u ON af.user_name = u.user_name
-- JOIN artist a ON af.artist_id = a.id
-- WHERE af.artist_id = 1;

-- Verificar as músicas de um álbum
-- SELECT * FROM music WHERE album_id IN (SELECT id FROM album WHERE title = 'Álbum de sucesso');

-- Encontrar todos os álbuns favoritos de um usuário específico
-- SELECT al.title, al.year_publication, al.cover_image
-- FROM favorite_albums fa
-- JOIN album al ON fa.album_id = al.id
-- JOIN user u ON fa.user_id = u.id
-- WHERE u.user_name = 'juliana';

-- Número de seguidores de um artista
-- SELECT a.name, COUNT(af.user_name) AS followers_count
-- FROM artist_follower af
-- JOIN artist a ON af.artist_id = a.id
-- WHERE a.id = 1
-- GROUP BY a.name;

