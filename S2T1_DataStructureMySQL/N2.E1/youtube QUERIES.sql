USE youtube;

SELECT v.title, v.likes, v.dislikes, u.name
FROM video v
JOIN user u ON v.user_id = u.user_id;

SELECT u.name, c.name
FROM user u
JOIN channel c ON c.user_id = u.user_id;

SELECT title, views, likes as "más de 100 likes"
FROM video
where likes > 100;

SELECT v.title AS "nombre del video" , t.name
AS "etiquetas" , v.created_at AS "fecha de creación"
FROM video v
JOIN video_tag tg ON tg.video_id = v.video_id
JOIN tag t ON tg.tag_id = t.tag_id;

SELECT p.name AS "nombre de la lista", v.title AS "título del 
video" FROM playlist p
JOIN playlist_video pv ON p.playlist_id = pv.playlist_id
JOIN video v ON pv.video_id = v.video_id;

SELECT u.name AS "subsciptores", c.name AS "canal"
FROM suscriptor s 
JOIN user u ON s.user_id = u.user_id
JOIN channel c ON s.channel_id = c.channel_id
WHERE s.user_id = 2;