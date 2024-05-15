if(!require('sna')) {
  install.packages('sna')
  library('sna')
}
#Generate a random graph
g<-rgraph(10)

#Classify the triads (1,2,3) and (2,3,4)
triad.classify(g,tri=list(a= c(1,2,3), b = c(2,3,4) ))
triad.classify(g,tri=c(2,3,4))

#Plot the triads in question
gplot(g[1:3,1:3])
gplot(g[2:4,2:4])


triad.classify


triples <- list(a = c(1,2,3), b = c(2,3,4))

sapply(triples, triad.classify, dat=g, g=1, mode=c("digraph"))


dyad.census(s501[c(1,4), c(1,4)])


igraph::triad_census
sna::triad.classify
