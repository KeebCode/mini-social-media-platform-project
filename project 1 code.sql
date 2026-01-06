CREATE TABLE User(
	`UserID` INT PRIMARY KEY,
    `Username` VARCHAR(32) NOT NULL,
    `Email` VARCHAR(32), 
    `Password` INT, 
    `Location` VARCHAR(32) NOT NULL, 
    `PrivacySetting` VARCHAR(32),
    `DateJoined` INT NOT NULL
);

INSERT INTO User (UserID, Username, Email, Password, Location, PrivacySetting, DateJoined) VALUES
(1, 'ryan', 'ryan@example.com', 'pass123', 'NYC', 'Public', '2025-01-10'),
(2, 'alex', 'alex@example.com', 'pass456', 'LA', 'FriendsOnly', '2025-01-12'),
(3, 'maria', 'maria@example.com', 'pass789', 'Chicago', 'Public', '2025-01-14'),
(4, 'sam', 'sam@example.com', 'sam987', 'Miami', 'Private', '2025-01-15'),
(5, 'lisa', 'lisa@example.com', 'lisa321', 'NYC', 'FriendsOnly', '2025-01-16');

SELECT * FROM User;

CREATE TABLE Post(
	`PostID` INT PRIMARY KEY,
    `UserID` INT PRIMARY KEY,
    `Content` VARCHAR(32) NOT NULL, 
    `MediaURL` VARCHAR(32) NOT NULL, 
    `Timestamp` VARCHAR(32) NOT NULL, 
    `Visibility` VARCHAR(32) 
);
insert INTO Post (PostID, UserID, Content, MediaURL, Timestamp, Visibility) values
 (101, 1, 'Good morning everyone!', NULL, '2025-01-17 08:15', 'Public'),
 (102, 2, 'Just got a new skateboard!', 'img/skate.png', '2025-01-17 10:00', 'FriendsOnly'),
 (103, 3, 'Beautiful sunset today', 'img/sunset.jpg', '2025-01-18 19:45', 'Public'),
 (104, 1, 'Going to the gym', NULL, '2025-01-19 14:25', 'Private'),
 (105, 4, 'Vacation time!', 'img/beach.png', '2025-01-20 16:00', 'Public');
 
 SELECT * FROM Post;
 
CREATE TABLE Comment(
`CommentID` INT, 
`PostID` INT, 
`UserID` INT PRIMARY KEY, 
`Content` VARCHAR(32) NOT NULL,
`Timestamp` VARCHAR(32) NOT NULL 
);
insert INTO Comment (CommentID, PostID, UserID, Content, Timestamp) values
 (201, 101, 3, 'Nice post!', '2025-01-17 09:05'),
 (202, 102, 1, 'Looks awesome!', '2025-01-17 10:30'),
 (203, 103, 4, 'I love sunsets', '2025-01-18 20:00'),
 (204, 105, 5, 'Have fun!', '2025-01-20 16:20'),
 (205, 101, 2, 'Good morning!', '2025-01-17 08:20');
 
select * FROM Comment;
 
 CREATE TABLE Likes(
 `LikeID` INT, 
 `PostID` INT, 
 `UserID` INT PRIMARY KEY, 
 `Timestamp` VARCHAR(32) NOT NULL
);
insert INTO Likes (LikeID, PostID, UserID, Timestamp) values
 (301, 101, 2, '2025-01-17 08:22'),
 (302, 101, 3, '2025-01-17 08:25'),
 (303, 103, 1, '2025-01-18 19:50'),
 (304, 105, 3, '2025-01-20 16:05'),
 (305, 102, 5, '2025-01-17 10:10');
 
select * from Likes;
 
 CREATE TABLE Friendship(
 `RequestID` INT,
 `SenderID` INT PRIMARY KEY, 
 `ReceiverID` INT,
 `Status` VARCHAR(32) NOT NULL,
 `Timestamp` VARCHAR(32) NOT NULL
);
insert INTO Friendship (RequestID, SenderID, ReceiverID, Status, Timestamp) values
 (401, 1, 2, 'Accepted', '2025-01-10 12:00'),
 (402, 2, 3, 'Accepted', '2025-01-11 14:30'),
 (403, 3, 4, 'Pending', '2025-01-12 16:10'),
 (404, 4, 5, 'Blocked', '2025-01-13 11:50'),
 (405, 5, 1, 'Accepted', '2025-01-14 18:25');
 
select * from Friendship; 
 
 CREATE Table Message(
 `MessageID` INT, 
 `SenderID` INT PRIMARY KEY, 
 `ReceiverID` INT,
 `Content` VARCHAR(32) NOT NULL, 
 `Timestamp` VARCHAR(32) NOT NULL, 
 `ReadStatus` VARCHAR(32) NOT NULL
);
insert INTO Message (MessageID, SenderID, ReceiverID, Content, Timestamp, ReadStatus) values
 (501, 1, 2, 'Hey what’s up?', '2025-01-17 12:00', 'Unread'),
 (502, 2, 1, 'All good, you?', '2025-01-17 12:05', 'Read'),
 (503, 3, 4, 'Want to hang out?', '2025-01-18 15:30', 'Unread'),
 (504, 5, 1, 'Call me when free', '2025-01-19 09:45', 'Unread'),
 (505, 4, 3, 'Sure, let’s meet tomorrow', '2025-01-19 16:20', 'Read');

select * from Message;

CREATE TABLE Groups(
`GroupID` INT PRIMARY KEY, 
`GroupName` VARCHAR(32) NOT NULL, 
`Description` VARCHAR(32) NOT NULL,
`PrivacyType` VARCHAR(32), 
`CreatedBy` INT NOT NULL
);
insert INTO Groups (GroupID, GroupName, Description, PrivacyType, CreatedBy) values
 (601, 'Food Lovers', 'Sharing recipes and restaurant tips', 'Public', 1),
 (602, 'Gym Crew', 'Workout motivation and routines', 'Private', 1),
 (603, 'Photography', 'Share your best shots', 'Public', 3),
 (604, 'Gamers United', 'Gaming chat and teams', 'Public', 2),
 (605, 'Travel Buddies', 'Plan trips together', 'FriendsOnly', 5);

select * from Groups;

CREATE TABLE GroupMembership(
`GroupID` INT PRIMARY KEY,
`UserID` INT, 
`Role` VARCHAR(32) NOT NULL, 
`JoinDate` INT NOT NULL
);
insert INTO GroupMembership (GroupID, UserID, Role, JoinDate) values
 (601, 1, 'Admin', '2025-01-17'),
 (601, 3, 'Member', '2025-01-18'),
 (602, 1, 'Admin', '2025-01-17'),
 (604, 2, 'Admin', '2025-01-18'),
 (605, 5, 'Admin', '2025-01-19');
 
 select * from GroupMembership;