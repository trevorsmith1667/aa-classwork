

def my_uniq(arr)
    arr.uniq
end 

def two_sum(arr)
  output_arr = []
  arr.each_with_index  do |ele,idx1|
    arr.each_with_index do |ele2,idx2|
      output_arr << [ ele, ele2 ].sort if (idx2 > idx1 && ele + ele2== 0)
    end 
  end
  output_arr
end