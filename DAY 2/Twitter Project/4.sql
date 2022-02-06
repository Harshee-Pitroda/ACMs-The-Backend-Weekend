use tweet;
CREATE TABLE Comments (
    tweet_id INT NOT NULL,
    commenter_id INT NOT NULL,
    comment VARCHAR(280) NOT NULL,
    foreign key(tweet_id)references posts(post_id),
    foreign key(commenter_id)references users(user_id)
);

insert into comments(tweet_id, commenter_id, comment)values(1,2,"This is me complaining on twitter once again");
insert into comments(tweet_id, commenter_id, comment)values(2,89,"This is me coolrick35 go follow me");
select comment from comments where commenter_id=2 ;
select comment from comments where tweet_id=1;
describe comments;