SELECT 
	v.GroupID, 
    v.CompanyName, 
    COUNT(*)
FROM vendors v
JOIN cb_vendorinformation c ON v.GroupID = c.GroupID
GROUP BY v.CompanyName, v.GroupID
ORDER BY COUNT(*), v.GroupID ASC;
