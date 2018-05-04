insert into test_board (writer,title,content) values('user01','test title1','test content1')

insert into test_board (writer,title,content) values('user01','test title2','test content2');
insert into test_board (writer,title,content) values('user07','test title3','test content3');
insert into test_board (writer,title,content) values('user07','test title4','test content4');
insert into test_board (writer,title,content) values('user06','test title5','test content5');
insert into test_board (writer,title,content) values('user06','test title6','test content6');
insert into test_board (writer,title,content) values('user05','test title7','test content7');
insert into test_board (writer,title,content) values('user04','test title8','test content8');
insert into test_board (writer,title,content) values('user02','test title9','test content9');
insert into test_board (writer,title,content) values('user03','test title10','test content10');



select * from test_board;


select * from test_board WHERE ( writer like concat('%','01','%') ) limit 0, 10



select count(*) from test_board where title like '%title3%'