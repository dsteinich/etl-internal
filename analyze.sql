show user;
select * from global_name;
set timing on;
set serveroutput on;
whenever sqlerror exit failure rollback;
whenever oserror exit failure rollback;
select 'analyze dw tables start time: ' || systimestamp from dual;

begin
	etl_helper_main.analyze_tables('nwis');
end;
/

select 'analyze dw tables end time: ' || systimestamp from dual;
