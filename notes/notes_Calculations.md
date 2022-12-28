# Definitions for custom measures

## Search:
- Queries from same IP address, conducted within 30 minutes of prior query
- Find use success of the final query in search

## Follow-ups:
- Query that has the Referring URL of an FAQ
- Need Public Views and Queries From

Both measures seem to require QuerySpy data primarly with a join to FAQ_list for FAQ names and a join to FAQ_views for in-date views. These may not work since SpringShare changed QuerySpy to Query Analyzer, removing visitor IP addresses.