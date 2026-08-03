#import "../util.typ": *
#let crz = $C(RR\/ZZ; CC)$


== Анализ Фурье: основы

=== Пространство периодических непрерывных комплекснозначных функций


_Определение._ Пусть $L > 0$. Функцию $f: RR -> CC$ будем называть $L$-периодической, если $forall x in RR: f(x + L) = f(x)$. 

Так как для $L$-периодической функции $f$ верно и $f(x + k dot L) = f(x) space forall k in ZZ, space forall x in RR$, то периодом функции считают минимальное $L$, для которого функция $L$-периодична. 

Для $1$-периодичных функций мы можем сказать, что $f(x + k) = f(x) space forall k in ZZ$, и называть их $ZZ$-периодичными. Например, функция $e^(2 pi i n x)$ $ZZ$-периодична.



_Обозначение._ $crz :=$ пространство непрерывных на $RR$ $ZZ$-периодичных комплекснозначных функций.

Пространство $crz$ обладает свойствами ограниченности, является алгеброй и замкнуто относительно равномерной сходимости:

+ $forall f in crz space exists M > 0: abs(f) <= M$. 

+ $forall f, g in crz:$

  - $f + g in crz$,

  - $f g in crz$,

  - $forall c in CC: c dot f in crz$

+ $crz supset {f_n}_(n=0)^oo -> f => f in crz$.

Если добавить 
$
  d_(oo) (f, g) = sup_(x in [0, 1]) abs(f(x) - g(x)),
$
то пространство $crz$ станет метрическим.


#let prd(f, g) = $chevron #f, #g chevron.r$

#let prdint(f, g) = $int_0^1 #f (x) overline(#g (x)) d x$

_Определение._ Скалярное произведение функций $f, g in crz$:
$
  prd(f, g) := prdint(f, g). 
$

Некоторые свойства скалярного произведения. $forall f, g, h in crz:$

+ $prd(g, f) = overline(prd(f, g))$.

+ $prd(f, f) >= 0$, причём равенство нулю возможно тогда и только тогда, когда $f(x) eq.triple 0$. 

+ Линейность по первому аргументу, $forall c in CC$:
  - $prd(f + g, h) = prd(f, h) + prd(g, h)$,
  - $prd(c dot f, g) = c dot prd(f, g)$.

+ Антилинейность по второму аргументу, $forall c in CC$: 
  - $prd(f, g + h) = prd(f, g) + prd(f, h)$,
  - $prd(f, c dot g) = overline(c) dot prd(f, g)$.

_Определение._ $L^2$ нормой функции $f in crz$ назовём 
$
  norm(f)_2 := sqrt(prd(f, f)) = (int_0^1 abs(f(x))^2 d x)^(1/2). 
$

Некоторые свойства $L^2$ нормы. $forall f, g, h in crz$, $forall c in CC$:

+ $norm(f)_2 = 0 <=> f(x) = 0 space forall x in RR$. 

+ $abs(prd(f, g)) <= norm(f)_2 dot norm(g)_2$.

+ $norm(f + g)_2 <= norm(f)_2 + norm(g)_2$.

+ Если $prd(f, g) = 0$, то $norm(f + g)_2^2 = norm(f)_2^2 + norm(g)_2^2$.

+ $norm(c dot f)_2 = abs(c) dot norm(f)_2$.

=== Тригонометрические полиномы

_Определение._ Для функции(характера) $e^(2 pi i n x) in crz$ есть специальное обозначение: $e_n (x) := e^(2 pi i n x)$.

_Определение._ Функция $f in crz$ называется тригонометрическим полиномом, если её можно представить в виде 

$
  f(x) = sum_(n=-N)^N c_n e_n (x), quad c_n in CC.
$

#theorem[
#emoji.book.red _Лемма._ Характеры образуют ортогональную систему:

+ $prd(e_n, e_m) = delta_(n m), quad$ где $delta_(n m)$ --- символ Кронекера. 

+ $norm(e_n)_2 = 1 quad forall n in ZZ$.
]

Если $f(x) = sum_(n=-N)^N  c_n e_n (x)$, то $forall n: abs(n) <= N$:
$
  c_n = prd(f, e_n)
$
и $prd(f, e_n) = 0$ иначе. 

Кроме того, 

$
  norm(f)_2^2 = sum_(n=-N)^N abs(c_n)^2.
$

_Определение._ Функция $accent(f, hat): ZZ -> CC$ называется $n$-м преобразованием Фурье функции $f in crz$:
$
  accent(f, hat) := prd(f, e_n) = int_0^1 f(x) e^(-2 pi i n x) d x.
$

Отсюда можно получить, что 

$
  f(x) = sum_(n=-oo)^(+oo) accent(f, hat) (n)  dot e^(2 pi i n x)
$

и 
$
  norm(f)_2^2 = sum_(n=-oo)^(+oo) abs(accent(f, hat) (n))^2, 
$

если $f$ --- тригонометрический полином. 

=== Теорема Вейрештрасса об аппроксимации 


_Определение._ Пусть $f, g in crz$. Периодической свёрткой функций $f$ и $g$ $f * g (x): RR -> CC$ назовём функцию 
$
  f * g (x) := int_0^1 f(y) g(x - y) d y.
$

Периодическая свертка лежит в пространстве $crz$, является коммутативной и билинейной.

+ $forall f, g in crz: f * g in crz$.

+ $forall f, g in crz: f * g = g * f$.

+ $forall f, g in crz: f * (g + h) = f * g + f * h$ и $forall c in CC: (c dot f) * g = c dot (f * g)$. Аналогичные свойства для второго аргумента следуют из коммутативности. 

#theorem[
_Лемма 1._ $forall f in crz:$
$
  f * e_n = accent(f, hat) (n) dot e_n
$
]
_Доказательство._ $square$ Действительно, 
$
  f * e_n (x) = int_0^1 f(y) e^(2 pi i n (x-y)) d y = e^(2 pi i n x) dot int_0^1 f(y) e^(- 2 pi i n y) d y = 
  \
  = e_n dot accent(f, hat) (n). space square.filled
$

В качестве следствия имеем 

$
  f * P = sum_(n=-N)^N accent(f, hat) (n) c_n e_n.
$

_Определение._ Пусть $epsilon > 0$ и $delta in (0, 1/2)$. Функция $f in crz$ называется периодическим $(epsilon, delta)$-приближением единицы, если 

+ $f(x) >= 0 space forall x in RR$.

+ $limits(int)_0^1 f(x) = 1$.

+ $forall x: delta <= abs(x) <= 1 - delta => f(x) < epsilon$.

#theorem[
_Лемма._ $forall epsilon > 0, space forall delta in (0, 1/2)$ существует тригонометрический полином $P$, являющийся $(epsilon, delta)$ приближением единицы.
]
_Доказательство._ $square$ Пусть $N in NN$. Определим ядро Фейера: 
$
  F_N := sum_(n=-N)^N (1 - abs(n)/N) e_n.
$
Отсюда следует, что 
$
  F_N = 1/N abs(sum_(n=0)^(N-1) e_n)^2 = 1/N abs((e_N - e_0)/(e_1 - e_0))^2 = \
  = 1/N abs(
  frac(
    e^(pi i (N-1) x ) sin (pi N x), sin (pi x)
  )
  )^2 = frac(sin^2 (pi N x), N sin^2 (pi x)),
$
если $x in.not ZZ$, а иначе $F_N (x) = N$. Кроме того, $F_N (x) >= 0 space forall x in RR$ и 
$
  int_0^1 F_N (x) d x = 1.
$
Так как синус ограничен сверху $1$ и монотонно возрастает на $[0, pi/2]$, то 
$
  F_N (x) <= 1/(N sin^2 (pi x)) <= 1/(N sin^2 (pi delta))
$
поэтому для достаточно боольших $N$ и для $delta <= abs(x) <= 1 - delta$ имеем, что $F_N <= epsilon$.
$square.filled$




#theorem[
#emoji.book.red _Теорема._ Пусть $f in crz$ и $epsilon > 0$. Тогда существует тригонометрический полином $P:$

$
  norm(f - P)_oo <= epsilon
$
]

_Доказательство._ $square$ Пусть $f in crz$. Тогда $exists M in RR: abs(f(x)) <= M space forall x in RR$.  Исходя из равномерной непрерывности $f$, $forall epsilon > 0 space exists delta > 0: abs(x - y) <= delta => abs(f(x) - f(y)) <= epsilon$ и того, что мы можем выбрать тригонометрический полином $P$, являющийся периодическим приближением единицы, мы получим, что $f * P$ является тригонгметрическим полиномом.

Для любого $epsilon > 0$ имеем 

$
  abs(f(x) - f * P (x)) =  abs(f(x) - P * f (x)) = \
  =
  abs(
    f(x) - int_0^1 f(x - y) P(y) d y 
  ) = abs(
    int_0^1 f(x) P(y) d y - int_0^1 f(x - y) P(y) d y 
  ) = \
  =
  abs(int_0^1 (f(x) - f(x - y)) P(y) d y) <= int_0^1 abs(f(x) - f(x - y)) P(y) d y.

$
Последний интеграл разобьём на три и оценим первый по равномерной непрерывности, во втором используем ограниченность и определение триг. приближения единицы, а в третьем так же используем $ZZ$-периодичность и оценку по равномерной непрерывности, короче говоря 
$
  ... = int_[0, delta] + int_[delta, 1-delta] + int_[1-delta, 1] <= \
  \
  <=
  int_0^delta epsilon P(y) d y + int_delta^(1-delta) 2 M epsilon P(y) d y + int_(1-delta)^1 abs(f(x - 1) - f(x - y)) P(y) d y <= \
  
  <= epsilon + 2 M epsilon + epsilon
$
Значит $norm(f - f * P)_oo <= (2M + 2) dot epsilon$ для любого $epsilon > 0$, а $M$ фиксировано, поэтому теорема доказана.
$square.filled$



#let prd(f, g) = $chevron #f, #g chevron.r$
#let prdint(f, g) = $int_0^1 #f (x) overline(#g (x)) d x$

=== Теорема Фурье и равенство Парсеваля

_Определение._ Частичной суммой Фурье порядка $N in NN$ функции $f in crz$ называется тригонометрический полином
$
  S_N f (x) := sum_(n=-N)^N accent(f, hat)(n) e_n (x).
$

Напомним, что средними Фейера (или суммой Фейера) функции $f$ называется свёртка с ядром Фейера:
$
  sigma_N f (x) := F_N * f (x) = sum_(n=-N)^N (1 - abs(n)/N) accent(f, hat)(n) e_n (x).
$
Из доказанной выше теоремы Вейерштрасса (в форме Фейера) мы уже знаем, что
$
  norm(f - sigma_N f)_oo -> 0.
$
Это означает, в частности, сходимость в среднеквадратичном (по норме $L^2$), так как
$
  norm(f - sigma_N f)_2 <= norm(f - sigma_N f)_oo -> 0.
$

#theorem[
#emoji.book.red _Теорема Фурье (о сходимости в среднем квадратичном)._  
Для любой функции $f in crz$ её частичные суммы Фурье сходятся к $f$ в $L^2$:
$
  norm(S_N f - f)_2 -> 0, quad N -> oo.
$
]

_Доказательство._ $square$ Рассмотрим коэффициенты Фурье $hat(f)(n)$. По лемме о свойствах скалярного произведения и ортогональности характеров имеем:
$
  norm(S_N f - S_M f)_2^2 = sum_(n=M+1)^N abs(hat(f)(n))^2 quad (N > M).
$
Для того чтобы доказать сходимость $S_N f$ в $L^2$, достаточно показать, что числовой ряд $sum_(n=-oo)^oo abs(hat(f)(n))^2$ сходится.

Из сходимости средних Фейера $sigma_N f -> f$ в $L^2$ следует, что
$
  norm(sigma_N f)_2^2 -> norm(f)_2^2.
$
С другой стороны, в силу ортонормированности системы ${e_n}$:
$
  norm(sigma_N f)_2^2 = sum_(n=-N)^N (1 - abs(n)/N)^2 abs(hat(f)(n))^2.
$
Следовательно,
$
  sum_(n=-N)^N (1 - abs(n)/N)^2 abs(hat(f)(n))^2 -> norm(f)_2^2.
$
Так как все слагаемые неотрицательны, для любого фиксированного $M$ при $N > M$
$
  sum_(n=-M)^M abs(hat(f)(n))^2 <= 
  sum_(n=-M)^M frac(abs(hat(f)(n))^2, 1 - M/N)^2) <= 
  frac(1, (1 - M/N)^2) sum_(n=-N)^N (1 - abs(n)/N)^2 abs(hat(f)(n))^2.
$
Переходя к пределу при $N -> oo$ и используя (1), получаем, что $sum_(n=-M)^M abs(hat(f)(n))^2 <= norm(f)_2^2$. Значит, частичные суммы ряда ограничены, и ряд сходится:
$
  sum_(n=-oo)^oo abs(hat(f)(n))^2 < oo.
$
Тогда последовательность ${S_N f}$ является фундаментальной в полном пространстве $L^2([0,1])$, а значит, сходится к некоторой функции $g in L^2$.

Осталось показать, что $g = f$. Для любого $n$ и $N >= abs(n)$ имеем
$
  prd(g, e_n) = lim_(N->oo) prd(S_N f, e_n) = hat(f)(n).
$
Следовательно, $g - f$ имеет все коэффициенты Фурье, равные нулю. По теореме Вейерштрасса (или по сходимости $sigma_N (g-f) -> g-f$ равномерно) получаем, что $g-f equiv 0$. Таким образом, $g = f$ в $L^2$, то есть $norm(S_N f - f)_2 -> 0$. $square.filled$

#theorem[
#emoji.book.red _Равенство Парсеваля._  
Для любой функции $f in crz$ выполняется равенство
$
  norm(f)_2^2 = sum_(n=-oo)^oo abs(hat(f)(n))^2.
$
]

_Доказательство._ $square$ Из сходимости $sigma_N f -> f$ в $L^2$ (уже установленной выше) мы имеем
$
  norm(f)_2^2 = lim_(N->oo) norm(sigma_N f)_2^2 = 
  lim_(N->oo) sum_(n=-N)^N (1 - abs(n)/N)^2 abs(hat(f)(n))^2.
$
Покажем, что этот предел равен $sum_(n=-oo)^oo abs(hat(f)(n))^2$.

Обозначим $a_n = abs(hat(f)(n))^2 >= 0$. Для любого $M in NN$ и $N > M$
$
  sum_(n=-M)^M a_n <=
  sum_(n=-N)^N (1 - abs(n)/N)^2 a_n dot frac(1, (1 - M/N)^2).
$
Устремляя $N -> oo$, получаем
$
  sum_(n=-M)^M a_n <= norm(f)_2^2 quad forall M,
$
то есть $sum_(n=-oo)^oo a_n <= norm(f)_2^2$.

С другой стороны, так как $0 <= (1 - abs(n)/N)^2 <= 1$, то для каждого $N$:
$
  sum_(n=-N)^N (1 - abs(n)/N)^2 a_n <= sum_(n=-N)^N a_n.
$
Переходя к пределу при $N -> oo$ в левой части и учитывая, что ряд справа сходится (мы доказали это в предыдущей теореме), получаем
$
  norm(f)_2^2 = lim_(N->oo) sum_(n=-N)^N (1 - abs(n)/N)^2 a_n <= 
  lim_(N->oo) sum_(n=-N)^N a_n = sum_(n=-oo)^oo a_n.
$
Итак, $sum a_n <= norm(f)_2^2$ и $norm(f)_2^2 <= sum a_n$. Следовательно,
$
  norm(f)_2^2 = sum_(n=-oo)^oo a_n = sum_(n=-oo)^oo abs(hat(f)(n))^2. square.filled
$

_Следствие._ Равенство Парсеваля также можно записать в виде:
$
  int_0^1 abs(f(x))^2 d x = sum_(n=-oo)^oo abs(hat(f)(n))^2.
$
Кроме того, для любых $f, g in crz$ справедливо обобщённое равенство Парсеваля:
$
  prd(f, g) = sum_(n=-oo)^oo hat(f)(n) overline(hat(g)(n)).
$