# Data Modeling Notes

## Normalization Analysis

### 1NF Conversion
For this step, we must:
* Identify or add a primary key
* Remove NULLs
* Identify dependencies

TABLE(TName, Location, Phone, MTitle, ShowTime, Rating, CCode, CName)

"To convert to 1NF, I'd first eliminate any NULLs, if there are any. I could not find any from my initial analysis of the data. Identifying the Primary Key would be the next step, and given that I was not able to identify a primary key, a unique record locator should be established for each entry. I recommend using a composite key of the CName, ShowTime, and MTitle in order to create a unique Primary Key, as those columns taken in consideration with each other are not likely to be repeated."

### 2NF Conversion
For this step, we must:
* Already be in 1NF
* Eliminate partial dependencies

### 3NF Conversion


### BCNF Conversion


## Entity Relationship Model
