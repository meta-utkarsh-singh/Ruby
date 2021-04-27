def length_finder(input_array)
    lengths = []
    input_array.inject(0) {|sum,str| lengths.push(str.length)}
end