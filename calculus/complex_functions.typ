#import "../util.typ": *

== Комплексные функции


=== Предел и непрерывность функции комплексного переменного

_Определение._ Пусть $D subset accent(CC, -)$. Функцией комплексного переменного называется отображение 
$f: G -> accent(CC, -)$. 

_Определение._ Пусть $f: G -> accent(CC, -)$ - функция комплексного переменного, $z_0 in accent(CC, -)$ --- предельная точка множества $G subset accent(CC, -)$. Тогда 
$A in accent(CC, -)$ называется пределом функции $f$ при в точке $z_0$, если 

$
  forall epsilon > 0 space exists delta > 0: forall z in accent(B, circle)_delta (z_0) inter G : f(z) in B_epsilon (A).
$
Обозначение: $limits(lim)_("  " G \ z -> z_0) f(z) = A$.

Если $z_0$ --- внутренняя точка множества $G$, то предел функции $f$ при $z -> z_0$ не зависит от $G$ и просто пишут $limits(lim)_(z -> z_0) f(z) = A$.

Пусть $u(x, y) = op("Re") f$, $v(x, y) = op("Im") f$.

_Предложение._ Если $CC in.rev z_0 = x_0 + i y_0$, $A in CC$, то $limits(lim)_(z -> z_0) f(z) = A$ тогда и только тогда, когда 

$
  cases(
  limits(lim)_((x comma y) -> (x_0 comma y_0)) u(x \, y) = op("Re") A \, , 
  
  limits(lim)_((x comma y) -> (x_0 comma y_0)) v(x comma y) = op("Im") A.
  )
$


_Определение._ Функция $f: G -> accent(CC, -)$ называется непрерывной в точке $z_0 in G$, если $limits(lim)_(z -> z_0) f(z) = f(z_0)$.

_Предложение._ Функция $f: G -> accent(CC, -)$ непрерывна в точке $z_0 in G$, тогда и только тогда, когда функции $u(x, y) = op("Re") f$ и $v(x, y) = op("Im") f$ непрерывны в точке $(x_0, y_0)$, где $z_0 = x_0 + i y_0$.


_Определение._ Функция $f$  называется непрерывной на множестве $G$, если она непрерывна в каждой точке множества $G$.


_Примеры непрерывных функций:_ 

+ Многочлены: $P(z) =a_n z^n + a_(n-1) z^(n-1) + ... + a_1 z + a_0$.

+ Рациональные функции: $R(z) = frac(P(z), Q(z))$, где $P(z)$ и $Q(z)$ --- многочлены, $Q(z) != 0$.

+ $f(z) = overline(z)$.

Отсюда можно получить теоремы о непрерывности и пределах, связанные с арифметическими операциями и композицией функций.


=== Производная функции комплексного переменного


_Определение._ Пусть $f$ определена в некоторой окрестности точки $z_0 in CC$ и существует конечный предел $limits(lim)_(z -> z_0) frac(f(z) - f(z_0), z - z_0)$ называется производной функции $f$ в точке $z_0$. 

Обозначаем производную в точке $z_0$ как $f'(z_0)$, а также $Delta z = z - z_0$, $Delta f = f(z) - f(z_0)$, 

$
  frac(Delta f, Delta z) = f'(z_0) + epsilon(Delta z),
$
где $epsilon(Delta z) -> 0$ при $Delta z -> 0$.

Отсюда $Delta f = f'(z_0) Delta z + epsilon(Delta z) Delta z$. Обозначим 
$alpha(Delta z) = epsilon(Delta z) Delta z$.

Тогда $limits(lim)_(Delta z -> 0) frac(alpha(Delta z), Delta z) = 0.$ В этом случае говорят, что 
$
  alpha(Delta z) = o(Delta z) space "при" space Delta z -> 0.
$

_Определение._ Функция $f$, определённая в некоторой окрестности точки $z_0 in CC$, называется дифференцируемой в точке $z_0$, если её приращение можно представить в виде
$
  Delta f = A dot Delta z + o(Delta z) space "при" space Delta z -> 0,
$
где $A in CC$. Тогда можно показать, что $A = f'(z_0)$.

Теоремы о дифференцируемости, связанные с арифметическими операциями и композицией функций, аналогичны теоремам для функций действительного переменного.

=== Условия дифференцируемости

Оказывается, что дифференцируемость функции комплексного переменного требует более строгих условий, чем дифференцируемость соответствующих функций $u(x, y)$ и $v(x, y)$.

Например, $f(z) = op("Re") z$ не является дифференцируемой ни в одной точке, хотя соответствующие функции $u(x, y) = x$ и $v(x, y) = 0$ дифференцируемы всюду. 


#theorem([
#emoji.book.red _Теорема._ Пусть $f(z) = u(x, y) + i v(x, y)$ определена в некоторой окрестности точки $z_0 = x_0 + i y_0$.  Тогда для того, чтобы $f$ была дифференцируема в точке $z_0$, необходимо и достаточно, чтобы 

+ Функции $u, v$ были дифференцируемы в точке $(x_0, y_0)$.

+ Условия Коши-Римана выполнялись в точке $(x_0, y_0)$:

$
  cases(
  frac(partial u, partial x) (x_0, y_0) = frac(partial v, partial y) (x_0, y_0) \, , 
  
  frac(partial u, partial y) (x_0, y_0) = - frac(partial v, partial x) (x_0, y_0).
  )
$
тогда 
$
  f'(z_0) = frac(partial u, partial x) (x_0, y_0) + i frac(partial v, partial x) (x_0, y_0).
$

])

_Доказательство._ $square$

+ Необходимость. Пусть $f$ дифференцируема в точке $z_0$ и $f'(z_0) = a + i b$. Тогда $Delta f = f'(z_0) Delta z + o(Delta z) = (a + i b)(Delta x + i Delta y) + alpha_1 (Delta x, Delta y) + i alpha_2 (Delta x, Delta y)$.  Тогда, имея в виду $Delta f = Delta u + i Delta v$, получаем:
  $
  cases(
  Delta u = a Delta x - b Delta y + alpha_1 (Delta x, Delta y),
  Delta v = b Delta x + a Delta y + alpha_2 (Delta x, Delta y)
  )
  $
  Мы знаем, что $alpha(z) = o(Delta z)$, то есть $limits(lim)_(Delta z -> 0) frac(abs(alpha(Delta z)), Delta z) = 0$. Кроме того, $abs(alpha_1) <= abs(alpha)$ и $abs(alpha_2) <= abs(alpha)$. Следовательно, $limits(lim)_(Delta z -> 0) frac(abs(alpha_1 (Delta x, Delta y)), sqrt(Delta x^2 + Delta y^2)) = 0$ и $limits(lim)_(Delta z -> 0) frac(abs(alpha_2 (Delta x, Delta y)), sqrt(Delta x^2 + Delta y^2)) = 0$. Отсюда следует, что функции $u$ и $v$ дифференцируемы в точке $(x_0, y_0)$ и

  $
  a = frac(partial u, partial x) (x_0, y_0) = frac(partial v, partial y) (x_0, y_0), \
  -b = frac(partial u, partial y) (x_0, y_0) = - frac(partial v, partial x) (x_0, y_0).  
  $

+ Достаточность. Пусть функции $u$ и $v$ дифференцируемы в точке $(x_0, y_0)$ и условия Коши-Римана выполняются в этой точке.

  $
    Delta f = Delta u + i Delta v = frac(partial u, partial x) Delta x + frac(partial u, partial y) Delta y + alpha_1 (Delta x, Delta y) + i (frac(partial v, partial x) Delta x + frac(partial v, partial y) Delta y + alpha_2 (Delta x, Delta y)) = \ = 

    (frac(partial u, partial x) + i frac(partial v, partial x)) (Delta x + i Delta y) + alpha_1 (Delta x, Delta y) + i alpha_2 (Delta x, Delta y) 
  $

  Но, обозначив $alpha (Delta x, Delta y) = alpha_1 (Delta x, Delta y) + i alpha_2 (Delta x, Delta y)$, получаем
  $
    abs(frac(alpha(Delta x, Delta y), Delta z)) <= frac(abs(alpha_1 (Delta x, Delta y)) + abs(alpha_2 (Delta x, Delta y)), sqrt(Delta x^2 + Delta y^2)) arrow.long_(z -> z_0) 0.
  $
  Итак, $Delta f = A dot Delta z + o(Delta z)$, где $A = frac(partial u, partial x) + i frac(partial v, partial x)$, таким образом, $f$ дифференцируема в точке $z_0$ и $f'(z_0) = A$.
  $square.filled$


_Определение._ Функция $f$ называется регулярной (или голоморфной) в области $G subset CC$, если она дифференцируема в каждой точке этой области.

_Определение._ Функцию называют регулярной в точке $z_0$, если она регулярна в некоторой окрестности этой точки.

Например, функция $f(z) = abs(z)^2$ не является регулярной ни в одной точке, включая $z = 0$.


=== Комплексная экспонента


_Определение._ Комплексной экспонентой называют такую функцию от $z = x + i y$:

$
  e^z := e^x (cos y + i sin y)
$

Ещё можно определить комплексную экспоненту с помощью ряда Тейлора:

$
  e^z := sum_(n=0)^(oo) frac(z^n, n!).
$

Найдем производную комплексной экспоненты, полагая $u(x, y) = e^x cos y$, $v(x, y) = e^x sin y$. Для этого проверим условвия Коши-Римана:

$
  cases(
  frac(partial u, partial x) = e^x cos y = frac(partial v, partial y),
  frac(partial u, partial y) = - e^x sin y = - frac(partial v, partial x).
  )
$
это верно $forall z in CC$, поэтому $e^z$ регулярна во всей комплексной плоскости и
$
  (e^z)' = frac(partial u, partial x) + i frac(partial v, partial x) = e^x cos y + i e^x sin y = e^z.
$

Это же можно получить, продифференцировав ряд Тейлора почленно:
$
  (e^z)' = sum_(n=1)^(oo) frac(n z^(n-1), n!) = sum_(n=1)^(oo) frac(z^(n-1), (n-1)!) = sum_(m=0)^(oo) frac(z^m, m!) = e^z.
$


=== Тригонометрические и гиперболические функции комплексного переменного

_Определение._ Комплексные синус и косинус определяются следующим образом

$
  sin z := frac(e^(i z) - e^(- i z), 2 i), \ cos z := frac(e^(i z) + e^(- i z), 2).
$
Можно показать, что если $z = x in RR$, то эти определения совпадают с обычными определениями синуса и косинуса.

Функции $sin z$ и $cos z$ регулярны во всей комплексной плоскости, и их производные равны
$
  (sin z)' = cos z, \ (cos z)' = - sin z.
$


_Определение._ Комплексные гиперболические функции определяются следующим образом:

$
  op("sh") z := frac(e^z - e^(-z), 2), \ op("ch") z := frac(e^z + e^(-z), 2).
$

Функции $op("sh") z$ и $op("ch") z$ регулярны во всей комплексной плоскости, и их производные равны
$
  (op("sh") z)' = op("ch") z, \ (op("ch") z)' = op("sh") z.
$

Связь между тригонометрическими и гиперболическими функциями выражается следующими формулами:

$
\ op("sh") z = i sin (i z), \ op("ch") z = cos (i z).
$