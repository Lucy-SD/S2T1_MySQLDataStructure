USE youtube;

INSERT INTO user (name, email, password, birth_date, sex, country) VALUES
("Loli", "loli@mail.com", 12345, "1964-03-11", "femenino", null),
("Paqui", "paqui@mail.com", 23456, "1982-07-30", "NS/NC", "España"),
("Tom", "tommy@mail.com", 34567, "1999-12-21", "masculino", "Italia"),
("Roe", "roe@mail.com", 67894, "2002-03-26", null, "Argentina");

INSERT INTO video (user_id, title, size_mb, file_name, duration_sec, views, likes, dislikes, status) VALUES
(1, "Lolita", 825, "Lolita/Loli", 322, 1254, 157, 235, "público"),
(2, "El paquete", 325, "paquete de paqui", 125, 3574, 321, 62, "público"),
(3, "Fista", 451, "salida de anoche", 211, 53, 47, null, "oculto"),
(4, "Alguito", 154, "testeando", 123, null, null, null, "privado");

INSERT INTO channel (user_id, name) VALUES
(1, "LaLoliChannel"),
(3, "Aprendindo Juntos");

INSERT INTO playlist (user_id, name, status) VALUES
(2, "Canciones para Soñar", "privado"),
(4, "Studing Mood", "público");

INSERT INTO suscriptor (channel_id, user_id) VALUES
(1, 2),
(2, 4);

INSERT INTO tag (name) VALUES
("atarcecer"),
("relajate"),
("dormir bien"),
("concentración"),
("sueño profundo"),
("estudio");

INSERT INTO video_tag (video_id, tag_id) VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(1, 5),
(2, 6);

INSERT INTO comment (user_id, video_id) VALUES
(1, 4),
(2, 1),
(3, 2),
(4, 3),
(1, 3),
(2, 1);

INSERT INTO comment_reaction (comment_id, user_id, type) VALUES
(3, 2, "like"),
(4, 3, "like"),
(6, 1, "dislike");

INSERT INTO video_reaction (video_id, user_id, type) VALUES
(4, 2, "dislike"),
(2, 3, "like"),
(1, 1, "dislike");

INSERT INTO playlist_video (playlist_id, video_id) VALUES
(1, 1),
(1,2),
(2,3),
(2, 4);



