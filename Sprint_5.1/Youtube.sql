-- Verificar todos os vídeos de um usuário específico
SELECT * FROM video 
WHERE user_id = (SELECT id FROM user WHERE user_name = 'carol');

-- Contar o número de inscrições em um canal específico
SELECT COUNT(*) FROM subscription 
WHERE channel_id = (SELECT id FROM channel WHERE name = 'Cesar Channel');

-- Listar todos os comentários em um vídeo específico
SELECT comment_text FROM comment 
WHERE video_id = (SELECT id FROM video WHERE title = 'First video');

-- Verificar se as curtidas estão corretamente registradas
SELECT video.title, COUNT(video_like.user_id) AS likes
FROM video
JOIN video_like ON video.id = video_like.video_id
GROUP BY video.title;