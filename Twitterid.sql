
--Duplicated Rows
SELECT 
    SUBSTRING(e_LOB_EVENT_DETAILS,
        LOCATE('twitterId', e_LOB_EVENT_DETAILS, 1) + 12,12) AS ID
FROM
    suspect
GROUP BY ID
HAVING COUNT(*) > 1


--TwitterId per date
SELECT 
    *
FROM
    (SELECT 
        SUBSTRING(e_LOB_EVENT_DETAILS, LOCATE('twitterId', e_LOB_EVENT_DETAILS, 1) + 12, 12) AS ID,
            w_DSC_COUPON_NUMBER,
            w_DSC_WINNER,
            e_DT_CREATED
    FROM
        suspect) AS T1
WHERE
    T1.ID IN ('2269153074"}' , 
              '2270681935"}',
              '2453812591"}',
              '3112443231"}',
			  '3169559289"}',
              '3188935955"}',
              '3196083454"}',
              '3213307617"}',
			  '3214692645"}',
              '73451964"},"',
              '96587098"},"')
GROUP BY ID , e_DT_CREATED