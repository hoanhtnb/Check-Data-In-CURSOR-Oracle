/*
//=======================================================
//https://github.com/hoanhtnb
//Twitter: @hoangtronghoan
//Facebook: facebook.com/ht.hoan

--Muc dich de kiem tra neu CURSOR khong co du lieu ta se tra ve 1 dong trang
--Rat nhieu truong hop ta can phai lam the
--Bla bla
//=======================================================   
*/    
IF (PV_REFCURSOR%ROWCOUNT = 0) THEN
BEGIN
    OPEN pv_refcursor 
    FOR
        SELECT   ''id,'' name,0 total FROM   DUAL;
EXCEPTION
    WHEN OTHERS
    THEN
        RETURN;
END;

END IF;
