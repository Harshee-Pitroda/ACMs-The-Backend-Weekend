use tweet;
show tables;
CREATE TABLE followers (
    beingFollowed_id INT NOT NULL,
    follower_id INT NOT NULL,
    foreign key(beingFollowed_id)references users(user_id),
    foreign key(follower_id)references users(user_id)
);
describe followers;

insert into followers(beingFollowed_id,follower_id) Values(2,36);
insert into followers(beingFollowed_id,follower_id) Values(2,89);
insert into followers(beingFollowed_id,follower_id) Values(89,36);
select follower_id from followers where  beingFollowed_id=2;
select beingFollowed_id from followers where follower_id=36;