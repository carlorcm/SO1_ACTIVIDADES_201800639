CREATE OR REPLACE FUNCTION API_TOKEN(PSECRET VARCHAR2) RETURN VARCHAR2 
IS
  VRESULT VARCHAR2(4000);
BEGIN
	SELECT UTL_RAW.CAST_TO_VARCHAR2(UTL_I18N.STRING_TO_RAW(STANDARD_HASH(PSECRET, 'MD5'), 'AL32UTF8')) INTO VRESULT from dual;
	RETURN VRESULT;
END API_TOKEN;