def count_positives_sum_negatives(lst)
  if lst.count > 0
    count = lst.count{|x| x>0}
    sum = 0
    lst.each {|x| sum += x if x<0}
    return [count, sum]
  else
    return []
  end
end