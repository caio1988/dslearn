INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('BootCamp HTML', 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png',
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_Id) VALUES ('1.0', '2021-07-14T03:00:00Z', '2022-07-14T03:00:00Z', 1); 

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 1, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 2, 1); 
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives Bonus', 'Lives exclusivas para a turmna', 3, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 0, 1); 

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos comecar', 1, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 1, NULL);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Continuando os trabalhos', 2, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Finalizando o projeto', 3, 
'https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/HTML5_logo_and_wordmark.svg/1200px-HTML5_logo_and_wordmark.svg.png', 1, 2);

INSERT INTO tb_enrollment (user_Id, offer_Id, enroll_Moment, refound_Moment, available, only_Update) VALUES (1, 1, '2021-07-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_Id, offer_Id, enroll_Moment, refound_Moment, available, only_Update) VALUES (2, 1, '2021-07-14T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 - Capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio do capitulo 1 da aula 1', 'https://www.youtube.com/watch?v=iDhg2CtRSII');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 - Capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de apoio do capitulo 2 da aula 1', 'https://www.youtube.com/watch?v=iDhg2CtRSII');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 - Capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de apoio do capitulo 3 da aula 1', 'https://www.youtube.com/watch?v=iDhg2CtRSII');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do Capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer o trabalho da aula', 5, 4, 1.0, 
TIMESTAMP WITH TIME ZONE '2022-11-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1 );
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1 );