using PyPlot
x_lines = xs
y_lines = ys
plot(x_lines, y_lines, color = "hotpink")

axis("equal")
grid(true)
xlabel("x-coordinate")
ylabel("y-coordinate")
title("The Trapped Knight's Walk")
