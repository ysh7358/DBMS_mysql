create table tbl_reply(
	reply_number int unsigned auto_increment primary key,
	reply_content varchar(500),
	reply_date datetime default now(),
	member_number int unsigned,
	board_number int unsigned,
	constraint fk_reply_member foreign key(member_number)
	references tbl_member(member_number) on delete cascade,
	constraint fk_reply_board foreign key(board_number)
	references tbl_board(board_number) on delete cascade
);

select * from tbl_reply;