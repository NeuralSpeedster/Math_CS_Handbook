#import "../util.typ": *

== Закон больших чисел и центральная предельная теорема

=== Неравенства Маркова и Чебышёва 

#theorem[
_Теорема(Неравенство Маркова)._ Пусть $X$ --- неотрицательная случайная величина. Тогда $forall a > 0:$
$
  pp(X >= a) <= EE[x]/(a)
$
]

_Доказательство._ $square$ Проведем для абсолютно непрерывной СВ. Так как $X >= 0$, то 
$
  EE[X] = int_(0)^(+oo) x f(x) d x = int_(0)^a x f(x) d x + int_(a)^(+oo) x f(x) d x 
$
Отсюда 
$
  EE[X] >= int_(a)^(+oo) x f(x) d x >= int_(a)^(+oo) a f(x) d x = a dot pp(X >= a) space square.filled
$




#theorem[
_Теорема(Неравенство Чебышёва)._ Пусть $X$ --- случайная величина с конечнымыми математическим ожиданием и дисперсией. Тогда $forall epsilon > 0:$
$
  pp(abs(X - EE[X]) >= epsilon) <= DD[X]/(epsilon^2) 
$
]
_Доказательство._ $square$ Рассмотрим $Y := (X - EE[X])^2$. $EE[Y] = DD[X]$. Применим к $Y$ неравенство Маркова для $a = epsilon^2$.
$
  pp((X - EE[X])^2 > epsilon^2) <= DD[X]/epsilon^2
$
$square.filled$

_Определение._ Последовательность СВ ${X_n}$ сходится по вероятности к $X$, если $forall epsilon > 0$
$
  lim_(n->oo) pp(abs(X_n - X) >= epsilon) = 0.
$
Обозначается $X_n arrow.long_(pp) X$.


=== Закон больших чисел 

#theorem[
_ЗБЧ в форме Чебышёва._ Пусть $X_1, ..., X_n$ --- последовательность некоррелированных СВ, с конечной дисперсией ограниченной одной константой $DD[X_i] <= C$. Тогда $forall epsilon > 0$:
$
  lim_(n->oo) pp(abs(1/n sum_(i=1)^n X_i - 1/n sum_(i=1)^n EE[X_i])) >= epsilon)
$
]

_Доказательство_ $square$ Пусть $overline(X_n) = 1/n sum X_i$, 
$
  EE[overline(X_n)] = 1/n sum EE[X_i]
$
$
  DD[overline(X_n)] = 1/n^2 sum DD[X_i] <= 1/n^2 dot n C = C/n.
$
Согласно неравенству Чебышёва, 
$
  pp(abs(overline(X_n) - EE(overline(X_n))) >= epsilon) <= DD[overline(X_n)]/epsilon^2 <= C/(epsilon^2 n) arrow.r_(n->oo) 0
$

$square.filled$

=== Центральная предельная теорема

#theorem[

Пусть $X_1, ..., X_n, ...$ --- последовательность независимых одинаково распределённых СВ с конечным $mu = EE[X_i]$ и $sigma^2 = DD[X_i] > 0$. Пусть $S_n := sum_(i=1)^n X_i$. Тогда 
$
  (S_n - n dot mu)/(sigma sqrt(n)) arrow.long Z ~ N(0, 1).
$

]