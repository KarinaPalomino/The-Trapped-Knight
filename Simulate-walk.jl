function simulate_walk(board)
    seq = [1]
    x_coor = [0]
    y_coor = [0]
    n = size(board,1)

    visited = falses(size(board)) #to mark what squares have been visited
    
    center = ((n - 1) ÷ 2) + 1
    x, y = center, center
    visited[x, y] = true

    dx = [2,1,1,2,-1,-1,-2,-2]
    dy = [-1,-2,2,1,2,-2,1,-1]

    while true
        available = [] #initial
        for i in 1:8
            newx = x + dx[i] #to continue to update the coordinates corresponding to the "center"
            newy = y + dy[i] 

            if (1 <= newx <= n) && (1 <= newy <= n) && !(visited[newx, newy]) #retrieving all possible moves into an array
                push!(available, (newx, newy)) 
            end
        end

        if length(available) == 0 #once all possible positions have been exhausted the loop with stop
            break 
        end

        chosen_move = argmin([board[newx, newy] for (newx, newy) in available]) #retrieves the index of the smallest value 
                                                                                            #in the array available
        newx, newy = available[chosen_move] #newx and newy are now the corresponding coordinates of the smallest value of array available

        push!(seq, board[newx, newy])
        push!(y_coor, newx - center)
        push!(x_coor, newy - center)

        visited[newx ,newy] = true #mark the square corresponding to newx and newy as visited
        x = newx #newx and newy are the new centers now
        y = newy

    end
    return seq, x_coor, y_coor 
end
