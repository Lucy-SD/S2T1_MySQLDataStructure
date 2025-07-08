CREATE DATABASE IF NOT EXISTS youtube;
USE youtube;

CREATE TABLE user (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(30) NOT NULL,
password VARCHAR(30) NOT NULL,
birth_date DATE,
sex ENUM("femenino", "masculino", "NS/NC"),
country VARCHAR(50)
);


CREATE TABLE video (
video_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
title VARCHAR(30) NOT NULL,
description TEXT,
size_mb FLOAT,
file_name VARCHAR(100),
duration_sec INT,
thumbnail TINYBLOB,
views INT,
likes INT,
dislikes INT,
status ENUM ("público", "oculto", "privado"),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE video_reaction (
video_id INT,
user_id INT,
type ENUM ("like", "dislike"),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (video_id) REFERENCES video(video_id),
FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE comment (
comment_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
video_id INT,
body TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (video_id) REFERENCES video(video_id)
);


CREATE TABLE comment_reaction (
comment_id INT,
user_id INT,
type ENUM ("like", "dislike"),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (comment_id) REFERENCES comment(comment_id),
FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE tag (
tag_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE video_tag (
video_id INT,
tag_id INT,
FOREIGN KEY (video_id) REFERENCES video(video_id),
FOREIGN KEY (tag_id) REFERENCES tag(tag_id)
);


CREATE TABLE channel (
channel_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
name VARCHAR(100) NOT NULL,
description TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES user(user_id)
);


CREATE TABLE suscriptor (
channel_id INT,
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(user_id),
FOREIGN KEY (channel_id) REFERENCES channel(channel_id)
);


CREATE TABLE playlist (
playlist_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
name VARCHAR(100) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status ENUM ("público", "privado"),
FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE playlist_video (
playlist_id INT,
video_id INT,
FOREIGN KEY (playlist_id) REFERENCES playlist(playlist_id),
FOREIGN KEY (video_id) REFERENCES video(video_id)
);