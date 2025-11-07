#import "../util.typ": *
== Кратные интегралы

=== Двойные интегралы

==== Определение двойного интеграла

Пусть тело ($V$) в $RR^3$ ограничено сверху поверхностью $z = f(x, y)$. С боков ограничено цилиндрической поверхностью с образующей, параллельной оси $z$, а снизу плоской фигурой $D$ на плоскости $z = 0$. Требуется найти объём тела $V$.

Разобьём $D$ на малые фигуры 
$(sigma_i), space i=1,...,n$.
Внутри каждой фигуры рассмотрим точку $(xi_i, eta_i) in sigma_i$. Тогда объём $i$-того столбика равен

$ abs(V_i) = f(xi_i, eta_i) dot abs(sigma_i) $

Приближённо можно написать, что

$
abs(V) approx S_n = sum_(i=1)^n 
f(xi_i, eta_i) dot abs(sigma_i)

$
Полученная сумма называется интегральной.
Будем неограниченно увеличивать мощность разбиения: $n -> infinity$. При стремлении макисмального диаметра фигуры $sigma_i$ к нулю: $ lambda = op(max, limits: #true)_(i=1,...n) d(sigma_i) $

получим, что объём $abs(V)$ равен пределу 


$ abs(V) = lim_(
lambda -> 0
) [sum_(i=1)^n f(xi_i, eta_i) dot abs(sigma_i)] $

_Определение._ Если существует предел интегральной сумммы $S_n$ при стремлении максимального диаметра разбиения области $D subset RR^2$ к нулю, не зависящий от способа разбиения области, то этот предел называется _двойным интегралом_ функции $f$ по области $D$.

$ op(integral.double, limits: #true)_D f(x, y) d x d y =_"def" lim_(lambda->0) [sum_(i=1)^n f(xi_i, eta_i) dot abs(sigma_i)] $

#theorem([_Условие существования двойного интеграла._ Если функция $f$ непрерывна на ограниченной замкнутой области $D$, то она интегрируема на $D$.])

==== Суммы Дарбу

Пусть область $D$ разбита на конечное число подмножеств $sigma_i, space i=1,...,n$. Обозначим 

$ M_i = sup_(sigma_i) f(x, y) $

$ m_i = inf_(sigma_i) f(x, y) $

+ Верхняя сумма Дарбу:
  $ S = sum_(i=1)^n M_i dot abs(sigma_i) $
+ Нижняя сумма Дарбу:
  $ s = sum_(i=1)^n m_i dot abs(sigma_i) $

Для любого разбиения справедливо, что 
$ s <= S_n <= S $

Свойства сумм Дарбу:

+ При добавлении новых фигур $sigma_i$ и линий в разбиение $D$ нижняя сумма   Дарбу
  не убывает, а верхняя --- не возрастает.
+ Любая нижняя сумма Дарбу не превосходит любой верхней суммы Дарбу, даже 
  для разных разбиений.

_Определение._ Колебанием функции $f(x, y)$ на области $D$ называется число $ S - s = sum_(i=1)^n (M_i - m_i) dot abs(sigma_i) $

#theorem([_Критерий интегрируемости Римана._ Для того, чтобы ограниченная функция
$f$ была интегрируема по области $D$ _необходимо и достаточно_, чтобы

$ lim_(lambda -> 0) S - s = 0 $
])
==== Свойства двойного интеграла

Пусть функции $f(x, y)$ и $g(x, y)$ интегрируемы в $D$.

+ Линейность. $forall alpha, beta in RR:$
  $ op(integral.double, limits: #true)_D (alpha f(x, y) + beta g(x, y)) d sigma = alpha op(integral.double, limits: #true)_D f(x, y) d sigma + beta op(integral.double, limits: #true)_D g(x, y) d sigma $

+ Аддитивнось по области. $forall D_1, D_2: (D_1 union D_2 = D) and (ints(D_1) inter ints(D_2) = empty):$
  $ op(integral.double, limits: #true)_D f(x, y) d sigma = 
  op(integral.double, limits: #true)_D_1 f(x, y) d sigma + op(integral.double, limits: #true)_D_2 f(x, y) d sigma
  $

+ Интегрирование неравенств. Если
  $f(x, y) <= g(x, y)$, то 
  $ op(integral.double, limits: #true)_D f(x, y) d sigma <= op(integral.double, limits: #true)_D g(x, y) d sigma $


  + Следствие. Если $m <= f(x, y) <= M $, то 
  $ m dot abs(D) <= op(integral.double, limits: #true)_D f(x, y) d sigma <= M dot abs(D) $

  + Следствие. 
  $ abs(op(integral.double, limits: #true)_D f(x, y) d sigma) <= op(integral.double, limits: #true)_D abs(f(x, y)) d sigma $


+ Теорема о среднем. Если функция $f(x, y)$ непрерывна в замкнутой связной области $D$, то $exists (xi, eta) in D:$

  $ f(xi, eta) =1/(abs(D)) op(integral.double, limits: #true)_D f(x, y) d sigma $

  _Доказательство._ По теореме Вейерштрасса, на связной замнкутой области $D$ функция $f$ ограничена, поэтому $exists m, M in RR: space forall (x, y) in D: space m <= f(x, y) <= M$. Используя следствие (3.1), можно написать, что 
  $ m <= 1/(abs(D)) op(integral.double, limits: #true)_D f(x, y) d sigma <= M $
  По теореме Больцано-Коши (о промежуточном значении), непрерывная функция $f$ принимает на $D$ все значения между $m$ и $M$, в частности $exists (xi, eta) in D$, для которой выполнено требуемое. $square.filled$

+ Интеграл от единицы равен площади области интегрирования.

  $ op(integral.double, limits: #true)_D  d x d y = abs(D) $

==== Сведение двойного интеграла к повторному


=== Тройные интегралы

==== Определение тройного интеграла
