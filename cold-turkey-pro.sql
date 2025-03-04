UPDATE settings 
SET value = json_set(
    value,
    '$.additional.proStatus',
    'pro'
)
WHERE key = 'settings';

-- Show the new status
SELECT json_extract(value, '$.additional.proStatus') as current_status 
FROM settings 
WHERE key = 'settings';
