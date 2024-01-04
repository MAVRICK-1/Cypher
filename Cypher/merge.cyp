MERGE (n:person)  #if it exist it will create if it is not there it will not create



#created a node
merge (a:country{name:"Sydney",country:"Australia"}) return a.country
merge (a:country{name:"Sydney"}) return a.country #this will return austrlia because its already exist
merge (a:country{name:"Sydney",play:"cricket"}) return a.country #it will create a  new node and return null 
it will check label property if the same propert exist it will return null



match (A:player) merge (b:country{name:A.played_for}) return b.name
#checks for any matching node with label player and return new node with label
country for every match found with name property which drived the value from existing node


#create a timestamp and set it
merge (n:player{name:"messi"}) set n.creation_time=timestamp() return n.creation_time as time #for single property
merge (n:player{name:"messi"}) set n.creation_time=timestamp(),n.country="newzi" return n.creation_time as time,n.country as country

