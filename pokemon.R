read.csv("/Users/samruddhikale/Desktop/Dataset/pokemon-2.csv")->pokemon2
View(pokemon2)

#tabulation of categorical columns

table(pokemon2$is_legendary)

table(pokemon2$generation)

#min & max

max(pokemon2$attack)

min(pokemon2$attack)

#checking missing values

is.na(pokemon2$abilities) #it will return true/false values

sum(is.na(pokemon2$abilities)) #it will return no values
 

#colnames - names of all columns

colnames(pokemon2)
 
colnames(pokemon2)=="type1"   #it retuen boolean values

#renaming columns

colnames(pokemon2)[colnames(pokemon2) == "type1"]<-"primary_type"
View(pokemon2)


#Basic Data Manupilation
#filter

##here we need to install dplyr library

pokemon2 %>% filter(pokemon2$primary_type=="grass")->grass_pokemon
View(grass_pokemon)

#mean
mean(grass_pokemon$speed)

#here we need to install ggplot2 library
ggplot(data=grass_pokemon,aes(x=type2),fill=as.factor(type2))+geom_bar()