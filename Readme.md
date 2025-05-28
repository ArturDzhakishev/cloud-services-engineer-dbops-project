# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

ssh -i C:\Users\artur\.ssh\vm_access user@158.160.98.215

psql "postgresql://user:password@127.0.0.1:5432/store_default"
psql "postgresql://dbuser:123456@localhost:5432/store"

CREATE DATABASE store;

CREATE USER dbuser WITH PASSWORD '123456';
GRANT ALL PRIVILEGES ON DATABASE store TO dbuser;
GRANT ALL ON SCHEMA public TO user_DBops;
