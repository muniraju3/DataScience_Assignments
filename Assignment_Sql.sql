
##1. lINKEDIN TABLE
use muniraju;
select * from Linkedin;

select id from Linkedin where technology='DS' and (select ID FROM Linkedin where technology ="pYTHON" 
                                              AND (select ID FROM Linkedin where technology ="SQL")
                                              AND(select ID FROM Linkedin where technology ="POWER BI"));
                                              
                                              
                                              ##Ecommere and facebook
                                              
create table product_info(pr_id int, product_name varchar(50));
select * from product_info;
insert into product_info(pr_id,product_name) values(1003,"Education")
                        
create table product_info_likes(user_id int,pr_id int,liked_date date);
select * from product_info_likes;
INSERT INTO product_info_likes (user_id, pr_id, liked_date) VALUES (2, 1003, '2023-08-18');

SELECT product_info.pr_id
FROM product_info
left JOIN product_info_likes  ON product_info.pr_id = product_info_likes.pr_id
WHERE product_info_likes.liked_date IS NULL;

