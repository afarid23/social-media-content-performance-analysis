SELECT content_category, COUNT(*) AS total_posts
FROM social_media_posts_clean
GROUP BY content_category
ORDER BY total_posts DESC;