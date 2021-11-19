array = [ 61, -5, -5, 7, 78, -5, 3, 0, 6, 8, -5, 4, 9 ]

p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'puts array.each_index.find_all {|e| print array[e].to_s+', 'if x%2==0}'
p 'puts array.each_index.find_all {|e| print array[e].to_s+', 'if x%2!=0}'
puts array.each_with_index.find_all {|e,i| e if i.even?}
puts array.each_with_index.find_all {|e,i| e if i%2!=0}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p 'p array.index {|x| p x if array[0]<x and x<array[-1]}'
p array.index.find(-> {[]}) {|x| array[0]<x and x<array[-1]}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p 'p array.rindex {|x| p x if array[0]<x and x<array[-1]}'
p array.rindex.find(-> {[ ]}) {|x| array[0] < x and x < array[-1]}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
def arr array
  array.each_index.map do |e|
    if e > 0
      if e < (array.size - 1)
        array[e] + array[0]
      else
        array[e] = array[e]
      end
    else
      array[e] = array[e]
    end
  end
end
p 'p arr(array)'
p arr(array)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
def positive_to_min array
  array.map do |e|
    if e > 0
      e = array.min
    else
      e = e
    end
  end
end
p 'p positive_to_min(array)'
p positive_to_min(array)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
p 'p array.rotate(1)'
p array.rotate(1)
p 'p array.rotate(-1)'
p array.rotate(-1)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество его локальных максимумов.'
def local_max_count array
  array_new = array.each_index.select {|i| i>0 && i<array.size-1 && array[i]>array[i-1] && array[i]>array[i+1]}
  p array_new.size
end
p 'local_max_count(array)'
local_max_count(array)
p '--------------------------------------------------------'


p 'Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 4.35, 2.93]
num_R = 28.43
def print_element_close_to_num (array, num)
  array_new = array.map {|e| (e-num).abs}
  p array[array_new.index {|e| e == array_new.min}]
end
p 'print_element_close_to_num(array_float, num_R)'
print_element_close_to_num(array_float, num_R)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
def first_before_e array
  array.map do |e|
    if e > 0
      e = (array[0].to_s + e.to_s).to_i
    else
      e = e
    end
  end
end
p 'p first_before_e(array)'
p first_before_e(array)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Упорядочить его по убыванию.'
p 'p array.sort.reverse'
p array.sort.reverse
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Упорядочить его по возрастанию.'
p 'p array.sort.reverse'
p array.sort
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
p 'p array.each_with_index.sort.reverse.map { |e, i| i }'
p array.each_with_index.sort.reverse.map { |e, i| i }
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p 'p array.each_with_index.sort.map { |e, i| i }'
p array.each_with_index.sort.map { |e, i| i }
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти индексы минимального элемента.'
p 'p array.each_index.select {|i| array[i] == array.min}'
p array.each_index.select {|i| array[i] == array.min}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс первого минимального элемента.'
p 'p array.index(array.min)'
p array.index(array.min)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p 'p array.rindex(array.min)'
p array.rindex(array.min)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество минимальных элементов.'
p 'p array.each_index.select.count {|i| array[i] == array.min}'
p array.each_index.select.count {|i| array[i] == array.min}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти минимальный четный элемент.'
p 'p (array.select {|e| e.even?}).min'
p (array.select {|e| e.even?}).min
p '--------------------------------------------------------'


p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
interval = (2..6)
p 'p array[interval].min'
p array[interval].min
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p 'p array.index(array.min)'
p array.index(array.min)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
p 'p array.size - (array.index(array.min) + 1)'
p array.size - (array.index(array.min) + 1)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
p 'p array.each_index.find {|i| array[i] == array.min || array[i] == array.max}'
p array.index.find {|i| array[i] == array.min || array[i] == array.max}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
p 'p array.rindex(array.reverse.find {|e| e == array.min || e == array.max})'
p array.rindex(array.reverse.find {|e| e == array.min || e == array.max})
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
p 'p array.rindex(array.min) - (array.index(array.min) + 1)'
p array.rindex(array.min) - (array.index(array.min) + 1)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти два наибольших элемента.'
p 'p array.uniq.sort.reverse[0, 2]'
p array.uniq.sort.reverse[0, 2]
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов.'
# array = Array.new(9999) {rand(1..10)}
def max_count_min_elements_in_a_row array
  # array_new = array.each_index.select {|i| array[i] == array[i-1] || array[i] == array[i+1]}
  a = nil  # индекс первого элемента в интервале одинаковых значений подряд
  b = nil  # индекс последнего элемента в интервале одинаковых значений подряд
  c = []   # массив размеров интервалов одинаковых значений подряд
  array.each_index do |i|
    if array[i] == array.min
      if array[i+1] != nil
        if array[i] == array[i+1]
          if array[i] != array[i-1]
            a = i
          end
        elsif a != nil
          if array[i] == array[i-1] && array[i] != array[i+1]
            b = i
            c << (b - a + 1)
          end
        end
      elsif array[i] == array[i-1] && array[i] != array[i+1]
        b = i
        c << (b - a + 1)
      end
    else
      c << 1
    end

  end
  p c.max
end
p 'max_count_min_elements_in_a_row array'
max_count_min_elements_in_a_row array
# ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ ПЕРЕРОБИТЬ !!!!!!
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p 'p array.select {|e| e.even?}
p array.select {|e| e.odd?}'
p array.select {|e| e.even?}
p array.select {|e| e.odd?}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.'
array_rotate = [2,3,2,3,2,3,2,3,2,3,2]
p array_rotate.each_index.find(-> {'chered'}) {|i| (array_rotate[i].even? && array_rotate[i+1] != nil && array_rotate[i+1].even?) || (array_rotate[i].odd? && array_rotate[i+1] != nil && array_rotate[i+1].odd?)}
p '--------------------------------------------------------'


p 'Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наиболее близка к данному числу.'
array_float = [2.34, 7.34, 76.57, 45.8, 4.35, 2.93]
num_R = 28.43
def print_2_elements_sum_close_to_num(array, num)
  e1 = array[0]
  e2 = array[1]
  sum = (e1 + e2).abs
  diff = (num - sum).abs

  array.each_index do |i|

    i2 = i
    while i2 != array.count-1
      sum = array[i] + array[i2+1]
      if (num - sum).abs < diff
        e1 = array[i]
        e2 = array[i2+1]
        diff = (num - sum).abs
      end
      i2 = i2+1

    end
  end
  p e1
  p e2
end
p 'print_2_elements_sum_close_to_num(array_float, num_R)'
print_2_elements_sum_close_to_num(array_float, num_R)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
arr = [1,2,2,6,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6]

def delete_all_uniq_elements array
  for el in 0..array.length - 1

    if (array.length - (array - [array[el]]).length) < 2
      array = array - [array[el]]
    end
  end
  p array
end
p '1) delete_all_uniq_elements (arr)'
delete_all_uniq_elements (arr)
# p '2) arr.delete_if {|e| (arr.length - (arr - [arr[arr.index(e)]]).length) < 5}'
# arr.delete_if {|e| (arr.length - (arr - [arr[arr.index(e)]]).length) > 5}
# p arr
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
p 'p (array.map {|e| e.abs}).sum / array.length.to_f'
p (array.map {|e| e.abs}).sum / array.length.to_f
p '--------------------------------------------------------'


number = -38473
p 'Дано целое число. Найти сумму его цифр.'
def print_sum_of_numeral_in_number (number)
  arr = Array.new()
  num = number.abs
  while num != 0
    if num % 10 != 0
      arr << num % 10
      num = (num - num % 10) / 10
    else
      num = num / 10
    end

  end
  p arr.sum
end
p 'print_sum_of_numeral_in_number(number)'
print_sum_of_numeral_in_number(number)
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.'
def qwert (array)
  array.map do |e|
    if e < 0
      e**2
    elsif e > 0
      e**3
    else
      e = e
    end
  end
end
p qwert(array)
p '--------------------------------------------------------'


p 'Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их возрастания, а также размер этого массива.'
# q = Array.new()
# d = 2..7
# for el in array.each_index
#   if el > 2 && el < 7
#     q << array[el]
#   end
# end
# p q.sort
# p q.size
p '--------------------------------------------------------'


p 'Дано число А и натуральное число N. Найти результат следующего выражения
1 + А + А*2 + А*3 + … + А*N.'
# a = 9
n = 13
# ans = 0
# for num in 1..n
#   ans += a*num
# end
# ans += 1
# p ans
p '--------------------------------------------------------'


p 'Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, то найти произведение 2*4*…*N.'
# ans = 1
# for num in 1..n
#   if n.even?
#     if num.even?
#       ans = ans * num
#     end
#   elsif n.odd?
#     if num.odd?
#       ans = ans * num
#     end
#   end
# end
# p ans
p '--------------------------------------------------------'


p 'Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.'
k = 7
p array.any? {|e| e < k }

p '--------------------------------------------------------'


p 'Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false.'
p array.all? {|e| e < k}

p '--------------------------------------------------------'


p 'Дан целочисленный массив и число К. Вывести количество элементов, меньших К.'

p (array.find_all {|e| e > k }).size
p '--------------------------------------------------------'


p 'Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К.'

p array.index {|e| e > k}
p '--------------------------------------------------------'


p 'Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.'

p array.each_index.find_all {|e| array[e] < array[e-1]}
p (array.each_index.find_all {|e| array[e] < array[e-1]}).size
p '--------------------------------------------------------'







p '________________________________________________________________'
