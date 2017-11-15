// // assert correct line count
// LOAD CSV WITH HEADERS FROM "file:///findSchoolDistrict.csv" AS line
// RETURN count(*);

// // check first few raw lines
// LOAD CSV FROM "file:///findSchoolDistrict.csv" AS line WITH line
// RETURN line
// LIMIT 5;

// // check first 5 line-sample with header-mapping
// LOAD CSV WITH HEADERS FROM "file:///findSchoolDistrict.csv" AS line WITH line
// RETURN line
// LIMIT 5;

// District, Schools, Grades

// Uniqueness Constraints
CREATE CONSTRAINT ON (d:District) ASSERT d.name IS UNIQUE;
CREATE CONSTRAINT ON (s:School) ASSERT s.name IS UNIQUE;
CREATE CONSTRAINT ON (g:Grade) ASSERT g.name IS UNIQUE;

// Seed Grades
CREATE (PreK:Grade {name: "Pre Kindergarten"});
CREATE (K:Grade {name: "Kindergarten"});
CREATE (Grade1:Grade {name: "Grade 1"});
CREATE (Grade2:Grade {name: "Grade 2"});
CREATE (Grade3:Grade {name: "Grade 3"});
CREATE (Grade4:Grade {name: "Grade 4"});
CREATE (Grade5:Grade {name: "Grade 5"});
CREATE (Grade6:Grade {name: "Grade 6"});
CREATE (Grade7:Grade {name: "Grade 7"});
CREATE (Grade8:Grade {name: "Grade 8"});
CREATE (Grade9:Grade {name: "Grade 9"});
CREATE (Grade10:Grade {name: "Grade 10"});
CREATE (Grade11:Grade {name: "Grade 11"});
CREATE (Grade12:Grade {name: "Grade 12"});

// Seed District
LOAD CSV WITH HEADERS 
FROM "file:///findSchoolDistrict.csv" AS line 
WITH line 
WHERE line.OrganizationType = 'Public School Districts'

CREATE (district:District{name: line.OrganizationName})

// Seed Schools
LOAD CSV WITH HEADERS 
FROM "file:///findSchoolDistrict.csv" AS line 
WITH line 
WHERE line.District IS NOT NULL AND line.OrganizationType <> 'Public School Districts'

CREATE (school:School {name: line.OrganizationName})


