// Get all nodes connected with the Person 'OliverStone' that are labeled 'Movie'
// To constrain your pattern with labels on nodes, you add it to your pattern nodes, using the label syntax.

MATCH (:Person { name: 'Oliver Stone' })--(movie:Movie)
RETURN movie.title