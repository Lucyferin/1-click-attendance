#Paths
class="C:/Users/JFH/Downloads/asistencias/"
output="C:/Users/JFH/Downloads/asistencias/Output/"
biol1="C:/Users/JFH/Downloads/asistencias/BIOL110/S1/"
biol2="C:/Users/JFH/Downloads/asistencias/BIOL110/S2/"
biol3="C:/Users/JFH/Downloads/asistencias/BIOL110/S3/"
debd1="C:/Users/JFH/Downloads/asistencias/DEBD130/S1/"
debd2="C:/Users/JFH/Downloads/asistencias/DEBD130/S2/"
debd3="C:/Users/JFH/Downloads/asistencias/DEBD130/S3/"
debd4="C:/Users/JFH/Downloads/asistencias/DEBD130/S4/"
debd5="C:/Users/JFH/Downloads/asistencias/DEBD130/S5/"
debd7="C:/Users/JFH/Downloads/asistencias/DEBD130/S7/"
debd9="C:/Users/JFH/Downloads/asistencias/DEBD130/S9/"
debd10="C:/Users/JFH/Downloads/asistencias/DEBD130/S10/"
debd12="C:/Users/JFH/Downloads/asistencias/DEBD130/S12/"
debd14="C:/Users/JFH/Downloads/asistencias/DEBD130/S14/"

#Add classes to update

setwd(class)
classes=list.files(class,pattern = "\\.csv$")
classList=lapply(classes,read.csv)

#Add attendance per class (BIOL110)

setwd(biol1)
biolAttendance1=list.files(biol1)
biolList1=lapply(biolAttendance1,read.csv)
names(biolList1) <- gsub("\\.csv$", "", biolAttendance1)

for(i in 1:length(biolList1)){
  classList[[1]][,2+(i*2)] <- biolList1[[i]]$Total.time[match(classList[[1]]$`Correo.electrónico`,biolList1[[i]]$Username)]
}

setwd(biol2)
biolAttendance2=list.files(biol2)
biolList2=lapply(biolAttendance2,read.csv)
names(biolList2) <- gsub("\\.csv$", "", biolAttendance2)

for(i in 1:length(biolList2)){
  classList[[2]][,2+(i*2)] <- biolList2[[i]]$Total.time[match(classList[[2]]$`Correo.electrónico`,biolList2[[i]]$Username)]
}

setwd(biol3)
biolAttendance3=list.files(biol3)
biolList3=lapply(biolAttendance3,read.csv)
names(biolList3) <- gsub("\\.csv$", "", biolAttendance3)

for(i in 1:length(biolList3)){
  classList[[3]][,2+(i*2)] <- biolList3[[i]]$Total.time[match(classList[[3]]$`Correo.electrónico`,biolList3[[i]]$Username)]
}

#Add attendance per class (DEBD130)

setwd(debd1)
debdAttendance1=list.files(debd1)
debdList1=lapply(debdAttendance1,read.csv)
names(debdList1) <- gsub("\\.csv$", "", debdAttendance1)

for(i in 1:length(debdList1)){
  classList[[4]][,2+(i*2)] <- debdList1[[i]]$Total.time[match(classList[[4]]$Nombre.de.usuario,debdList1[[i]]$Username)]
}

setwd(debd2)
debdAttendance2=list.files(debd2)
debdList2=lapply(debdAttendance2,read.csv)
names(debdList2) <- gsub("\\.csv$", "", debdAttendance2)

for(i in 1:length(debdList2)){
  classList[[5]][,2+(i*2)] <- debdList2[[i]]$Total.time[match(classList[[5]]$Nombre.de.usuario,debdList2[[i]]$Username)]
}

setwd(debd3)
debdAttendance3=list.files(debd3)
debdList3=lapply(debdAttendance3,read.csv)
names(debdList3) <- gsub("\\.csv$", "", debdAttendance3)

for(i in 1:length(debdList3)){
  classList[[6]][,2+(i*2)] <- debdList3[[i]]$Total.time[match(classList[[6]]$Nombre.de.usuario,debdList3[[i]]$Username)]
}

setwd(debd4)
debdAttendance4=list.files(debd4)
debdList4=lapply(debdAttendance4,read.csv)
names(debdList4) <- gsub("\\.csv$", "", debdAttendance4)

for(i in 1:length(debdList4)){
  classList[[7]][,2+(i*2)] <- debdList4[[i]]$Total.time[match(classList[[7]]$Nombre.de.usuario,debdList4[[i]]$Username)]
}

setwd(debd5)
debdAttendance5=list.files(debd5)
debdList5=lapply(debdAttendance5,read.csv)
names(debdList5) <- gsub("\\.csv$", "", debdAttendance5)

for(i in 1:length(debdList5)){
  classList[[8]][,2+(i*2)] <- debdList5[[i]]$Total.time[match(classList[[8]]$Nombre.de.usuario,debdList5[[i]]$Username)]
}

setwd(debd7)
debdAttendance7=list.files(debd7)
debdList7=lapply(debdAttendance7,read.csv)
names(debdList7) <- gsub("\\.csv$", "", debdAttendance7)

for(i in 1:length(debdList7)){
  classList[[9]][,2+(i*2)] <- debdList7[[i]]$Total.time[match(classList[[9]]$Nombre.de.usuario,debdList7[[i]]$Username)]
}

setwd(debd9)
debdAttendance9=list.files(debd9)
debdList9=lapply(debdAttendance9,read.csv)
names(debdList9) <- gsub("\\.csv$", "", debdAttendance9)

for(i in 1:length(debdList9)){
  classList[[10]][,2+(i*2)] <- debdList9[[i]]$Total.time[match(classList[[10]]$Nombre.de.usuario,debdList9[[i]]$Username)]
}

setwd(debd10)
debdAttendance10=list.files(debd10)
debdList10=lapply(debdAttendance10,read.csv)
names(debdList10) <- gsub("\\.csv$", "", debdAttendance10)

for(i in 1:length(debdList10)){
  classList[[11]][,2+(i*2)] <- debdList10[[i]]$Total.time[match(classList[[11]]$Nombre.de.usuario,debdList10[[i]]$Username)]
}

setwd(debd12)
debdAttendance12=list.files(debd12)
debdList12=lapply(debdAttendance12,read.csv)
names(debdList12) <- gsub("\\.csv$", "", debdAttendance12)

for(i in 1:length(debdList12)){
  classList[[12]][,2+(i*2)] <- debdList12[[i]]$Total.time[match(classList[[12]]$Nombre.de.usuario,debdList12[[i]]$Username)]
}

setwd(debd14)
debdAttendance14=list.files(debd14)
debdList14=lapply(debdAttendance14,read.csv)
names(debdList14) <- gsub("\\.csv$", "", debdAttendance14)

for(i in 1:length(debdList14)){
  classList[[13]][,2+(i*2)] <- debdList14[[i]]$Total.time[match(classList[[13]]$Nombre.de.usuario,debdList14[[i]]$Username)]
}

#Output of attendance

setwd(output)
for(i in 1:13){
  write.csv(classList[[i]],file=classes[i])
}



