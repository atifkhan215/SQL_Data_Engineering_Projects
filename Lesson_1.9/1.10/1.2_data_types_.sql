Select 
table_name,
column_name,
data_type
FROm information_schema.columns
WHERE table_name = 'job_postings_fact';
