def columnMinValue(matrix)
    result = 0
    #  Get the size of array
    row = matrix.length # 5
    col = matrix[0].length # 4
    i = 0
  min_num = -10000
  max_num = 0
    while i < col
    if result > min_num
      max_num = result
    end
        #  Get first element of i col and first row
        result = matrix[0][i]
        j = 1
        while j < row
            #  Check if element is less than result
            if result > matrix[j][i]
                #  Get new min element
                result = matrix[j][i]
            end
            j += 1
        end
        #  Display result
            # puts "#{result}"
        i += 1
    end
    # Find the maximum element
    puts "The max element among the minimum elements is #{max_num}"
end

def main()
    #  Declaring matrix of integer elements
    matrix = [
        [1, -1, 6, 3],
        [4, 8, 5, 4],
        [3, 4, 5, 0],
        [2, 3, 2, 3],
        [0, 3, 5, 7]
    ]
    #  Test
    columnMinValue(matrix)
end

main()
