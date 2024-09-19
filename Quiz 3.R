# Membuat Sintaks Fungsi
nama_fungsi <- function(argumen1, argumen2, ...) {
  hasil <- argumen1 + argumen2
  return(hasil)
}

#Membuat Fungsi
my_function <- function() {
  print ("Hello Everyone")
}

#Membuat Call a function
myfunction <- function() {
  print ("Hello Everyone")
}
my_function ()

#Membuat Arguments in Function
my_function <- function(fname) {
  paste(fname, "George")
  
}
my_function("Baston")
my_function("Ashley")
my_function("Richard")


#Membuat Number of Arguments in function
my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("George","Baston")

#Membuat default parameter value in function
my_function <- function(hobby = "Playing football") {
  paste("My hobby is", hobby)
}

my_function("drawing")
my_function("coding")
my_function("playing basketball")
my_function()

#Membuat return value in function
my_function <- function(x) {
  return(3 * x)
}

print(my_function(2))
print(my_function(5))
print(my_function(8))

#Membuat nested in function
Nested_function <- function(x,y){
  a <- x * y
  return (a)
}
Nested_function(Nested_function(1,3), Nested_function(4,3))

#Membuat nested in function part 2
Outer_func <- function(x) {
  Inner_func <- function(y) {
    a <- x - y
    return(a)
  }
  return(Inner_func)
}
output <- Outer_func(3)
output(8)

#Membuat recursion in function
tri_recursion <- function(d) {
  if (d >5) {
    result <- d + tri_recursion(d + 1)
    print(result)
  } else {
    result = 1
    return(result)
  }
}
tri_recursion(5)

#Membuat global variables in function

txt <- "amazing" 
my_function <- function() {
  paste("Coding is", txt)
}

my_function()

#Membuat global variables in function part 2
txt <- "global variable"
my_function <- function() {
  txt = "great"
  paste("Coding is", txt)
}

my_function()

print(txt)

#Membuat the global assignment operator in function

my_function <- function() {
  txt <<- "interesting"
  paste ("Coding is", txt)
}

my_function()

print(txt)


#Membuat the global assignment operator in function part 2
txt <- "fun"
my_function <- function() {
  txt <<- "to be amaze"
  paste("Prepare", txt)
}

my_function()

paste("Prepare", txt)

#Membuat macam fungsi

rata_rata <- mean(c(7,12,14,18,20))
print(rata_rata)

#Membuat built in function
hitungRataRata <- function(angka) {
  Rata_rata <- mean(angka)
  return(rata_rata)
}

hitungRataRata(c(6,13,14,15))

#Membuat custom function
hitungluasPersegiPanjang <- function(panjang, lebar){
  luas <- panjang * lebar
  return(luas)
}

hitungluasPersegiPanjang(6, 7)


#Membuat custom function part 2

sapaPengguna <- function(name = "Benhard"){
  print(paste("Selamat datang,", name))
}

sapaPengguna()
sapaPengguna("Benhard")

#Memanggil pustaka dplyr
library("dplyr")

#Manipulasi data dengan My Test.R
data <- data.frame(nama = c("A", "B", "C"), nilai = c(90, 75,95))
# Filter data dengan nilai lebih dari 85
data_filtered <- data %>% filter(nilai > 85)
print(data_filtered)

#Memanggil pustaka ggplot2
library (ggplot2)

#Data penghasilan karyawan
data_karyawan <- data.frame(
  nama = c("A", "B", "C", "D", "E"),
  penghasilan = c(15000, 10000, 20000, 6000, 9000)
) 

#Membuat grafik batang
ggplot(data_karyawan, aes(x = nama, y = penghasilan)) +
  geom_bar(stat = "identity", fill = "blue") +
  ggtitle("Penghasilan Bulan Karyawan")