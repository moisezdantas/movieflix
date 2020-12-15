INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Bob', 'Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (first_name, last_name, email, password) VALUES ('Ana', 'Green', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);


INSERT INTO tb_genre (title, sub_title, year, img_uri, synopsis) VALUES ('Ação', 'Ação', 2015, 'https://cinepop.com.br/wp-content/uploads/2020/02/action-cinepop.jpg', 'filme de ação');
INSERT INTO tb_genre (title, sub_title, year, img_uri, synopsis) VALUES ('Drama', 'Drama', 2018, 'https://cinepop.com.br/wp-content/uploads/2020/02/action-cinepop.jpg', 'filme de drama');
INSERT INTO tb_genre (title, sub_title, year, img_uri, synopsis) VALUES ('Comédia', 'Comédia', 2019, 'https://cinepop.com.br/wp-content/uploads/2020/02/action-cinepop.jpg', 'filme de comédia');