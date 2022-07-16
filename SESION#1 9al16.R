Arithmetic with R

```{r}
5 + 5 -3
10-2
3*5
(5+5)/2
28%%6

```

Variable assignment

```{r}
x <- 10
x

y <- 9

x+y
result <- x-y
result


```

Basics data types in R

```{r}

my_numeric <- 423.80
my_character <- "universe"
my_logical <- FALSE  

class(my_numeric)
class(my_character)
class(my_logical)

```


Crate a vector

```{r}

numeric_vector <- c(1,10,49)
numeric_vector

character_vector <- c("a","b","c")

boolean_vector <- c(TRUE,FALSE,TRUE)

character_vector
boolean_vector


poker_vector <- c(140,-50,-20,-120,240)
roulette_vector <- c(-24,-50,10,350,10)

poker_vector

```

Naming a vector

```{r}

names(poker_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
poker_vector

names(roulette_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
roulette_vector

days <- c("Monday","Tuesday","Wednesday","Thursday","Friday")

names(poker_vector) <- days
poker_vector

```

Selection by comparison

```{r}
age <- 21
age >= 18

selection_vector <- poker_vector > 0
selection_vector

poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

```
Calculating

```{r}
x_vector <- c(4,7,9)
y_vector <- c(12,45,78)

result_vector <- y_vector + x_vector
result_vector

#VECTOR SELECTION

poker_vector [3]
poker_vector [C(2,3,4)]


#MATRICES

matrix(1:8,nrow=1, byrow=F, ncol=8
       )


#ejercicio, se crearan tres vectores
new_hope <- c(460.998,314.4)
emp_strk <- c(290.475,247.900)
returnj <- c(309.306,165.8)
#ahora se trataran de unir los tres vectores en una sola coleccion
box_office <- c(new_hope,emp_strk,returnj)
box_office
#Construir matriz, dejando valores de pelicula en fila y columnas datos
star_wars<- matrix(box_office,byrow=T,nrow=3)
star_wars
#nombrando filas y columnas

columnas <- c("USA","AFUERA")
filas <- c("NEW HOPE","EMPIRE STRIKES BACK","RETURN OF THE JEDI")
colnames(star_wars)<- columnas
rownames(star_wars)<-filas
star_wars

#SUMANDO FILAS/agregando filas col
rowSums(star_wars)
colSums(star_wars)

totalfila <- rowSums(star_wars)
totalcolumna <- colSums(star_wars)

star_wars2<- cbind(star_wars,totalcolumna)
star_wars3<- rbind(star_wars2,totalfila)
star_wars3

#SELECCIONANDO VALORES Y ARITMETICA CON MATRICES

star_wars3/5


#TRABAJANDO CON FACTORES
#Factores categoricos: Nominales (sin orden) u ordinales (con orden)
#NOMINALES
sex_vector <- c("MALE","FEMALE","FEMALE","MALE","MALE")
factor_sex_vector <- factor(sex_vector)
factor_sex_vector

#ORDINALES
temperaturas <- c("HIGH","LOW","HIGH","LOW","MEDIUM")
factor_temperaturas <- factor(temperaturas, order=T,
levels= c("LOW","MEDIUM","HIGH"))
factor_temperaturas
#UTILIZANDO LEVELS()
encuesta_vector <- c("M","F",
                     "F","M","M")
factor_encuesta_vector <- factor(encuesta_vector)
levels(factor_encuesta_vector)<- c("FEMALE","MALE")
factor_encuesta_vector

#RESUMIENDO UN FACTOR/ conteo de datos en categorias
summary(factor_encuesta_vector)

#FACTORES ORDENADOS
male<- factor_encuesta_vector [1]
female <- factor_encuesta_vector[2]

male
female

speed_vector <- c("medium","slow","slow","medium","fast")
factor_speed_vector <- factor(speed_vector)
levels(factor_speed_vector)<- c("slow","medium","fast")
factor_speed_vector

speed1<- factor_speed_vector[1]
speed5<- factor_speed_vector[5]
speed1<  speed5








