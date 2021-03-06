RPlot14 <- function(data, ...) {
  ## be sure that the variables are in 'VarList'. If not, where VarList
  ## is defined, add the new variable to the variable names or follow the
  ## present definition with VarList <- c(VarList, "NewVariable1", "NewVariable2")
  # next just resets geometry, in case previous plot used multiple panes
  # layout(matrix(1:1, ncol = 1), widths = 1, heights = c(5,6))
  # op <- par (mar=c(5,4,1,2.5)+0.1,oma=c(1.1,0,0,0))

  layout(matrix(1:3, ncol = 1), widths = 1, heights = c(5,5,6))
  op <- par (mar=c(2,4,0.5,1)+0.1,oma=c(1.1,0,0,0))
  if ("RSTB" %in% VRPlot[[14]]) {
    plotWAC (data[, c("Time", "RSTB")])
  }
  if ("VISB" %in% VRPlot[[14]]) {
    plotWAC (data[, c("Time", "VISB")])
  }
  op <- par (mar=c(5,4,0.5,1)+0.1)
  if ("IRBC" %in% VRPlot[[14]] && "IRTC" %in% VRPlot[[14]]) {
    plotWAC (data[, c("Time", "IRBC", "IRTC")], ylab="IRxC", legend.position='bottom')
  } else {
    plot (0,0, xlim=c(0,1), ylim=c(0,1), type='n', axes=FALSE, ann=FALSE)
    text (0.5, 0.8, 'no IR radiation measurements')
  }
  AddFooter ()
}
