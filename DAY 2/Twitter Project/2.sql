use tweet;
CREATE TABLE posts (
    post_id INT NOT NULL PRIMARY KEY,
    post VARCHAR(280) NOT NULL,
    poster_id INT not null,
    foreign key(poster_id)references users(user_id)
);

insert into posts(post_id,post,poster_id)values(1,"This is me complaining on twitter",2);
insert into posts(post_id,post,poster_id)values(2,"This is no one ",36);

select*from posts;
select post from posts where poster_id=2;