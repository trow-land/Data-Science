CREATE TABLE etl.load_history (
filename text,
file_row_count int,
loaded_row_count int,
load_started_at timestamp,
load_finished_at timestamp,
status boolean,
error_message text

)
