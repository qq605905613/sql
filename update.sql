  UPDATE 
    mmgm.TBL_MMGM_AUDIT_TASK  SET  COMMISSION_TP ='M4' WHERE COMMISSION_TP IN (
  
 select COMMISSION_TP from mmgm.TBL_MMGM_AUDIT_TASK  a left join dicdat.TBL_DICDAT_INS_CATA  b on a.ACQ_INS_ID_CD =b.ROOT_INS_CD 
 where b.INS_CATA_3RD_ID not  in ('24','25') and b.ROOT_INS_CD not in ('0848020000','0848021000','0848023320','0848025800','0848025840','0848210000') and a.COMMISSION_TP='M6' 
 and a.mchnt_tp in ('8062','8011','8021','8031','8041','8042','8049','8099','8211','8220','8351','8241','8398')
  )
