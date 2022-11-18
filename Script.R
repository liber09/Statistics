# Get all values for first quarter each year
q1 <- numeric(0)
n <- 4
counter <- -1
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q1 <- c(q1,i)
}

# Get all values for second quarter each year
q2 <- numeric(0)
n <- 4
counter <- -2
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q2 <- c(q2,i)
}

# Get all values for third quarter each year
q3 <- numeric(0)
n <- 4
counter <- -3
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q3 <- c(q3,i)
}

# Get all values for fourth quarter each year
q4 <- numeric(0)
n <- 4
counter <- 0
for (i in UKgas){
  counter = counter+1
  if(counter %% n == 0)
    q4 <- c(q4,i)
}

#Calculate average for each quarter
avgQ1 <- mean(q1)
avgQ2 <- mean(q2)
avgQ3 <- mean(q3)
avgQ4 <- mean(q4)

yearToCheck <- 2030
lastYearInDS <- 1986
yearsToAdd <- c(yearToCheck - lastYearInDS)

#Calculate average increase per year for Q1
increaseQ1 <- ((q1[1]+q1[2])/2+(q1[2]+q1[3])/2+(q1[3]+q1[4])/2+
  (q1[4]+q1[5])/2+(q1[5]+q1[6])/2+(q1[6]+q1[7])/2+(q1[7]+q1[8])/2+
  (q1[8]+q1[9])/2+(q1[9]+q1[10])/2+(q1[10]+q1[11])/2+(q1[11]+q1[12])/2+
  (q1[12]+q1[13])/2+(q1[13]+q1[14])/2+(q1[14]+q1[15])/2+(q1[15]+q1[16])/2+
  (q1[16]+q1[17])/2+(q1[17]+q1[18])/2+(q1[18]+q1[19])/2+(q1[19]+q1[20])/2+
  (q1[20]+q1[21])/2+(q1[21]+q1[22])/2+(q1[22]+q1[23])/2+(q1[23]+q1[24])/2+
  (q1[24]+q1[25])/2+(q1[25]+q1[26])/2+(q1[26]+q1[27])/2)/27

#Calculate average increase per year for Q2
increaseQ2 <- ((q2[1]+q2[2])/2+(q2[2]+q2[3])/2+(q2[3]+q2[4])/2+
                 (q2[4]+q2[5])/2+(q2[5]+q2[6])/2+(q2[6]+q2[7])/2+(q2[7]+q2[8])/2+
                 (q2[8]+q2[9])/2+(q2[9]+q2[10])/2+(q2[10]+q2[11])/2+(q2[11]+q2[12])/2+
                 (q2[12]+q2[13])/2+(q2[13]+q2[14])/2+(q2[14]+q2[15])/2+(q2[15]+q2[16])/2+
                 (q2[16]+q2[17])/2+(q2[17]+q2[18])/2+(q2[18]+q2[19])/2+(q2[19]+q2[20])/2+
                 (q2[20]+q2[21])/2+(q2[21]+q2[22])/2+(q2[22]+q2[23])/2+(q2[23]+q2[24])/2+
                 (q2[24]+q2[25])/2+(q2[25]+q2[26])/2+(q2[26]+q2[27])/2)/27

#Calculate average increase per year for Q3
increaseQ3 <- ((q3[1]+q3[2])/2+(q3[2]+q3[3])/2+(q3[3]+q3[4])/2+
                 (q3[4]+q3[5])/2+(q3[5]+q3[6])/2+(q3[6]+q3[7])/2+(q3[7]+q3[8])/2+
                 (q3[8]+q3[9])/2+(q3[9]+q3[10])/2+(q3[10]+q3[11])/2+(q3[11]+q3[12])/2+
                 (q3[12]+q3[13])/2+(q3[13]+q3[14])/2+(q3[14]+q3[15])/2+(q3[15]+q3[16])/2+
                 (q3[16]+q3[17])/2+(q3[17]+q3[18])/2+(q3[18]+q3[19])/2+(q3[19]+q3[20])/2+
                 (q3[20]+q3[21])/2+(q3[21]+q3[22])/2+(q3[22]+q3[23])/2+(q3[23]+q3[24])/2+
                 (q3[24]+q3[25])/2+(q3[25]+q3[26])/2+(q3[26]+q3[27])/2)/27

#Calculate average increase per year for Q4
increaseQ4 <- ((q4[1]+q4[2])/2+(q4[2]+q4[3])/2+(q4[3]+q4[4])/2+
                 (q4[4]+q4[5])/2+(q4[5]+q4[6])/2+(q4[6]+q4[7])/2+(q4[7]+q4[8])/2+
                 (q4[8]+q4[9])/2+(q4[9]+q4[10])/2+(q4[10]+q4[11])/2+(q4[11]+q4[12])/2+
                 (q4[12]+q4[13])/2+(q4[13]+q4[14])/2+(q4[14]+q4[15])/2+(q4[15]+q4[16])/2+
                 (q4[16]+q4[17])/2+(q4[17]+q4[18])/2+(q4[18]+q4[19])/2+(q4[19]+q4[20])/2+
                 (q4[20]+q4[21])/2+(q4[21]+q4[22])/2+(q4[22]+q4[23])/2+(q4[23]+q4[24])/2+
                 (q4[24]+q4[25])/2+(q4[25]+q4[26])/2+(q4[26]+q4[27])/2)/27

#calculate diff between years for q1
q1_1_2 <- q1[2]-q1[1]
q1_2_3 <- q1[3]-q1[2]
q1_3_4 <- q1[4]-q1[3]
q1_4_5 <- q1[5]-q1[4]
q1_5_6 <- q1[6]-q1[5]
q1_6_7 <- q1[7]-q1[6]
q1_7_8 <- q1[8]-q1[7]
q1_8_9 <- q1[9]-q1[8]
q1_9_10 <- q1[10]-q1[9]
q1_10_11 <- q1[11]-q1[10]
q1_11_12 <- q1[12]-q1[11]
q1_12_13 <- q1[13]-q1[12]
q1_13_14 <- q1[14]-q1[13]
q1_14_15 <- q1[15]-q1[14]
q1_15_16 <- q1[16]-q1[15]
q1_16_17 <- q1[17]-q1[16]
q1_17_18 <- q1[18]-q1[17]
q1_18_19 <- q1[19]-q1[18]
q1_19_20 <- q1[20]-q1[19]
q1_20_21 <- q1[21]-q1[20]
q1_21_22 <- q1[22]-q1[21]
q1_22_23 <- q1[23]-q1[22]
q1_23_24 <- q1[24]-q1[23]
q1_24_25 <- q1[25]-q1[24]
q1_25_26 <- q1[26]-q1[25]
q1_26_27 <- q1[27]-q1[26]

#Add the diff each year to a vector
increaseEachYearQ1 <- c(q1_1_2,q1_2_3,q1_3_4,q1_4_5,q1_5_6,q1_6_7,q1_7_8,q1_8_9,q1_9_10,q1_10_11,q1_11_12,q1_12_13,q1_13_14,
                        q1_14_15,q1_15_16,q1_16_17,q1_17_18,q1_18_19,q1_19_20,q1_20_21,q1_21_22,q1_22_23,q1_23_24,q1_24_25,
                        q1_25_26,q1_26_27)
#calculate mean and average increase
medianIncreaseQ1 <- median(increaseEachYearQ1)
averageIncreaseQ1 <- mean(increaseEachYearQ1)

#calculate presumed consumption in year 2030 for Q1 using both mean and average method
presumedConsumption2030Q1MedianMethod <- (medianIncreaseQ1*yearsToAdd)+q1[27]
presumedConsumption2030Q1AverageMethod <- (averageIncreaseQ1*yearsToAdd)+q1[27]

#calculate diff between years for q2
q2_1_2 <- q2[2]-q2[1]
q2_2_3 <- q2[3]-q2[2]
q2_3_4 <- q2[4]-q2[3]
q2_4_5 <- q2[5]-q2[4]
q2_5_6 <- q2[6]-q2[5]
q2_6_7 <- q2[7]-q2[6]
q2_7_8 <- q2[8]-q2[7]
q2_8_9 <- q2[9]-q2[8]
q2_9_10 <- q2[10]-q2[9]
q2_10_11 <- q2[11]-q2[10]
q2_11_12 <- q2[12]-q2[11]
q2_12_13 <- q2[13]-q2[12]
q2_13_14 <- q2[14]-q2[13]
q2_14_15 <- q2[15]-q2[14]
q2_15_16 <- q2[16]-q2[15]
q2_16_17 <- q2[17]-q2[16]
q2_17_18 <- q2[18]-q2[17]
q2_18_19 <- q2[19]-q2[18]
q2_19_20 <- q2[20]-q2[19]
q2_20_21 <- q2[21]-q2[20]
q2_21_22 <- q2[22]-q2[21]
q2_22_23 <- q2[23]-q2[22]
q2_23_24 <- q2[24]-q2[23]
q2_24_25 <- q2[25]-q2[24]
q2_25_26 <- q2[26]-q2[25]
q2_26_27 <- q2[27]-q2[26]

#Add the diff each year to a vector
increaseEachYearQ2 <- c(q2_1_2,q2_2_3,q2_3_4,q2_4_5,q2_5_6,q2_6_7,q2_7_8,q2_8_9,q2_9_10,q2_10_11,q2_11_12,q2_12_13,q2_13_14,
                        q2_14_15,q2_15_16,q2_16_17,q2_17_18,q2_18_19,q2_19_20,q2_20_21,q2_21_22,q2_22_23,q2_23_24,q2_24_25,
                        q2_25_26,q2_26_27)
#calculate mean and average increase
medianIncreaseQ2 <- median(increaseEachYearQ2)
averageIncreaseQ2 <- mean(increaseEachYearQ2)

#calculate presumed consumption in year 2030 for Q3 using both mean and average method
presumedConsumption2030Q2MedianMethod <- (medianIncreaseQ2*yearsToAdd)+q2[27]
presumedConsumption2030Q2AverageMethod <- (averageIncreaseQ2*yearsToAdd)+q2[27]

#calculate diff between years for q3
q3_1_2 <- q3[2]-q3[1]
q3_2_3 <- q3[3]-q3[2]
q3_3_4 <- q3[4]-q3[3]
q3_4_5 <- q3[5]-q3[4]
q3_5_6 <- q3[6]-q3[5]
q3_6_7 <- q3[7]-q3[6]
q3_7_8 <- q3[8]-q3[7]
q3_8_9 <- q3[9]-q3[8]
q3_9_10 <- q3[10]-q3[9]
q3_10_11 <- q3[11]-q3[10]
q3_11_12 <- q3[12]-q3[11]
q3_12_13 <- q3[13]-q3[12]
q3_13_14 <- q3[14]-q3[13]
q3_14_15 <- q3[15]-q3[14]
q3_15_16 <- q3[16]-q3[15]
q3_16_17 <- q3[17]-q3[16]
q3_17_18 <- q3[18]-q3[17]
q3_18_19 <- q3[19]-q3[18]
q3_19_20 <- q3[20]-q3[19]
q3_20_21 <- q3[21]-q3[20]
q3_21_22 <- q3[22]-q3[21]
q3_22_23 <- q3[23]-q3[22]
q3_23_24 <- q3[24]-q3[23]
q3_24_25 <- q3[25]-q3[24]
q3_25_26 <- q3[26]-q3[25]
q3_26_27 <- q3[27]-q3[26]

#Add the diff each year to a vector
increaseEachYearQ3 <- c(q3_1_2,q3_2_3,q3_3_4,q3_4_5,q3_5_6,q3_6_7,q3_7_8,q3_8_9,q3_9_10,q3_10_11,q3_11_12,q3_12_13,q3_13_14,
                        q3_14_15,q3_15_16,q3_16_17,q3_17_18,q3_18_19,q3_19_20,q3_20_21,q3_21_22,q3_22_23,q3_23_24,q3_24_25,
                        q3_25_26,q3_26_27)
#calculate mean and average increase
medianIncreaseQ3 <- median(increaseEachYearQ3)
averageIncreaseQ3 <- mean(increaseEachYearQ3)

#calculate presumed consumption in year 2030 for Q3 using both mean and average method
presumedConsumption2030Q3MedianMethod <- (medianIncreaseQ3*yearsToAdd)+q3[27]
presumedConsumption2030Q3AverageMethod <- (averageIncreaseQ3*yearsToAdd)+q3[27]

#calculate diff between years for q4
q4_1_2 <- q4[2]-q4[1]
q4_2_3 <- q4[3]-q4[2]
q4_3_4 <- q4[4]-q4[3]
q4_4_5 <- q4[5]-q4[4]
q4_5_6 <- q4[6]-q4[5]
q4_6_7 <- q4[7]-q4[6]
q4_7_8 <- q4[8]-q4[7]
q4_8_9 <- q4[9]-q4[8]
q4_9_10 <- q4[10]-q4[9]
q4_10_11 <- q4[11]-q4[10]
q4_11_12 <- q4[12]-q4[11]
q4_12_13 <- q4[13]-q4[12]
q4_13_14 <- q4[14]-q4[13]
q4_14_15 <- q4[15]-q4[14]
q4_15_16 <- q4[16]-q4[15]
q4_16_17 <- q4[17]-q4[16]
q4_17_18 <- q4[18]-q4[17]
q4_18_19 <- q4[19]-q4[18]
q4_19_20 <- q4[20]-q4[19]
q4_20_21 <- q4[21]-q4[20]
q4_21_22 <- q4[22]-q4[21]
q4_22_23 <- q4[23]-q4[22]
q4_23_24 <- q4[24]-q4[23]
q4_24_25 <- q4[25]-q4[24]
q4_25_26 <- q4[26]-q4[25]
q4_26_27 <- q4[27]-q4[26]

#Add the diff each year to a vector
increaseEachYearQ4 <- c(q4_1_2,q4_2_3,q4_3_4,q4_4_5,q4_5_6,q4_6_7,q4_7_8,q4_8_9,q4_9_10,q4_10_11,q4_11_12,q4_12_13,q4_13_14,
                        q4_14_15,q4_15_16,q4_16_17,q4_17_18,q4_18_19,q4_19_20,q4_20_21,q4_21_22,q4_22_23,q4_23_24,q4_24_25,
                        q4_25_26,q4_26_27)
#calculate mean and average increase
medianIncreaseQ4 <- median(increaseEachYearQ4)
averageIncreaseQ4 <- mean(increaseEachYearQ4)

#calculate presumed consumption in year 2030 for Q4 using both mean and average method
presumedConsumption2030Q4MedianMethod <- (medianIncreaseQ4*yearsToAdd)+q4[27]
presumedConsumption2030Q4AverageMethod <- (averageIncreaseQ4*yearsToAdd)+q4[27]

#Make some printouts
print(paste("The presumed consumption for year 2030 first quarter using median method would be ", presumedConsumption2030Q1MedianMethod))
print(paste("The presumed consumption for year 2030 first quarter using average method would be ", presumedConsumption2030Q1AverageMethod))

print(paste("The presumed consumption for year 2030 second quarter using median method would be ", presumedConsumption2030Q2MedianMethod))
print(paste("The presumed consumption for year 2030 second quarter using average method would be ", presumedConsumption2030Q2AverageMethod))

print(paste("The presumed consumption for year 2030 third quarter using median method would be ", presumedConsumption2030Q3MedianMethod))
print(paste("The presumed consumption for year 2030 third quarter using average method would be ", presumedConsumption2030Q3AverageMethod))

print(paste("The presumed consumption for year 2030 fourth quarter using median method would be ", presumedConsumption2030Q4MedianMethod))
print(paste("The presumed consumption for year 2030 fourth quarter using average method would be ", presumedConsumption2030Q4AverageMethod))

#Add new values to existing to get plot
newValue <- 0
for(i in yearsToAdd){
  newValue <- newValue+q1[27]+medianIncreaseQ1
  Q1WithNewMean <- append(q1,newValue)
}
# Q1WithNewMean <- append(q1,presumedConsumption2030Q1AverageMethod)
# Q1WithNewMedian <- append(q1,presumedConsumption2030Q1MedianMethod)
# 
# Q2WithNewMean <- append(q2,presumedConsumption2030Q2AverageMethod)
# Q2WithNewMedian <- append(q2,presumedConsumption2030Q2MedianMethod)
# 
# Q3WithNewMean <- append(q3,presumedConsumption2030Q3AverageMethod)
# Q3WithNewMedian <- append(q3,presumedConsumption2030Q3MedianMethod)
# 
# Q4WithNewMean <- append(q4,presumedConsumption2030Q4AverageMethod)
# Q4WithNewMedian <- append(q4,presumedConsumption2030Q4MedianMethod)

#Plots
plot(Q1WithNewMean,
     main = "Gas consumption in UK 1960-2030",
     xlab = "Year",
     ylab = "Million therms")
#plot(Q1WithNewMedian)

Q1WithNewMean