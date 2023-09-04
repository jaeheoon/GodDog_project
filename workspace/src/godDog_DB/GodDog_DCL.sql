/* #2. User ���� - �����⸸ ������� */
CREATE USER goddog IDENTIFIED BY goddog;

-- �ý��� ���� ���� �ο� - �α��� �� �� �ְԲ� ���� �ο�
GRANT CREATE SESSION TO goddog;

-- ��ü�� ���� ���� �ο�(sys�� bangry���� hr��Ű���� employees ���̺� ���� CRUD ������ �ο�)
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees
TO goddog;

/* ��(ROLE) : ���� ���ѵ��� ����(���� �� / ����� ���� ��) */--------------------------------
/* #1. User�� ���� �� �ο� */
GRANT CONNECT, RESOURCE, DBA TO goddog;

/* #2. ����� ���� �� ���� */
CREATE ROLE goddog_role;

/* #3. �ý��� ���Ѱ� ��ü ������ �ѿ� ��� */
GRANT CREATE SESSION TO goddog_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees TO goddog_role;

/* �ý��� ���Ѱ� ��ü ������ �ѿ� ��� */
GRANT CREATE USER TO goddog;
GRANT DROP USER TO goddog;
GRANT ALTER USER TO goddog;
GRANT INSERT ANY TABLE TO goddog;

-- �� ��� ������ �ѿ� �ο�
GRANT ALL ON hr.employees TO goddog_role;

COMMIT;


/* User ���� */
DROP USER team CASCADE;


















