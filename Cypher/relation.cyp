## Basic realtion
match (r)-[p]->(c) return type (p) # will  return all the relation type

match (r)-[p]-(c) return (r),type(p),(c)


match (n:person{name:"roni"}),(c:person{name:"viswa"}) #find the mutual friends of a and b node will return a list
with [(n)--(b)--(c) where b:person|b.name] as names
unwind names as Mutual_Friends
return  Mutual_Friends
