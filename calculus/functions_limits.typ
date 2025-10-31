== Предел функции

_Определение._ Проколотой $epsilon$-окрестностью точки $x$ называется множество
$
  accent(u, circle)_epsilon (x) = (x - epsilon, x) union (x, x + epsilon)
$

=== Определение предела по Коши

Пусть функция $f$ определена в некоторой проколотой окрестности точки $x$: $accent(u, circle) (x)$.

_Определение._ Число $A$ называется пределом функции $f$ в точке $a$, если

$
  forall epsilon > 0 space exists delta > 0: 
  forall x in accent(u, circle)_delta (a)
  => abs(f(x) - A) < epsilon
$
// TODO: добавить график

=== Определение предела по Гейне
Пусть функция $f$ определена в некоторой проколотой окрестности точки $x$: $accent(u, circle) (x)$.

_Определение._ Число $A$ называется пределом функции $f$ в точке $a$, если

$
 forall {x_n}: x_n in accent(u, circle) (a): lim_(n->oo) x_n = a => exists lim_(n->oo) f(x_n) = A
$

=== Эквивалентность определений Коши и Гейне

_Утверждение._ Определения предела по Коши и по Гейне эквивалентны.

_Доказательство._ $square$ Докажем две импликации:

+ $["Коши" => "Гейне"]$. Пусть мы знаем, что существует предел по Коши, тогда
  $
    lim_(x->a) f(x) = A
  $
  есть то же самое, что и
  $
    forall epsilon > 0 space exists delta > 0: 
    forall x in accent(u, circle)_delta (a)
    => abs(f(x) - A) < epsilon
  $

  Запишем, что $x_n -> a$, если $x_n in accent(u, circle) (a)$:
  $
    forall delta > 0 space exists N in NN: forall n >= N:
    0 < abs(x_n - a) < delta
  $
  Объединяя эти два утверждения, получим, что
  $
    forall epsilon > 0 space exists N in NN: forall n >= N:
    abs(f(x_n) - A) < epsilon 
  $
  Итак, мы получили, что если $x_n in accent(u, circle) (a)$ и $x_n -> a$, то $f(x_n) -> A$, что и требовалось доказать.
+ $["Гейне" => "Коши"].$ 

$square.filled$