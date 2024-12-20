REM CONNECT SYSTEM/MANAGER;

DROP USER BD_XX CASCADE;

CREATE USER BD_XX
            PROFILE DEFAULT
            IDENTIFIED BY BD_XX
            DEFAULT TABLESPACE USERS
            TEMPORARY TABLESPACE TEMP;

GRANT CONNECT, RESOURCE, CREATE SESSION TO BD_XX;

REM CONNECT BD_XX/BD_XX;