def merge_sort(arr)
  if arr.nil? || arr.length <= 1
    return arr
  end
  mid = arr.length/2
  left = arr[0...mid]
  right = arr[mid..-1]
  merge(merge_sort(left), merge_sort(right))
end

def merge(arr1, arr2)
  merged_arr = []
  i = 0
  j = 0
  while i < arr1.length && j < arr2.length
    if arr1[i] <= arr2[j]
      merged_arr.push(arr1[i])
      i += 1
    else
      merged_arr.push(arr2[j])
      j += 1
    end
  end

  if i < arr1.length
    merged_arr.concat(arr1[i..-1])
  else
    merged_arr.concat(arr2[j..-1])
  end

  return merged_arr
end
