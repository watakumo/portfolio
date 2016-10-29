


//테이블 삭제한 후 생성할 것!!
create table member(
	memberId 	varchar2(20)	primary key,
	password	varchar2(20)	not null,
	name		varchar2(20)	not null,
	gender		varchar2(1)		default '0',
	birth		date 			not null,
	email		varchar2(50)	not null,
	phone		varchar2(20) 	not null
	
);

create table favoriteMember(
	memberId 				varchar2(20),	
	constraint fk_favoriteMemeber_memberId foreign key(memberId) references member(memberId),
	acceptor 				varchar2(20) 	not null,
	favoriteCheck			varchar2(1)		default '0',
	requestTimeStamp		date			not null,
	acknowledgeTimeStamp	date
);

create table resume(
	resumeId		varchar2(20)	primary key,
	memberId		varchar2(20),
	constraint fk_resume_memberId foreign key(memberId) references member(memberId),
	originalImgFile	varchar2(200),
	savedImgFile	varchar2(50)
);

create table pr(
	prId 			varchar2(20)	primary key,
	resumeId		varchar2(20),
	constraint fk_pr_resumeId foreign key(resumeId) references resume(resumeId),
	prTitle			varchar2(100),
	prContent		varchar2(2000),
	prRegdate		date
);

create table academicBg(
	academicBgId	varchar2(20)	primary key,
	resumeId		varchar2(20),
	constraint fk_academicBg_resumeId foreign key(resumeId) references resume(resumeId),
	adminssionYear	varchar2(20),
	graduationYear	varchar2(20),
	schoolName		varchar2(50),
	major			varchar2(50),
	degree			varchar2(20),
	remarks			varchar2(20)		
);

create table career(
	careerId		varchar2(20)	primary key,
	resumeId		varchar2(20),
	constraint fk_career_resumeId foreign key(resumeId) references resume(resumeId),
	joinYear		varchar2(20),
	retirementYear	varchar2(20),
	companyName		varchar2(50),
	businessType	varchar2(20),
	department		varchar2(50),
	position		varchar2(20)
);

create table certificate(
	certificateId	varchar2(20)	primary key,
	resumeId		varchar2(20),
	constraint fk_certificate_resumeId foreign key(resumeId) references resume(resumeId),
	year			varchar2(20),
	month			varchar2(20),
	certificateName	varchar2(50),
	remarks			varchar2(20)
);

create table projectCareer(
	projectCareerID		varchar2(20)	primary key,
	resumeId		varchar2(20),
	constraint fk_projectCareer_resumeId foreign key(resumeId) references resume(resumeId),
	projectName			varchar2(50),
	developmentPeriod	varchar2(50),
	duration			varchar2(20),
	language			varchar2(20),
	dbos				varchar2(20),
	etc					varchar2(20)
);

insert into member values('lsh', '1234', '이수현', '0', '1992-02-03', 'tooona@naver.com', '010-6486-7621');
insert into member values('kdb', '1234', '김디비', '0', '1989-02-03', 'kdb@naver.com', '010-6486-7621');
insert into member values('jyp', '1234', '박진영', '0', '1967-02-03', 'jyp@naver.com', '010-6486-7621');
insert into member values('kss', '1234', '김삼성', '1', '1991-02-03', 'samsung@naver.com', '010-6486-7621');
insert into member values('admin', '1234', '김삼성', '1', '1991-02-03', 'samsung@naver.com', '010-6486-7621');

//테이블 삭제 (안되면 밑에서 부터 차례대로 삭제!!)
drop table member;
drop table favoriteMember;
drop table resume;
drop table academicBg;
drop table career;
drop table certificate;
drop table projectCareer;

//데이터 삭제 (안되면 밑에서 부터 차례대로 삭제!!)
delete from  member;
delete from  favoriteMember;
delete from  resume;
delete from  academicBg;
delete from  career;
delete from  certificate;
delete from  projectCareer;
//

select * from career
select * from member
select * from resume;
select * from academicbg;

insert into career values (
 			'member64000001', 
 			null, 
 			null, 
 			null, 
 			null, 
 			null, 
 			null, 
 			null
 		)
select * from career 

//삽입과 수정이 동시에 되는 구문
MERGE INTO career A
	USING (
		select 
		'member64000006' careerId, 
		null resumeId,
		null joinYear, 
		null retirementYear, 
		null companyName, 
		null businessType, 
		null department, 
		null position
		from dual
		) B
		DELETE WHERE (select * )
	ON (A.careerId = B.careerId)
	WHEN MATCHED THEN
		update set
			joinYear = null,
 			retirementYear = null,
 			companyName = null,
 			businessType = null,
 			department = null,
 			position = null
 	WHEN NOT MATCHED THEN
 		INSERT (A.careerId, A.resumeId, A.joinYear, A.retirementYear, A.companyName, A.businessType, A.department, A.position) 
 		VALUES(
 			'member64000006', 
 			null, 
 			null, 
 			null, 
 			null, 
 			null, 
 			null, 
 			null
 		);
 		