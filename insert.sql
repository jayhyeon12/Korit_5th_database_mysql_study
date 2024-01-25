use `db_study`;  #데이터베이스 선택 명령
# 두 개 이상의 매개변수를 PK로 설정하면 하나의 값이 같아도 다른 조합의 Key로 간주

insert into student_tb(student_Id, name, age, adr) values ('0', '김종현', '20', '부산 동래구');
insert into student_tb(adr, name, age, student_Id) values ('부산 동래구', '김재현', '20', '2');
insert into student_tb(name, adr) values ('김재현', null);
insert into student_tb values (0, '김진우', null, null);

insert into student_tb values (0, '김진우', null, null), (0, '김우진', null, null);

# 줄바꿈 기준
/* (명령어) (테이블명)
	(key 값)
values
	(value 값)
    (value 값)
    ...
*/

insert into student_tb 
	#(생략된 key 값)
values 
	(0, '김진우', null, null), 
	(0, '김우진', null, null);