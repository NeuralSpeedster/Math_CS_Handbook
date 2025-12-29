#import "../util.typ": *


== Комплексный интеграл


Пусть $gamma = {z(t) = x(t) + i y(t), t in [t_1 t_2]}$ --- кусочно-гладкая кривая в комплексной плоскости и задана функция $f$, непрерывная на кривой $gamma$. Тогда при этих условиях интегралом от функции $f$ по кривой $gamma$ называют следующий интеграл:

$
  int_gamma f(z) d z := int_(t_1)^(t_2) f(z(t)) z'(t) d t.
$

Можно выразить через два криволинейных интеграла II рода:

$
  int_(t_1)^(t_2) f(z(t)) z'(t) d t = int_gamma (u d x - v d y) + i int_gamma (v d x + u d y),
$

=== Свойства комплексного интеграла

Свойства интеграла комплекснозначной функции по кривой:

+ Линейность: если $c_1, c_2 in CC$ и функции $f_1, f_2$ непрерывны на кривой $gamma$, то

  $
    int_gamma (c_1 f_1(z) + c_2 f_2(z)) d z = c_1 int_gamma f_1(z) d z + c_2 int_gamma f_2(z) d z.
  $

+ Аддитивность по кривой интегрирования: если кривая $gamma$ разбита на две части $gamma_1$ и $gamma_2$ и $gamma = gamma_1 union gamma_2$, то
  $
    int_gamma f(z) d z = int_(gamma_1) f(z) d z + int_(gamma_2) f(z) d z.
  $

+ Не зависит от параметризации кривой.

+ При изменении ориентации кривой знак интеграла меняется на противоположный:
  $
    int_( - gamma) f(z) d z = - int_gamma f(z) d z.
  $

+ Оценка модуля интеграла: 
  $
    abs(int_gamma f(z) d z) <= int_(t_1)^(t_2) abs(f(z(t))) dot sqrt((x'(t))^2 + (y'(t))^2) d t := int_gamma abs(f(z)) abs(d z).
  $

  + Пусть $cal(l) (gamma)$ --- длина кривой. Если $forall z in gamma:$ $abs(f(z)) <= M < oo$, то 
    $
      abs(int_gamma f(z) d z) <= M dot cal(l) (gamma).
    $


_Пример._ Пусть $a in CC$. Рассмотрим кривую $gamma_r = {z: |z - a| = r}$, где $r > 0$, ориентированную против часовой стрелки. Вычислим интеграл

$
  int_gamma_r (z - a)^k d z.
$

Параметризуем кривую: $z(t) = a + r e^(i phi)$, $phi in [0, 2 pi]$. Тогда

$
  int_gamma_r (z - a)^k d z = int_0^(2 pi) (r e^(i phi))^k i r e^(i phi) d phi = i r^(k+1) int_0^(2 pi) e^(i (k+1) phi) d phi = \ =
  cases(0 comma "если" k != -1, 2 pi i comma "если" k = -1.)
$

то есть 

$
  int_gamma_r (d z) / (z - a) = 2 pi i.
$

=== Теорема о почленном интегрировании


#theorem([

#emoji.book.red _Теорема._ Пусть $f_n: gamma -> CC$ и $f_n$ непрерывны на кусночно-гладкой кривой $gamma$ и ряд $limits(sum)_(k=0)^(+oo)$ сходится на $gamma$ равномерно к $s (z)$. Тогда его можно почленно интегрировать, то есть 
$
  int_gamma s (z) d z = limits(sum)_(n=0)^(+oo) int_gamma f_n (z) d z.
$
])

_Доказательство._ $square$ Так как $f_n$ непрерывны, и ряд сходится равномерно, то $f$ непрерывна на $gamma$ $=>$ интеграл $limits(integral)_gamma f(z) d z$ определён. По определению равномерной сходимости, $forall epsilon > 0 space exists N_epsilon in NN: forall n >= N_epsilon forall z in gamma$:
$
  abs(s (z) - limits(sum)_(n=0)^N f_n (z)) < epsilon
$
Напишем разницу между интегралом и частичной суммой интегралов:

$
  abs(int_gamma f(z) d z - limits(sum)_(n=0)^N int_gamma f_n (z) d z) = abs(int_gamma (f(z) - limits(sum)_(n=0)^N f_n (z)) d z) <= int_gamma abs(f(z) - limits(sum)_(n=0)^N f_n (z)) abs(d z) < epsilon cal(l) (gamma).
$

$square.filled$
