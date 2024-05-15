checkt2 <- ts_net1
diag(checkt2)=NA
checkt2[lower.tri(checkt2)]=NA

ID_up <- reshape2::melt(checkt2)
ID_up$iden <- "upper.tri" 

checkt2 <- ts_net1
diag(checkt2)=NA

checkt2[upper.tri(checkt2)]=NA
ID_low <- reshape2::melt(checkt2)
ID_low$iden <- "lower.tri"

full <- rbind(ID_up, ID_low)
test <- uniqu  
checkt2 <- ts_net1
diag(checkt2)=NA
