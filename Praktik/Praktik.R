#Seleksi dan Pembersihan Data
df <- data.frame(
  nama = c("Andy","George","Iwan","Jack"),
  umur = c(20,20,22,21),
  nilai = c(78,92,85,80)
)
df_selected <- df[, c("nama","nilai")]
print(df_selected)
df_filtered <- df[df$umur >20,]
print(df_filtered)
df_sorted <- df[order(-df$nilai), ]
print(df_sorted)

#Transformasi Data
df$nilai_kategori <- ifelse(df$nilai > 85, "Tinggi","Rendah")
print(df)
library(dplyr)
df <- mutate(df, nilai_perc = nilai/100)
print(df)
df_trans <- transmute(df, nama, nilai_perc)
print(df_trans)

#Agregasi Data
df <- data.frame(
  nama = c("Andy","George","Iwan","Jack"),
  kelas = c("A","B","A","B"),
  nilai = c(80,88,90,75)
)
df_summary <- df %>%
  group_by(kelas) %>%
  summarise(mean_nilai = mean(nilai))
print(df_summary)

#Handling Missing Value
df_kelas <- data.frame(
  nama = c("Barton","George","Iwan","Jack"),
  kelas = c("A","B","A","B")
)
df_joined <- left_join(df, df_kelas, by = "nama")
print(df_joined)
df_na <- data.frame(
  nama = c("Barton","George","N/A","Jack"),
  kelas = c("A","B","A","B")
)
df_clean <- na.omit(df_na)
#R Dataset
mtcars
?mtcars
Data_Cars <- mtcars
dim(Data_Cars)
names(Data_Cars)
rownames(Data_Cars)
Data_Cars$carb
sort(Data_Cars$carb)
summary(Data_Cars)

#Max dan Min
max(Data_Cars$carb)
min(Data_Cars$carb)
which.max(Data_Cars$carb)
which.min(Data_Cars$carb)
rownames(Data_Cars)[which.max(Data_Cars$carb)]
rownames(Data_Cars)[which.min(Data_Cars$carb)]
data1 <- c(64,25,72,35,64,13,54,46,31,82,64,23,46,47)

#Mean, Median, Mode
mean(Data_Cars$mpg)
median(Data_Cars$mpg)
names(sort(-table(Data_Cars$wt)))[1]
hist(data1,
     main= "Histogram Sebaran Data",
     xlab = "Nilai",
     ylab = "Frekuensi",
     col="blue",
     border="red")
