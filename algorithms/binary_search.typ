== Бинарный поиск

Бинарный поиск это алгоритм поиска на отсортированном массиве со значениями в диапазоне $[a; b]$.

```py
fun binary_search(array, x):
  n = array.len()

  l, r = 0, n-1
  while l <= r:
    mid = (l + r) / 2
    if arr[mid] == x:
      return mid
    if array[mid] < x:
      l = mid + 1
    else:
      r = mid - 1

  return NIL
```

Временная сложность данного алгоритма равна $O(log n)$.

