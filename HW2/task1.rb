array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

p '– узнать количество элементов в массиве;'
p array.size
p '--------------------------------------------------------'

p '– перевернуть массив;'
p array.reverse
p '--------------------------------------------------------'

p '– найти наибольшее число;'
p array.max
p '--------------------------------------------------------'

p '– найти наименьшее число;'
p array.min
p '--------------------------------------------------------'

p '– отсортировать от меньшего к большему;'
p array.sort
p '--------------------------------------------------------'

p '– отсортировать от большего к меньшему;'
p array.sort.reverse
p '--------------------------------------------------------'

p '– удалить все нечетные числа;'
p array.reject { |e| e.odd? }
p '--------------------------------------------------------'

p '– оставить только те числа, которые без остатка делятся на 3;'
p array.select { |e| e % 3 == 0 }
p '--------------------------------------------------------'

p '– удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов);'
p array.uniq
p '--------------------------------------------------------'

p '– разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;'
p array.map { |e| e.to_f / 10 }
p '--------------------------------------------------------'

p '– получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
p ('a'..'z').to_a.select.with_index { |e, i| e if array.include?(i + 1) }
p '--------------------------------------------------------'

p '– поменять местами минимальный и максимальный элементы массива;'
p array.map { |e|
  if e == array.min
    array.max
  elsif e == array.max
    array.min
  else
    e
  end
}
p '--------------------------------------------------------'

p '– найти элементы, которые находятся перед минимальным числом в массиве;'
p array.select.with_index { |e, i| i < array.index(array.min) }
p '--------------------------------------------------------'

p '– необходимо найти три наименьших элемента.'
p array.min(3)
p '--------------------------------------------------------'