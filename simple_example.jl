using DIVAnd, PyPlot

mask,(pm,pn),(xi,yi) = DIVAnd_squaredom(2,-1:0.01:1)

x        = [-0.5,0.5]; # x-positions
y        = [ 0. ,0. ]; # y-positions
f        = [ 1. ,1. ]; # values
epsilon2 = [ 0.5,1. ]; # expected error variances (normalized)

len = 0.2 # correlation length-scale
fi,s = DIVAndrun(mask,(pm,pn),(xi,yi),(x,y),f,len,epsilon2);

# Plotting
clf();
pcolor(xi,yi,fi; cmap="jet");
axis("equal")
colorbar();
