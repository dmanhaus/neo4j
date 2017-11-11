// Show all movies and actors up to 4 hops away from Kevin Bacon

MATCH (bacon:Person {name:"Kevin Bacon"})-[*1..4]-(hollywood)  // [*1..4] indicates variable length pattern for relationshipsgit 
RETURN DISTINCT hollywood

// Find the shortest from Kevin Bacon to Meg Ryan

MATCH p=shortestPath(
  (bacon:Person {name:"Kevin Bacon"})-[*]-(meg:Person {name:"Meg Ryan"})
)
RETURN p