== Бинарный поиск

Классический бинарный поиск это алгоритм поиска на отсортированном массиве со значениями в диапазоне $[a; b]$. Ниже приведён псевдокод для этого алгоритма.

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
  return -1
```
Временная сложность данного алгоритма равна $O(log n)$.


=== Вариант с поиском границ

+ Если требуется найти *левую* границу, когда требуемое условие выполняется, то можно использовать такой алгоритм.

  ```py
  fun left_binary_search(l, r, check, checkparams):
    while l < r:
      mid = (l + r)/2
      if check(mid, checkparams):
        r = mid
      else:
        l = mid + 1
    return l
  ```
+ Если требуется найти *правую* границу, когда требуемое условие выполняется, то можно использовать такой алгоритм.

```py
fun right_binary_search(l, r, check, checkparams):
  while l < r:
    mid = (l + r + 1)/2
    if check(mid, checkparams):
      l = mid
    else:
      r = mid - 1
  return l
```