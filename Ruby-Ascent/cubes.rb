def sum_of_cubes(a, b)
    (a..b).inject(0) {|sum, i| sum = sum+i*i*i}
end