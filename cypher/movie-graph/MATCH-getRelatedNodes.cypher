// Get all movies directed by Oliver Stone

MATCH (director { name: 'Oliver Stone' })--(movie)
RETURN movie.title