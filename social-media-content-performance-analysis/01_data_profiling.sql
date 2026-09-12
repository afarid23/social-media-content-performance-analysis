SELECT *
FROM social_media_posts_raw
WHERE post_id IN (
    SELECT post_id
    FROM social_media_posts_raw
    GROUP BY post_id
    HAVING COUNT(*) > 1
)
ORDER BY post_id, post_published_at
LIMIT 20;