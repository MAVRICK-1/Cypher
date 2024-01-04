#creating a unique property id for comp which will be unique
create constraint for  (a:Company) require  a.id is unique


#delete the constrain 
Drop constraint for  (a:Company) require  a.id is unique

