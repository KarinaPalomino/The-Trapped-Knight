function initialize_board(n)
    board = ones(Int64, 2n+1, 2n+1) #initializing the board
    value = 1 #starting value at one and where our counting starts
    rw = n+1 
    col = n+1

    # number of cycles in the matrix
    for k = 1:n

        #the motion of the spiral is counterclockwise so the following is structured accordingly 

        # up moving
        for i = rw+k-1:-1:rw-k #change in rows
            value += 1
            board[i, col+k] = value 
        end
        
        # left moving
        for i = col+k-1:-1:col-k #change in columns
            value += 1
            board[rw-k, i] = value
        end
        
        # down moving
        for i = rw-k+1:rw+k #change in rows
            value += 1
            board[i, col-k] = value
        end

        # right moving
        for i = col-k+1:col+k #change in columns
            value += 1
            board[rw+k, i] = value
        end
    end
    return board 
end

