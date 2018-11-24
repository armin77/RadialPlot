library(plotrix)

source('radial.grid.r')
source('radial.plot.r')
assignInNamespace('radial.grid', radial.grid, 'plotrix')
assignInNamespace('polar.plot', polar.plot, 'plotrix')

# grid.lwd -> changes the thickness of the grid lines
# grid.smoothness -> changes the 'roundness' of the radial grid lines (defaults to 0.04, but 0.01 is a bit smoother 😉)
# radial.offset -> changes the inner offset of the grid lines

plt.lns <- rnorm(2000)*15+50
angles <- seq(0, 1*360, length=2000)%%360

l <- seq(0, 315, length=8)

polar.plot(plt.lns, polar.pos=angles, rad.col="lightgrey",
           label.pos=l, labels=l, radial.lim=c(-50,100),
           radial.labels="", boxed.radial=F,
           rp.type = "s",point.symbols=16,point.col=rgb(1,0,0,.5),
           show.centroid=F, lwd=3, cex=1.5, radlab=F, grid.lwd=5, grid.smoothness=0.01, radial.offset=50)

