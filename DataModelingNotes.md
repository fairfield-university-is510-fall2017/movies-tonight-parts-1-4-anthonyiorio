# Data Modeling Notes

## Normalization Analysis

### 1NF Conversion
For this step, we must:
* Identify or add a primary key
* Remove NULLs
* Identify dependencies

TABLE(TName, Location, Phone, <u>MTitle</u>, <u>ShowTime</u>, Rating, CCode, CName)

To convert to 1NF, I'd first eliminate any NULLs, if there are any. I could not find any from my initial analysis of the data. Identifying the Primary Key would be the next step, and given that I was not able to identify a primary key, a unique record locator should be established for each entry. I recommend using a composite key of the ShowTime and MTitle in order to create a unique Primary Key, as those columns taken in consideration with each other are not likely to be repeated.

### 2NF Conversion
For this step, we must:
* Already be in 1NF
* Eliminate partial dependencies by making new tables, if needed
* Reassign the dependent attributes

The naming is as follows:
determinant --> dependent

TName --> (Location, Phone)
MTitle --> (Rating)

TABLE(TName, <u>MTitle</u>, <u>ShowTime</u>, CCode, CName)

### 3NF Conversion
For this step, we must:
* Already be in 2NF
* Eliminate transitive dependencies by making new tables, if needed
* Reassign the non-PK determinants and dependants

The naming is as follows:
determinant --> dependent

ShowTime

### BCNF Conversion
For this step, we must:
* Already be in 3NF
* Ensuring every determinant is a Candidate Key

The naming is as follows:
determinant --> dependent


## Entity Relationship Model
The entity relationship model is displayed below.
![This is the entity relationship model. If you can't see the diagram, either images have been disabled in your browser, or you are reading this using an accessibility service or assistive technology.](MoviesTonightERD.png)
