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

+ Если $prd(f, g) = 0$, то $norm(f + g)_2 = norm(f)_2 + norm(g)_2$.

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

=== Теорема Вейрештрасса об аппроксимации 

=== Теорема Фурье и равенство Парсеваля


