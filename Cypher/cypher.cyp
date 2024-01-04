MATCH (n) detach DELETE (n) #deletion of node

#important return clause

match (a)-[b]->(r) RETURN  type(r) #return the type of relationship

match (n:person) return n.property #returns the property of the node

match (n)-[r]->(a) return * #everything will be return


with ["Rishi","Messi","Argentina"]AS a
unwind a as name
with name
return name in ["Rishi","Messi","Argentia"] ## check the list name will return bollean expression



match (n:friend)   #if else statement type
return n.name,
case
when n.age<18
then "Not eligible to vote"
when n.age>25
then "too old nigga"
else 'yo can vote babe'
end as result


match  (a)--(b) return a,b #same as (a)-[]-(b) doesnt care about relationship
match   (a)-->(b) return a,b #same as (a)-[]->(b)



match(n) where n:player return n.name   #will return the name containing player label only

match(n) return n.name  #will return all the nodes having name property


match (n:player{name:"Messi"}) return [(n)-->(p) where p:country|p.name] as result  # will return the result name property having relation with n and having a "team" as peroperty


match (n:player{name:"Messi"})
unwind [(n)-->(p) where p:country|p.name] as teams
with teams 
return teams in ["brazil","Argentina","Protugal","Russia"] #this will check and return the bollean values that the team is present in the list or not one by one

"This Can be furture modified to"

match (n:player{name:"Messi"})
unwind [(n)-->(p) where p:country|p.name] as teams
with teams
where teams in ["brazil","Argentina","brazil"]
return teams
#will return the team present in the list


#Return  AS OPTIONAL COUNT

match (n) Return n.name as name #alia

match (n) Return count(n) # return the number


match (n:person) return n # return node containing  person label containing



## return
match (n:person) with  [(n)-->(p) where p:person|p.name] AS name
unwind name as names
return names,count(names) #count(name) count the indegree
##return number of names and names


## return
match (n:person) with  [(n)-->(p) where p:person|n.name] AS name
unwind name as names
return names,count(names) #count(name) count the out degree
##return number of names and names



match (n:person{name:"roni"}),(c:person{name:"viswa"}) 
with [(n)--(b)--(c) where b:person|b.name] as names 
unwind names as Mutual_Friends
return  Mutual_Friends




#will return the number of possible path between two nodes
match (n:person{name:"roni"}),(b:person{name:"viswa"})with [(n)-[:friend*1..]->(b)|True] as numbers
unwind numbers as number 
return count(number)