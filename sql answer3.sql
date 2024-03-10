SELECT user_id, training_id, training_date, COUNT(*) as times_taken  
FROM training_details         
GROUP BY user_id, training_id, training_date            
HAVING COUNT(*) > 1             
ORDER BY 
    training_date DESC,      
    user_id;                 
