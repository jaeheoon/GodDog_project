/* #2. User 생성 - 껍데기만 만들어짐 */
CREATE USER goddog IDENTIFIED BY goddog;

-- 시스템 연결 권한 부여 - 로그인 할 수 있게끔 권한 부여
GRANT CREATE SESSION TO goddog;

-- 객체에 대한 권한 부여(sys가 bangry에게 hr스키마의 employees 테이블에 대한 CRUD 권한을 부여)
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees
TO goddog;

/* 롤(ROLE) : 여러 권한들의 묶음(내장 롤 / 사용자 정의 롤) */--------------------------------
/* #1. User에 내장 롤 부여 */
GRANT CONNECT, RESOURCE, DBA TO goddog;

/* #2. 사용자 정의 롤 생성 */
CREATE ROLE goddog_role;

/* #3. 시스템 권한과 객체 권한을 롤에 등록 */
GRANT CREATE SESSION TO goddog_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees TO goddog_role;

/* 시스템 권한과 객체 권한을 롤에 등록 */
GRANT CREATE USER TO goddog;
GRANT DROP USER TO goddog;
GRANT ALTER USER TO goddog;
GRANT INSERT ANY TABLE TO goddog;

-- ※ 모든 권한을 롤에 부여
GRANT ALL ON hr.employees TO goddog_role;

COMMIT;


/* User 삭제 */
DROP USER team CASCADE;


















