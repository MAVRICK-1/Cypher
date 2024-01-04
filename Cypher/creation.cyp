## create new node 
create (amit:person{name:"amit"})-[:friend]->(vicky:person{name:"vicky"})<-[:friend]-(viswa:person{name:"viswa"})-[:friend]->(jenifer:person{name:"jenifer"})<-[:friend]-(roni:person{name:"roni"})-[:friend]->(vicky)<-[:friend]-(rahul:person{name:"rahul"})

match (n:person{name:"roni"}),(c:person{name:"viswa"}) #find the mutual friends 
with [(n)--(b)--(c) where b:person|b.name] as names
unwind names as Mutual_Friends
return  Mutual_Friends

create (n:person{name:"roni"})-[:friend]->(a:person{name:"vicky"})-[:friend]->
(b:person{name:"john"})-[:friend]->
(c:person{name:"jenifer"})-[:friend]->
(d:person{name:"viswa"})<-
[:friend]-(e:person{name:"amit"})
<-[:friend]-(f:person{name:"rahul"})
<-[:friend]-(n)

create
    (m:player{name:"Messi"})-
    [:played]->
    (c:country{name:"Argentina"})
    <-[:played]-
    (mar:player{name:"Maradona"}) #creating a node with realtion

