library("circlize")
circos.clear()
mat <- read.csv("RQ2_relationship.csv",
                header = T,
                row.names = 1,
                stringsAsFactors = F)
mat <- as.matrix(mat)
chordDiagram(mat,
             annotationTrack = "grid",
             directional = 0,
             preAllocateTracks = 1,
             #link.sort=TRUE,
             #link.decreasing = FALSE,
             order = c("Development",
                       "SF_Management",
                       "SF_People",
                       "Knowledge",
                       "Planning_and_Management",
                       "Methodology",
                       "People",
                       "Development_Issues",
                       "Lack_of_Knowledge",
                       "Organizational"),
             grid.col=c(
                        Planning_and_Management="#D6604D",
                        Lack_of_Knowledge="#D6604D",
                        People="#D6604D",
                        Methodology="#D6604D",
                        Development_Issues="#D6604D",
                        Organizational="#D6604D",
                        SF_People="#4682B4",
                        SF_Management="#4682B4",
                        Development="#4682B4",
                        Knowledge="#4682B4")
              )
# add labels
circos.track(track.index = 1, panel.fun = function(x, y) {
  circos.text(CELL_META$xcenter, CELL_META$ylim[1], CELL_META$sector.index,
              facing = "clockwise", niceFacing = TRUE, adj = c(0, 0.5), cex = 1)
}, bg.border = NA)

