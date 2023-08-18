--회원 추가 
INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'jihun', 'ji123', 'jihun@test.com', '박지훈'
    ,'1992-01-28', 'SKT 알뜰폰', '남성', '내국인', '010-4930-2078'
    , 'TRUE', SYSDATE, SYSDATE);
    
INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'hyunsoo', 'hyunsoo123', 'hyunsoo@test.com', '이현수'
    ,'1994-12-25', 'SKT', '남성', '내국인', '010-6345-1062'
    , 'TRUE', SYSDATE, SYSDATE);
    
INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'chanu', 'chanu123', 'chanu@test.com', '임찬우'
    ,'1996-12-21', 'KT', '남성', '내국인', '010-3206-3062'
    , 'TRUE', SYSDATE, SYSDATE);

SELECT MNO, ID, PWD, EMAIL, NAME 
FROM MEMBERS;

INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'test', 'test12', 'test@test.com', '테스트'
    ,'1990-01-01', 'KT', '남성', '내국인', '010-0001-0001'
    , 'TRUE', SYSDATE, SYSDATE);
 
INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'girgir1', 'test12', 'girl@test.com', '테여성'
    ,'1995-02-04', 'KT', '여성', '내국인', '010-0002-0002'
    , 'TRUE', SYSDATE, SYSDATE);

INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'a123', 'a111*', 'a123@test.com', '테스트'
    ,'2000-02-05', 'KT', '남성', '내국인', '010-0003-0003'
    , 'TRUE', SYSDATE, SYSDATE);
    
INSERT INTO MEMBERS
VALUE(MNO, ID, PWD, EMAIL, NAME, BIRTHDAY, TELECOM
    , GENDER, NATIONALITY, PHONENUMBER, CERTNAME, CRE_DATE, MOD_DATE)
VALUES(MEMBERS_NO_SEQ.NEXTVAL, 'dd', 'dd', 'dd@test.com', '테스트 계정'
    ,'2002-11-11', 'KT', '남성', '내국인', '010-5555-5555'
    , 'TRUE', SYSDATE, SYSDATE);

--회원 조회 
select name, email, mno
from members;





--게시글 추가
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', '오늘 태풍', 'chanu@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 3
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '박지훈', '네이버 입사', 'jihun@test.com'
, '네이버 회원가입 따오면 입사 할수 있다 근데 나는 지금 따옴 굳', '1234', SYSDATE, SYSDATE, 1
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '이현수', '커담은 진리', 'hyunsoo@test.com'
, '커피와 담배 조합 발견한 사람은 상 줘야된다 너네는 이런거 배우지 마라', '1234', SYSDATE, SYSDATE, 2
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '박지훈', '오늘은 2000년', 'jihun@test.com'
, '종말은 오지 않았다.', '1234', '2000-01-01', '2006-07-01', 1
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '이현수', '오 뭐 먹', 'hyunsoo@test.com'
, '제곧네', '1234', '2005-03-03', '2006-05-05', 2
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', '성지 순례', 'chanu@test.com'
, '성지 순례 왔습니다.', '1234', '2005-06-06', '2020-01-01', 3
);

INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '박지훈', '오늘 태풍', 'jihun@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 1
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '이현수', '오늘 태풍', 'hyunsoo@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 2
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', '오늘 태풍', 'chanu@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 3
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '오늘 태풍오늘 태풍오늘 태풍오늘 태풍', 'test@test.com'
, '이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?이거는 어디까지 노출이 될까?', '1234', SYSDATE, SYSDATE, 4
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트 계정', '오늘 태풍', 'dd@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 7
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테여성', '오늘 태풍', 'girl@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 5
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '오늘 태풍', 'a123@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 6
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트 계정', '오늘 태풍', 'dd@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 7
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '박지훈', '오늘 태풍', 'jihun@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 1
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '이현수', '오늘 태풍', 'hyunsoo@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 2
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', '오늘 태풍', 'chanu@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 3
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '최대 글자 테스트', 'test@test.com'
, '테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트', '1234', SYSDATE, SYSDATE, 4
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '오늘 태풍', 'a123@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 6
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테여성', '오늘 태풍', 'girl@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 5
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '오늘 태풍', 'a123@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 6
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트 계정', '오늘 태풍', 'dd@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 7
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '박지훈', '오늘 태풍', 'jihun@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 1
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '이현수', '오늘 태풍', 'hyunsoo@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 2
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '임찬우', '오늘 태풍', 'chanu@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 3
);
INSERT INTO BOARD
VALUE(BNO, USER_NAME, TITLE, USER_EMAIL, BOARD_CONTENTS, MOD_PWD, CRE_DATE, MOD_DATE, MNO)
VALUES(BOARD_NO_SEQ.NEXTVAL, '테스트', '오늘 태풍', 'test@test.com'
, '오늘은 태풍 카눈이 올거 같은 느낌이다 근데 시원해서 기분이 좋다.', '1234', SYSDATE, SYSDATE, 4
);

-- 게시글 조회
SELECT *
FROM BOARD;



commit;