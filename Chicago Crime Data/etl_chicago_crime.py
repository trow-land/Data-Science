import pandas as pd
from sqlalchemy import create_engine

# load data
csv_file = r"C:\Users\tom_r\Downloads\Crimes_-_2001_to_Present_20250306.csv" 
df = pd.read_csv(csv_file, parse_dates=["date", "updated_on"])

df["primary_type"] = df["primary_type"].astype("category")
df["description"] = df["description"].astype("category")
df["location_description"] = df["location_description"].astype("category")

# Convert bools
df["arrest"] = df["arrest"].astype(bool)
df["domestic"] = df["domestic"].astype(bool)

# Convert floats to int
df["district"] = df["district"].fillna(0).astype("Int16") 
df["ward"] = df["ward"].fillna(0).astype("Int16")
df["community_area"] = df["community_area"].fillna(0).astype("Int16")

# Convert lat/lon
df["latitude"] = df["latitude"].astype("float32")
df["longitude"] = df["longitude"].astype("float32")

# id to int
df["id"] = df["id"].astype("int64")


DB_USER = "postgres"
DB_PASSWORD = "-"  # populate when using
DB_HOST = "localhost" 
DB_PORT = "5432"
DB_NAME = "chicago_crime"

# DB engine
engine = create_engine(f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}")

# load
df.to_sql("crimes", engine, if_exists="append", index=False)

print(" ETL Process Completed!")
