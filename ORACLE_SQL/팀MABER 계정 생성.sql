--계정 생성
CREATE USER TEAM_NABER IDENTIFIED BY NABER12;
--권한 부여
grant connect, resource, dba to TEAM_NABER;
