```python
  def quicksort(arr):
    if(len(arr) < 2):
      return arr # base case: arrays with 0 or 1 element are already "sorted"
    else:
      pivot = arr[0] # recursive case
      less = [i for i in arr[1:] if i <= pivot]
      greater = [i for in arr[1:] if i >= pivot]
      return quicksort(less) + [pivot] + quicksort(greater)

  print quicksort([10, 5, 2, 3])
```

`quicksort was implemented that inspired by divide and conquer strategy`