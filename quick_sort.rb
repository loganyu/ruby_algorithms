def quick_sort(arr)
  sort(arr, 0, arr.length - 1)
end

def sort(arr, left, right)
  if right - left <= 0
    return arr
  end
  pivot = arr[right]
  part = partition(arr, left, right, pivot)
  sort(arr, left, part - 1)
  sort(arr, part + 1, right)
end

def partition(arr, left, right, pivot)
  i = left
  j = right - 1
  loop do
    while arr[i] < pivot
      i += 1
    end
    while j > 0 && arr[j] > pivot
      j -= 1
    end
    if i >= j
      break
    else
      arr[i], arr[j] = arr[j], arr[i]
    end
  end
  arr[i], arr[right] = arr[right], arr[i]

  return i
end
