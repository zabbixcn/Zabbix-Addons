SELECT CASE WHEN COUNT(1) > 0 THEN 'FAILED' ELSE 'SUCCESSFUL' END 
  FROM zabbix_housekeeper
 WHERE status <> 'S';
