# ------------------------------------------------------------------------------
# Book: CRIX
# ------------------------------------------------------------------------------
# Quantlet: CRIXindex
# ------------------------------------------------------------------------------
# Description:  CRIXindex gives a plot which shows the performance of the 
#               cryptocurrency index CRIX.
# ------------------------------------------------------------------------------
# Usage: -
# ------------------------------------------------------------------------------
# Inputs: crix.csv
# ------------------------------------------------------------------------------
# Output: Returns a plot with the CRIX.
# ------------------------------------------------------------------------------
# Example: Plot with the CRIX.
# ------------------------------------------------------------------------------
# See also: CRIXBtcLtcXrp, CRIXESout, CRIXbic, CRIXinmark, CRIXmarket
# ------------------------------------------------------------------------------
# Keywords: CRIX, index, cryptocurrency, crypto, plot
# ------------------------------------------------------------------------------
# Author: Simon Trimborn
# ------------------------------------------------------------------------------


rm(list = ls(all = TRUE))
# please change your working directory 
# setwd('C:/...')
# 
plot_crix = read.csv("crix.csv", header = T, row.names = 1)
# 
line_index        = rep(1000, dim(plot_crix)[1])
names(line_index) = rownames(plot_crix)
plot_xaxis        = c(as.Date(rownames(plot_crix)[1]) - 1, 
  as.Date(rownames(plot_crix)))
plot(c(1000, plot_crix$Price), type = "l", col = "blue3", lwd = 3, 
  ylim = c(min(plot_crix) - 30, max(plot_crix) + 30), xlab = "Date", 
  ylab = "CRIX value", xaxt = "n")
axis(1, at = c(2, 91, 183, 275, 367), 
  labels = plot_xaxis[c(2, 91, 183, 275, 367)])
lines(line_index, type = "l", lwd = 3) 