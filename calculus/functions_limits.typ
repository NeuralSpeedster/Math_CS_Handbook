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