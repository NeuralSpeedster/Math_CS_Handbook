== Определители

_Определение._ Пусть задана квадратная матрица $A = mat(a_11, ..., a_(1 n); dots.v, ..., dots.v; dots.v, ..., dots.v;a_(n 1), dots, a_(n n)) $. 
Её определитель это число, которое обозначают $ det A = mat(a_11, ..., a_(1 n); dots.v, ..., dots.v; dots.v, ..., dots.v;  a_(n 1), dots, a_(n n); delim: "|") $

По определению оно равно

$
  det A = sum_(sigma in S_n) a_(1, sigma(1)) dot a_(2, sigma(2)) dot ... dot a_(n, sigma(n)) dot op("sgn") (sigma)
$
Где сумма ведётся по всем перестановкам $sigma in S_n$.

=== Свойства определителя

Каждая квадратная $n times n$-матрица может рассматриваться как набор из $n$ $n$-мерных векторов:
$
  det A = det(A_1, A_2, ..., A_n)
$

Определитель обладает свойствами:
+ Аддитивность:
  $
    det(A_1, ..., A'_k + A''_k, ... A_n) = det(A_1, ..., A'_k, ... A_n) + \ + det(A_1, ..., A''_k, ..., A_n)
  $
  _Доказатательство._ $square$ Согласно определению определителя, 
  $
    det A = sum_((i_1, ..., i_n)) a_(1, i_1) dot ... dot a_(k, i_k) dot ... dot a_(n, i_n) dot op("sgn") (i_1, ..., i_n)
  $
  Но $k$-я строка распадается на сумму двух, поэтому $a_(k, i_k) = a'_(k, i_k) + a''_(k, i_k)$, ракскрыв скобки, получим две суммы:

  $
    det A = sum_((i_1, ..., i_n)) a_(1, i_1) dot ... dot a'_(k, i_k) dot ... dot a_(n, i_n) dot op("sgn") (i_1, ..., i_n) + \
    + sum_((i_1, ..., i_n)) a_(1, i_1) dot ... dot a''_(k, i_k) dot ... dot a_(n, i_n) dot op("sgn") (i_1, ..., i_n) = \ = det(A_1, ..., A'_k, ... A_n) + det(A_1, ..., A''_k, ..., A_n). space square.filled
  $

+ Однородность:

  $
    det(A_1, ..., lambda dot A_k , ... A_n) = lambda det(A_1, ..., A_k , ..., A_n)
  $
  _Доказатательство_ $square$ Левая часть равна:
  $
    sum_((i_1, ..., i_n)) a_(1, i_1) dot ... dot (lambda dot a_(k, i_k)) dot ... dot a_(n, i_n) dot op("sgn") (i_1, ..., i_n) = \ = lambda  sum_((i_1, ..., i_n)) a_(1, i_1) dot ... dot a_(k, i_k) dot ... dot a_(n, i_n) dot op("sgn") (i_1, ..., i_n) = lambda det A. space square.filled
  $

+ Кососимметричность:

  $
    det(A_1, ..., A_k , ..., A_l, ... A_n) = -det(A_1, ..., A_l , ..., A_k, ... A_n)
  $
  _Доказатательство._ $square$ Пусть матрица $A'$ получена из матрицы $A$ транспозицией двух строк с номерами $k$ и $l$. Переставим в произведениях $k$-е и $k$-е элементы:
  
  $
    det A = sum_(sigma in S_n) a_(1, sigma(1)) dot ... dot a_(k, sigma(k)) dot ... dot a_(l, sigma(l)) ... dot a_(n, sigma(n)) dot op("sgn") (sigma) = 

    \
    = sum_(sigma in S_n) a_(1, sigma(1)) dot ... dot a_(l, sigma(l)) dot ... dot a_(k, sigma(k)) ... dot a_(n, sigma(n)) dot op("sgn") (sigma)

  $
  Расммотрим перестановку $pi = sigma dot tau$, где $tau = (k, l)$ --- транспозиция $k$ и $l$. Она действует на все номера, кроме $k$ и $l$ так же, как и $sigma$, кроме того, $pi in S_n$, если $sigma in S_n$.

  $
    det A = sum_(pi in S_n) a'_(1, pi(1)) dot ... dot a'_(k, pi(k)) dot ... dot a'_(l, pi(l)) ... dot a'_(n, pi(n)) dot underbrace(op("sgn") (sigma), -op("sgn") (pi)) = -det A'.
  $
  $square.filled$

+ Определитель матрицы с нулевой строкой равен нулю:

  $
    exists k: A_k = 0 => det A = 0.
  $
  _Доказатательство._ $square$ 

  $
    det A = det(A_1, ..., A_k , ..., A_n) = det(A_1, ..., 0 dot A_k , ..., A_n) = \ =_("св. 2") 0 dot det(A_1, ..., A_k , ..., A_n) = 0. space square.filled
  $

+ Если в определителе 2 строки совпадают, то определитель равен нулю:

  $
    exists k != l: A_k = A_l => det A  = 0.
  $
  _Доказательство._ $square$ Переставим строки с местами $k$ и $l$ и воспользуемся кососимметричностью:
  $
    det A = det(A_1, ..., A_k , ..., A_l, ... A_n) = -det(A_1, ..., A_l , ..., A_k, ... A_n) = \ = - det A
  $
  Но $det A = - det A => det A = 0.$ $square.filled$

+ Если в определителе две строки пропорциональны, то он равен нулю:

  $
    exists k, l: k != l: A_l = lambda dot A_k => det A = 0
  $
  _Доказатательство._ $square$ 
  $
    det(A_1, ..., A_k , ..., A_l, ... A_n) = det(A_1, ..., A_k , ..., lambda dot A_k, ... A_n) = \ =
    lambda det(A_1, ..., A_k , ..., A_k, ... A_n) = 0. space square.filled
  $

Из 1 и 2 свойства следует линейность определителя по любой строке, то есть определитель --- полилинейная кососимметричная функция строк матрицы.
