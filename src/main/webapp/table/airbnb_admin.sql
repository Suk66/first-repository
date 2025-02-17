-- air_bnb 테이블 만들기


create table airbnb_admin(
	admin_id varchar2(50) primary key,		-- 관리자 아이디.
	admin_pwd varchar2(50) not null,		-- 관리자 비밀번호.
	admin_name varchar2(50) not null,		-- 관리자 이름.
	admin_email varchar2(100),				-- 관리자 이메일.
	admin_phone varchar2(20),				-- 관리자 연락처.
	admin_date date							-- 관리자 등록일자.
);

insert into airbnb_admin
	values('admin', 'admin1234', '관리자1', 'admin@gmail.com', '010-2545-5790', sysdate);