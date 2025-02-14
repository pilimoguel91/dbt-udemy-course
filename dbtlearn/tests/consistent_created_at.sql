SELECT
    *
FROM
    {{ ref('dim_listings_cleansed') }} listings
LEFT JOIN
    {{ ref('fct_reviews') }} reviews ON listings.listing_id = reviews.listing_id
WHERE listings.created_at >= reviews.review_date