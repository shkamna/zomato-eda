-- Q2: Average rating by price bucket
SELECT cost_bucket, 
       ROUND(AVG(rate), 2) AS avg_rating, 
       COUNT(*) AS num_restaurants
FROM zomato
GROUP BY cost_bucket
ORDER BY avg_rating DESC;

-- Q3: Underserved neighbourhoods (high votes, low rating)
SELECT location,
       ROUND(AVG(rate), 2) AS avg_rating,
       ROUND(AVG(votes), 2) AS avg_votes,
       COUNT(*) AS num_restaurants
FROM zomato
GROUP BY location
HAVING COUNT(*) >= 10
ORDER BY avg_rating ASC;

-- Q5: Top 10 locations by avg rating (min 50 votes, min 10 restaurants)
SELECT location,
       ROUND(AVG(rate), 2) AS avg_rating,
       COUNT(*) AS num_restaurants
FROM zomato
WHERE votes > 50
GROUP BY location
HAVING COUNT(*) >= 10
ORDER BY avg_rating DESC
LIMIT 10;