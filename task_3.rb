matrix = [
    [1, 4, 8], 
    [12, 3, 7],
    [10, 14, 3]
]

def sumOfRowsAndColumns(matrix)

    rowsCount = matrix.length
    colCount = matrix[0].length
    i = 0

    sumRowArray = []
    sumColArray = []

    finalResultArr = [[], [], []]

    for arr in matrix
        sumRowArray.push(arr.sum)
    end

    while i < colCount
        j = 0 
        sumCols = 0

        while j < rowsCount
                sumCols += matrix[j][i]
            
            if j == rowsCount-1
                sumColArray.push(sumCols)
            end
            j+=1
        end
        i+=1
    end
    
    i = 0
    while i < sumRowArray.length
        finalResultArr[i][0] = sumRowArray[i]
        i+=1
    end        
   
    puts "The sum of the elements of the columns are: #{sumColArray}"
    puts "The column, containing the sum of the row elements is: "
    puts finalResultArr

end

sumOfRowsAndColumns(matrix)
