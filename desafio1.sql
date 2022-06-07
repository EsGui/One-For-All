DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
  p_id INT NOT NULL PRIMARY KEY,
  plano VARCHAR(50),
  data_assinatura VARCHAR(50),
  valor_plano DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users (
  usuario_id INT NOT NULL PRIMARY KEY,
  usuario VARCHAR(50),
  plano_id INT NOT NULL,
  idade INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (p_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas (
  artista_id INT NOT NULL PRIMARY KEY,
  seguindo VARCHAR(100)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguir_artista (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES users (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns (
  album_id INT NOT NULL PRIMARY KEY,
  album VARCHAR(100),
  artist_id INT NOT NULL,
  ano_lancamento INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes (
  cancoes_id INT NOT NULL PRIMARY KEY,
  musics VARCHAR(200),
  album_ref INT NOT NULL,
  temp_music INT NOT NULL,
  FOREIGN KEY (album_ref) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproducoes (
  rep_id INT NOT NULL PRIMARY KEY,
  reproduz VARCHAR(100)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproduz_uni (
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  reproduz_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancoes_id, reproduz_id),
  FOREIGN KEY (usuario_id) REFERENCES users (usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id),
  FOREIGN KEY (reproduz_id) REFERENCES reproducoes (rep_id)
) engine = InnoDB;

INSERT INTO reproducoes (rep_id, reproduz)
VALUES
  (1, '2020-02-28 10:45:55'),
  (2, '2020-05-02 05:30:35'),
  (3, '2020-03-06 11:22:33'),
  (4, '2020-08-05 08:05:17'),
  (5, '2020-09-14 16:32:22'),
  (6, '2020-01-02 07:40:33'),
  (7, '2020-05-16 06:16:22'),
  (8, '2020-10-09 12:27:48'),
  (9, '2020-09-21 13:14:46'),
  (10, '2020-11-13 16:55:13'),
  (11, '2020-12-05 18:38:30'),
  (12, '2020-07-30 10:00:00'),
  (13, '2021-08-15 17:10:10'),
  (14, '2021-07-10 15:20:30'),
  (15, '2021-01-09 01:44:33'),
  (16, '2020-07-03 19:33:28'),
  (17, '2017-02-24 21:14:22'),
  (18, '2020-08-06 15:23:43'),
  (19, '2020-11-10 13:52:27'),
  (20, '2019-02-07 20:33:48'),
  (21, '2017-01-24 00:31:17'),
  (22, '2017-10-12 12:35:20'),
  (23, '2018-05-29 14:56:41'),
  (24, '2018-05-09 22:30:49'),
  (25, '2020-07-27 12:52:58'),
  (26, '2018-01-16 18:40:43'),
  (27, '2018-03-21 16:56:40'),
  (28, '2020-10-18 13:38:05'),
  (29, '2019-05-25 08:14:03'),
  (30, '2021-08-15 21:37:09'),
  (31, '2021-05-24 17:23:45'),
  (32, '2018-12-07 22:48:52'),
  (33, '2021-03-14 06:14:26'),
  (34, '2020-04-01 03:36:00'),
  (35, '2017-02-06 08:21:34'),
  (36, '2017-12-04 05:33:43'),
  (37, '2017-07-27 05:24:49'),
  (38, '2017-12-25 01:03:57');

INSERT INTO artistas (artista_id, seguindo)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Freedie Shannon'),
  (3, 'Lance Day'),
  (4, 'Peter Strong'),
  (5, 'Tyler Isle'),
  (6, 'Fog');

INSERT INTO planos(p_id, plano, data_assinatura, valor_plano)
VALUES 
  (1, 'gratuito', '2019-10-20', 0),
  (2, 'familiar', '2017-12-30', 7.99),
  (3, 'universitário', '2019-06-05', 5.99),
  (4, 'pessoal', '2020-05-13', 6.99);

INSERT INTO users(usuario_id, usuario, idade, plano_id)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 4),
  (5, 'Norman', 58, 4),
  (6, 'Patrick', 33, 2),
  (7, 'Vivian', 26, 3),
  (8, 'Carol', 19, 3),
  (9, 'Angelina', 42, 2),
  (10, 'Paul', 46, 2);

INSERT INTO albuns(album_id, album, ano_lancamento, artist_id)
VALUES
  (1, 'Envious', 1990, 1),
  (2, 'Exuberant', 1993, 1),
  (3, 'Hallowed Steam', 1995, 4),
  (4, 'Incandescent', 1998, 3),
  (5, 'Temporary Culture', 2001, 2),
  (6, 'Library of liberty', 2003, 2),
  (7, 'Chained Down', 2007, 5),
  (8, 'Cabinet of fools', 2012, 5),
  (9, 'No guarantees', 2015, 5),
  (10, 'Apparatus', 2015, 6);

INSERT INTO cancoes(cancoes_id, musics, album_ref, temp_music)
  VALUES
    (1, 'Soul For Us', 1, 200),
    (2, 'Reflections Of Magic', 1, 163),
    (3, 'Dance With Her Own', 1, 116),
    (4, 'Troubles Of My Inner Firer', 2, 203),
    (5, "Time Fireworks", 2, 152),
    (6, 'Magic Circus', 3, 105),
    (7, 'Honey, So Do I', 3, 207),
    (8, "Sweetie, Let's Go Wild", 3, 139),
    (9, 'She Knows', 3, 244),
    (10, 'Fantasy For Me', 4, 100),
    (11, 'Celebration Of More', 4, 146),
    (12, 'Rock His Everything', 4, 223),
    (13, 'Home Forever', 4, 231),
    (14, 'Diamond Power', 4, 241),
    (15, "Let's Be Silly", 4, 132),
    (16, 'Thang Of Thunder', 5, 240),
    (17, 'Words Of Her Life', 5, 185),
    (18, 'Without My Streets', 5, 176),
    (19, "Need Of The Evening", 6, 190),
    (20, "History Of My Roses", 6, 222),
    (21, "Without My Love", 6, 111),
    (22, 'Walking And Game', 6, 123),
    (23, 'Young And Father', 6, 197),
    (24, 'Finding My Traditions', 7, 179),
    (25, 'Walking And Man', 7, 229),
    (26, 'Hard And Time', 7, 135),
    (27, "Honey, I'm A Lone Wolf", 7, 150),
    (28, "She Thinks I Won't Stay Tonight", 8, 166),
    (29, "He Heard You're Bad For Me", 8, 154),
    (30, "He Hopes We Can't Stay", 8, 210),
    (31, "I Know I Know", 8, 117),
    (32, "He's Walking Away", 9, 159),
    (33, "He's Trouble", 9, 138),
    (34, 'I Heard I Want To Bo Alone', 9, 120),
    (35, 'I Ride Alone', 9, 151),
    (36, 'Honey', 10, 79),
    (37, 'You Cheated On Me', 10, 95),
    (38, "Wouldn't It Be Nice", 10, 213),
    (39, 'Baby', 10, 136),
    (40, 'You Make Me Feel So..', 10, 83);

INSERT INTO seguir_artista(usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 4),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 2),
  (9, 3),
  (10, 4),
  (10, 6);

INSERT INTO reproduz_uni (usuario_id, cancoes_id, reproduz_id)
VALUES
  (1, 36, 1),
  (1, 25, 2),
  (1, 23, 3),
  (1, 14, 4),
  (1, 15, 5),
  (2, 34, 6),
  (2, 24, 7),
  (2, 21, 8),
  (2, 39, 9),
  (3, 6, 10),
  (3, 3, 11),
  (3, 26, 12),
  (4, 2, 13),
  (4, 35, 14),
  (4, 27, 15),
  (5, 7, 16),
  (5, 12, 17),
  (5, 14, 18),
  (5, 1, 19),
  (6, 38, 20),
  (6, 29, 21),
  (6, 30, 22),
  (6, 22, 23),
  (7, 5, 24),
  (7, 4, 25),
  (7, 11, 26),
  (8, 39, 27),
  (8, 40, 28),
  (8, 32, 29),
  (8, 33, 30),
  (9, 16, 31),
  (9, 17, 32),
  (9, 8, 33),
  (9, 9, 34),
  (10, 20, 35),
  (10, 21, 36),
  (10, 12, 37),
  (10, 13, 38);
