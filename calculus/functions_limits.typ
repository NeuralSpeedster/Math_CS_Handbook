#import "../util.typ": *

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
+ $["Гейне" => "Коши"].$ Предположим, что определение по Гейне выполнено, а определение по Коши --- нет. Запишем отрицание определения по Коши:
  $
    exists epsilon > 0: space forall delta > 0:
    exists x in accent(u, circle)_delta (a)
  => abs(f(x) - A) >= epsilon
  $
  Возьмём $delta = 1/n$:
  $
    exists epsilon > 0: exists x_n: 0 < abs(x_n - a) < 1/n
  => abs(f(x_n) - A) >= 1/n
  $<K_neg>
  Из $0 < abs(x_n - a) < 1/n$ по теореме о промежуточной последовательности следует, что $lim x_n = a$ и $x_n != a$.
  Тогда по определению предела по Гейне получаем, что
  $
    lim_(n->oo) f(x_n) = A.
  $
  Но, из (@K_neg) мы знаем, что $exists epsilon > 0$, что $abs(f(x_n) - A) >= epsilon$, что противоречит тому, что $A = lim f(x_n)$. Следовательно, если верно определение по Коши, то верно определение по Гейне.

Что и требовалось доказать. $square.filled$

=== Теорема о промежуточной функции
#theorem([
_Теорема._ Пусть функции $f, g, h$ определены в $accent(u, circle)_epsilon (a)$ и $  forall x in accent(u, circle)_epsilon (a):$
$
  f(x) <= g(x) <= h(x)
$<fgh_le>
и существуют пределы:
$
  lim_(x->a) f(x) = lim_(x->a) h(x) = A.
$
Тогда 
$
 lim_(x->a) g(x) = A       
$
])
_Доказательство._ $square$ Рассмотрим любую последовательность ${x_n}$, такую что
$
  forall {x_n}: x_n in accent(u, circle)_epsilon (a): lim_(n->oo) x_n = a.

$
Определим для неё последовательности:
$
  f_n = f(x_n), g_n = g(x_n), h_n = h(x_n).
$
Так как функции $f$ и $h$ стремятся к $A$ при стремлении $x$ к $a$, то по определению предела по Гейне имеем:
$
  A = lim_(n->oo) f_n = lim_(n->oo) h_n
$
В силу неравенства (@fgh_le) получаем, что 
$
  f_n <= g_n <= h_n
$
И, наконец, по #link(<intermediate_sequence_theorem>)[#text([теореме о промежуточной последовательности], fill: blue)], получаем, что $g_n -> A$, что согласно определению предела функции по гейне, означает 
$
  lim_(x->a) g(x) = A
$
Что и требовалось доказать.
$square.filled$

=== Арифметические свойства пределов функции


