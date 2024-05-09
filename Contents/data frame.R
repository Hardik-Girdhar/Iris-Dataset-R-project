Employee <- data.frame(E_id = c(11,12,13), name = c("ABC" , "XYZ" , "PQR"),position =c("Manager" , "Head" , "AO"))
Employee
Department <- data.frame(D_id = c("D101","D102","D103"), D_name = c("Computing" , "Business" , "Agriculture"), D_Loc =c("B-34" , "B-12" , "B-53"))
Department

# combine 2 dataframe in one
Employee_Department <- cbind(Employee,Department)
Employee_Department

#change the D_loc B-46 of E_id=12
Employee_Department[Employee_Department$E_id == 12, "D_Loc"] <- "B-46"
Employee_Department[2,6] <- "B-46"
Employee_Department

#Delete the record of E_d 13
Employee_Department <- Employee_Department[Employee_Department$E_id != 13,]
Employee_Department<-Employee_Department[-3,]
Employee_Department

#Display E_id, Name who are working in business
business_employees <- Employee_Department[Employee_Department$D_name == "Business", c("E_id", "name")]
business_employees <- Employee_Department[2, c("E_id", "name")]
business_employees <- Employee_Department[2, c(1,2)]
business_employees


# CREATE NAMING LIST VOTING
l<-list(c('P1','P2','P3'),c(45,68,77),c(TRUE , FALSE , TRUE))
names(l) <- c('People' , 'Age' , 'Vote')
l
l['People']
l['Age']
l['Vote']
#CONVERT NAMELIST INTO DATAFRAME
df<-data.frame(People = l$People, Age = l$Age, Vote = l$Vote)
df