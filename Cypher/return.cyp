MATCH (n:Label)-[r]->(m:Label) #return in decending order
RETURN n AS node, r AS rel
ORDER BY n.name DESC #return on order of n.name


# return as alias
MATCH (n:Label)-[r]->(m:Label)
RETURN n AS node, r AS rel


#return distinct node
MATCH (n:Person)-[r:KNOWS]-(m:Person)
RETURN DISTINCT n AS node

