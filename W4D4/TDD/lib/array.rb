

def my_uniq(arr)
    arr.uniq
end 

def two_sum(arr)
  output_arr = []
  arr.each_with_index  do |ele,idx1|
    arr.each_with_index do |ele2,idx2|
      if idx2 > idx1 
        if ele + ele2 == 0 
          output_arr << [ ele, ele2 ].sort 
        end 
      end 
    end 
  end
  output_arr
end

def my_transpose two_d 
  two_d.transpose
end