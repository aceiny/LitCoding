SELECT p.firstName,p.lastName , ad.city,ad.state
FROM Person p 
LEFT JOIN Address ad
ON p.personId = ad.personId;