# Plotting the walk of the knight in a board of size 100 x 100

board2 = initialize_board(100)
display(board2)
simulate_walk(board2)
seq, xs, ys = simulate_walk(board2);
println("Sequence = ", seq)
println("x-coordinates = ", xs)
println("y-coordinates = ", ys)

using PyPlot
x_lines = xs
y_lines = ys
plot(x_lines, y_lines, color = "hotpink")
axis("equal")
grid(true)
xlabel("x-coordinate")
ylabel("y-coordinate")
title("The Trapped Knight's Walk")
