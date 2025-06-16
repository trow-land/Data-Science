# Table: CHICAGO_CRIME_CLEANED

This table contains cleaned and structured crime records from the original raw dataset. All fields have been renamed and typed.

| Column Name     | Type      | Description                                         |
|------------------|-----------|-----------------------------------------------------|
| `incident_id`     | INT       | Unique identifier for the crime event               |
| `case_number`     | STRING    | Official case number used by police                 |
| `datetime`        | TIMESTAMP | Date and time of the incident                       |
| `crime_type`      | STRING    | High-level category of the offence                  |
| `description`     | STRING    | Detailed classification of the offence              |
| `location_type`   | STRING    | Where the crime occurred (e.g. STREET, RESIDENCE)   |
| `is_arrested`     | BOOLEAN   | Whether an arrest was made                          |
| `is_domestic`     | BOOLEAN   | Whether the incident was domestic-related           |
| `district`        | INT       | Police district number                              |
| `ward`            | INT       | Ward number (political boundary)                    |
| `latitude`        | FLOAT     | Latitude of the event location                      |
| `longitude`       | FLOAT     | Longitude of the event location                     |
