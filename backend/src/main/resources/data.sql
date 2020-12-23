INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana Green', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_genre (name) VALUES ('Comedy');
INSERT INTO tb_genre (name) VALUES ('Horror');
INSERT INTO tb_genre (name) VALUES ('Romance');
INSERT INTO tb_genre (name) VALUES ('Action');
INSERT INTO tb_genre (name) VALUES ('Drama');
INSERT INTO tb_genre (name) VALUES ('Thriller');

INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Home Alone', 'A family commedy without the family', 1990, 'https://www.imdb.com/title/tt0099785/mediaviewer/rm3804584704/', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 1);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Love Actually', 'The ultimate romantic comedy', 2003, 'https://www.imdb.com/title/tt0314331/mediaviewer/rm3436419328/', 'Follows the lives of eight very different couples in dealing with their love lives in various loosely interrelated tales all set during a frantic month before Christmas in London, England.', 1);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Run', 'You can''t escape a mother''s love.', 2020, 'https://www.imdb.com/title/tt8633478/mediaviewer/rm2431824129/', 'A homeschooled teenager begins to suspect her mother is keeping a dark secret from her.', 2);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('The New Mutants', 'It''s time to face your demons', 2020, 'https://www.imdb.com/title/tt4682266/mediaviewer/rm288792833/', 'Five young mutants, just discovering their abilities while held in a secret facility against their will, fight to escape their past sins and save themselves.', 2);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Underwater', '7 miles below the ocean surface something has awakened', 2020, 'https://www.imdb.com/title/tt5774060/mediaviewer/rm2227867905/', 'A crew of oceanic researchers working for a deep sea drilling company try to get to safety after a mysterious earthquake devastates their deepwater research and drilling facility located at the bottom of the Mariana Trench.', 2);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Emma', 'Love knows best.', 2020, 'https://www.imdb.com/title/tt9214832/mediaviewer/rm274892545/', 'In 1800s England, a well meaning but selfish young woman meddles in the love lives of her friends.', 3);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Titanic', 'Nothing on earth could come between then.', 1997, 'https://www.imdb.com/title/tt0120338/mediaviewer/rm2647458304/', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 3);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Wonder Woman 1984', 'A new era of wonder begins.', 2020, 'https://www.imdb.com/title/tt7126948/mediaviewer/rm1442963201/', 'Fast forward to the 1980s as Wonder Woman''s next big screen adventure finds her facing two all-new foes: Max Lord and The Cheetah.', 4);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Spider-Man: Into the Spider-Verse', 'What makes you different is what makes you Spider-Man.', 2018, 'https://www.imdb.com/title/tt4633694/mediaviewer/rm173371392/', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', 4);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('The Trial of the Chicago 7', 'In 1968, democracy refused to back down.', 2020, 'https://www.imdb.com/title/tt1070874/mediaviewer/rm850502913/', 'The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.', 5);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Interstellar', 'Mankind was born on Earth. It was never meant to die here.', 2014, 'https://www.imdb.com/title/tt0816692/mediaviewer/rm4043724800/', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 5);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Joker', 'Put on a happy face.', 2019, 'https://www.imdb.com/title/tt7286456/mediaviewer/rm3353122305/', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.', 6);
INSERT INTO tb_movie (title, sub_title, year, img_url, synopsis, genre_id) VALUES ('Inception', 'The dream is real.', 2010, 'https://www.imdb.com/title/tt1375666/mediaviewer/rm3426651392/', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 6);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('This is one of my favourite films but I have read that a new version is to be filmed in early 2020. NOooooooooo! It does not need to be remade. It stands the test of time and is as funny now as it was on its release.', 1, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Seen this classic so many times and never ceases to get old. With a bunch of great scenery, adorableness, original vibes, and comedy! Macaulay Culkin shined so much, he deserved the millions earned for his role. I love how Joe Pesci went from Scorsese films where he swore so much where as in this he had to bite his tongue. John Hughe was a gifted writer that helmed some gems!', 1, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('The plot is facile and irritating and would probably only appeal to those with infinite tolerance for movies that have weak plots, shallow characters, and sappy nonsense. My wife, who likes ''chick flicks'' couldn''t stand this movie either. First movie in a long time (the last one being ''Spawn'') that I was so irritated that I strongly considered demanding my money back.', 2, 1);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('I thought the movie started off a little slow, but i really enjoyed the way the real action started and i also liked the ending. All in all, it was a great movie, from the plot to the amazing performances, especially by Sarah Paulson, as usual.', 3, 2);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Sarah Paulson is my favorite, but this film isn''t her best. I waited for months for this to come out and I''m left wondering why I was so excited. The trailer gave everything away. You knew the whole story before it even started. There was little to no character development and everything just felt like it was 0-100 with no pacing whatsoever. Also, the makeup department for Sarah''s final look-the hell were you guys on when you came up with this? I actually laughed when I saw her.
It was an okay movie. One that you''d be pissed if you spent money on. Same old story, same old acting. Also, nobody knows how to act an asthma attack.', 3, 1);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('67.000.000 $ for this crap?! For this money we could shoot 100 movies, and at least 5 of them would be great.', 4, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Don''t know why this is getting sick bad reviews. It''s not top notch Marvel but it''s entertaining enough. A solid three star out of 5. It''s basically one flew over the breakfast club with added superpowers. The characters are likeable, and at an hour and a half it neither outstays it''s welcome nor eats into post cinema drinking time. I doubt the box office will justify a sequel, which is a shame as I''d like to see what happened next.', 4, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Good acting, some character drama, the lowest point is T.J. Miller with his jokes, but in a nutshell the movie is like i said, watchable from time to time.', 5, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Kristen Stewart plays the heroine in this moderate budgeted film that takes place underwater during a massive weird earthquake that is devouring the world she and her friends live in. It''s not as scary as is it given its family friendly PG-13 rating but its a decent rental.', 5, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Visually beautiful...but empty of soul....really dreadful...Emma (the lead) was particularly awful....save your time/money--see other versions..this one was torture to sit through', 6, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Fun, stylistic, and is basically everything I wanted from the film. The color palette was absolutely gorgeous. I really enjoyed this film and I think any audience member will If they are into period pieces', 6, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('There is no movie which made a bigger emotional impact on me than Titanic. And even in 2020, 23 years later, it has lost none of its magic.', 7, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Very beautiful and cinematic movie with lots of classic scenes. Also extremely sad at times. Absolute 90''s classic.', 7, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Visually stunning. Great storyline. Great cast. Amazing soundtrack. Tear jerking cameo. Pop culture post credit scene of the decade. Thank you Marvel and Sony for making a Spidey movie everyone can love.', 9, 2);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Went to see the movie in IMAX 3D on LSD. Best experience of my life! This is a masterpiece.', 9, 1);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Strong acting performances that give life to an old story, as relevant in 1968 as it is now in 2020. The movie has High intensity and I wouldn''t be suprised if it is awarded any prizes.', 10, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Having lived through the 1960s I can assure you that this film was historically correct. my Recollection of events of This time period Withslight exaggerations but basically this is the way it went down just as you see in this movie.', 10, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('After watching this insane movie in the theatres back in 2014 I swore to god I will wait 5 years to watch it again so I get to forget it and experince the insanity it has again This without doubt is THE BEST MOVIE EVER MADE', 11, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('All is amazing. I can''t describe anything. It''s a film that leads you to think about yourself and your plans in your life. I am a real series/movies'' lover and... This was awesome.', 11, 2);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('The movie affects you in a way that makes it physically painful to experience, but in a good way.', 12, 2);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('The acting, cinematography, sound design, and the script itself is phenomenal. This movie is a triumph. Joaquin Pheonix deserves an Oscar win for this tbh.', 12, 1);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('You have this basic idea and the story, they are very good. And boy did the have money. And the CGI is spectacular, yes.', 13, 1);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('I am really baffled by all the positive reviews for this film. This film was one of the hardest watches I have had in the cinema. I''m very patient with films but this one gave me a sore head. The script was a mess and worst of all it was very boring!', 13, 2);