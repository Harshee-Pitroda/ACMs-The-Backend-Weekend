use tweet;
CREATE TABLE Likes (
    tweet_id INT NOT NULL,
    commenter_id INT NOT NULL,
    foreign key(tweet_id)references posts(post_id),
    foreign key(commenter_id)references users(user_id)
);
describe likes;
insert into likes(tweet_id, commenter_id) Values(1,2);
select count(commenter_id) from likes where tweet_id=1;
select *from likes;