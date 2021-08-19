#lu.wang@noaa.gov
#August 2021
#The following was used to create an interaction web in R for the FFO annual report

setwd("C:/Users/lu.wang/Desktop) #change to appropriate working directory
library(igraph);library(readxl)

nodes <- read_excel("nodes.xlsx")
links <- read_excel("links.xlsx")

net <- graph_from_data_frame(d=links, vertices=nodes, directed=T)
class(net)
color_palette <- c("lightblue", "tomato", "gold", 
                   "gray50", "green", "orange", "blue") #enough colors for each of the sector.types you want to represent
V(net)$color <- color_palette[V(net)$sector.type]

plot(net, edge.arrow.size=0.2, 
     vertex.size=7, vertex.label.cex=0.5, vertex.label=NA)
legend(x=-2, y=-0.5, c("Academic","Federal: NOAA", "Federal: Other",
                         "State", "Nongovernmental", "Private", "International"), pch=21,
       col="#777777", pt.bg=color_palette, pt.cex=2, cex=.8, bty="n", ncol=1)
       
       
#other options for the plot - these are all igraph plotting parameters
#vertex.label=NA if no labels 
#vertex.label.dist=1 shifts the label
#vertex.label.color="black" colors the labels 
#vertex.size = 7, changes the size of the points
#vertex.col = node_colors
#vertex.label.cex

