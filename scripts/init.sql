DROP TABLE IF EXISTS Room ;
DROP TABLE IF EXISTS Reserve;
DROP TABLE IF EXISTS Blacklist;
CREATE TABLE Room (id int PRIMARY KEY);
CREATE TABLE Blacklist (ip VARCHAR(15) PRIMARY KEY);
CREATE TABLE Reserve(roomId int, start TIMESTAMP NOT NULL, end TIMESTAMP NOT NULL, username VARCHAR(50), PRIMARY KEY(roomId, start, end), FOREIGN KEY(roomId) REFERENCES room(id));
INSERT INTO Room VALUES (801), (802), (803), (804), (810);
INSERT INTO Reserve VALUES (801, '2019-11-10 13:00:00', '2019-11-19 14:00:00', 'rkhosravi');
INSERT INTO Reserve VALUES (810, '2019-11-10 13:45:00', '2019-11-19 14:00:00', 'rkhosravi');
INSERT INTO Reserve VALUES (802, '2019-11-10 13:20:00', '2019-11-19 13:40:00', 'rkhosravi');
INSERT INTO Reserve VALUES (803, '2019-11-10 12:30:00', '2019-11-19 13:30:00', 'rkhosravi');
INSERT INTO Reserve VALUES (804, '2019-11-10 14:00:00', '2019-11-19 16:00:00', 'rkhosravi');
