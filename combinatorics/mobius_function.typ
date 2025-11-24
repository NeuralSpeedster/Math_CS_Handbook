#import "../util.typ": *

== Функция Мёбиуса

_Определение._ Функцией Мёбиуса называется функция $mu: NN -> {-1, 0, 1}$, по определению равная 
$
  mu(n) = cases(
    1 \, " если" n = 1,
    (-1)^s \, " если" n = p_1 dot ... p_s,
    0 \, " иначе"
  )
$
где $p_1, ..., p_s$ — различные простые числа.

_Лемма._ Сумма значений функции Мёбиуса по делителям числа равна
$
  sum_(d | n) mu(d) = cases(
    1 \, " если" n = 1,
    0 \, " иначе"
  )
$

_Доказательство._ $square$ Если $n=1$, то утверждение тривиально. Пусть $n >= 2$. Тогда согласно основной теореме арифметики, можно написать каноническое разложение

$
  n = p_1^(alpha_1) dot ... dot p_s^(alpha_s)
$
Отсюда следует, что 
$
  d | n <=> d = p_1^(beta_1) dot ... dot p_s^(beta_s),
$
где $0 <= beta_i <= alpha_i$ для всех $i = 1, ..., s$.
$square.filled$

Тогда 
$
  sum_(d | n) mu(d) = sum_(beta_1 = 0)^alpha_1 ... sum_(beta_s = 0)^alpha_s mu(p_1^(beta_1) dot ... dot p_s^(beta_s))
$
эту сумму можно переписать так
$
  sum_(beta_1=0)^1 ... sum_(beta_s=0)^1 mu(p_1^(beta_1) dot ... dot p_s^(beta_s)) = C_s^0 + (-1) dot C_s^1 + C_s^2 + ... + (-1)^s C_s^s = 0.
$

=== Формула обращения Мёбиуса
#theorem([
#emoji.book.red Пусть $f(n)$ --- функция натурального аргумента. Пусть $g(n) = sum_(d | n) f(d)$. Тогда можно выразить $f$ через $g$:
$
  f(n) = sum_(d | n) mu(d) dot g(n/d) = sum_(d | n) mu(n/d) dot g(d)
$
])
_Доказательство._ $square$ Запишем сумму значений $g$

$
  sum_(d | n) mu(n) g(n/d) = sum_(d | n) mu(d) dot (sum_(d' | n/d) f(d')) = sum_((d, d'): d dot d' | n) mu(d) dot f(d') =
  \ =
  sum_(d | n) f(d) dot (sum_(d' | n/d) mu(d'))
  =
  f(n) dot 1 + sum_(d | n \ d < n) f(d) dot underbrace((sum_(d' | n/d) mu(d')), 0 " по лемме") =
  \
  = f(n)
$
Что и требовалось доказать. $square.filled$

=== Решение комбинаторной задачи 

Пусть дан алфавит $X = {b_1, ..., b_r}$, $n$ --- длина слова. Надо найти $T_r (n)$ --- количество всех возможных циклических слов длины $n$ над алфавитом мощности $r$. 

$square$
Пусть $a_1, ..., a_n$ --- нециклическое слово, а $(a_1, ..., a_n)$ --- циклическое слово, то есть класс эквивалентности обычных слов. 

Если сделать $n$ циклических сдвигов, то слово перейдёт в себя. 

_Определение._ Назовём периодом линейного слова минимальное натуральное число $d$ такое, что после $d$ циклических сдвигов получается исходное слово. То есть $sigma^d (a_1, ..., a_n) = (a_1, ..., a_n)$, где $sigma in S_n$ и при этом является циклом.

_Лемма 1._ У линейной последовательности длины $n$ период $d$ является делителем $n$.

_Доказательство._ $square$ Предположим, что $d cancel(|) n$. Тогда $n = d dot k + r$, где $1 <= r <= d-1$. Применим $k dot d$ циклический сдвиг, и получим исходное слово $a_1, ..., a_n$. Далее применим ещё $r$ сдвигов, и получается. что всего было сделано $n$ сдвигов и должно получиться $a_1, ..., a_n$. Но $d$ --- минимальное число сдвигов, а $r < d$ --- противоречие.
$square.filled$

_Лемма 2._ Если длина линейного слова $n$ и период $d$, то слово имеем вид:
$
  underbrace(
  underbracket(a_1\, ... \, a_d, "блок периода" d )\, 
  a_1\, ... \, a_d\, ...
  a_1\, ... \, a_d
  , n/d "блоков")
$

Обозначим $V$ множество всех линейных последовательностей длины $n$ над алфавитом $X$. Тогда $abs(V) = r^n$. Рассмотрим делители числа $n$:
$1 = d_s < d_2 < ... < d_s = n$.

Пусть $V supset V_i$ --- множество всех линейных слов периода $d_i$. Тогда 
$
  V = union.big.sq_(i=1)^s V_i => r^n = abs(V_1) + ... + abs(V_s)
$
Пусть $W_i$ --- множество всех линейных последовательностей длины $d_i$ и периода $d_i$. Тогда $abs(W_i) = abs(V_i)$. 

$
  r^n = abs(W_1) + ... + abs(W_s)
$

Пусть $U_i$ --- множество всех циклических слов, которые можно получить из слов $W_i$. Тогда $d_i dot abs(U_i) = abs(W_i)$. 

Если обозначить $M(d_i) := abs(U_i)$, то
$
  r^n = sum_(d | n) d dot M(d)
$
Чтобы воспользоваться формулой обращения Мёбиуса, можно сказать, что $g(n) = r^n$ и $f(n) = n dot M(n)$. Тогда

$
  n dot M(n) = sum_(d | n) mu(d) dot r^(n/d)
$

Итак, мы получили $M(n)$ --- количество циклических слов, которые получаются из линейных слов длины $n$ и периода $n$:
$
  M(n) = 1/n sum_(d | n) mu(d) dot r^(n/d)
$
Теперь для любого циклического слова, в силу его разбиения на $d$-блоки, мы находим искомое значение $T_r (n):$
$
  T_r (n) = sum_(d | n) M(d) = sum_(d | n) 1/d dot (sum_(d' | d) mu(d') dot r^(d/d'))
$

// можно переписать через функцию Эйлера

=== Функция Мёбиуса на ЧУМе

_Определение._ Пусть $(P, prec.curly)$ --- частично упорядоченное множество, в котором верно, что $forall x in P space exists "лишь конечное число" y: y prec.curly x$. Тогда для $x, y in P: x prec.curly y$
функция Мёбиуса $mu(x, y)$ определяется
следующим образом: 
$
  mu(x, x) = 1,
 \
 mu(x, y) = - sum_(x prec.curly z prec y) mu(x, z), "если" x prec y
$


#theorem(
  [
    #emoji.book.red _Теорема._ Если $(P, prec.curly) = (NN, |)$, то
    $
      mu(x, y) = mu(y/x)
    $
  ]
)

_Доказательство._ $square$ Индукция по величине $x/y$. 

+ База $mu(x, x) = mu(x/x) = 1$.

+ Предположим, что это верно и сделаем шаг индукции. Пусть отношение имеет каноническое разложение
  $
    y = x dot p_1^alpha_1 dot ... dot p_s^alpha_s
  $
  Запишем обобщённую функцию Мёбиуса
  $
    mu(x, y) = - sum_(x prec.curly z prec y) mu(x, z)
  $
  Распишем $z = x dot p_1^beta_1 dot ... dot p_s^beta_s$, где $forall i space 0 <= beta_i <= alpha_i$, причём $exists i: beta_i < alpha_i$, так как $z prec y$ строго! Тогда 
  $
    mu(x, y) = - sum_(x prec.curly z prec y) mu(z/x) 
    =
    - sum_((beta_1, ..., beta_s): \
    forall i: space 0 <= beta_i <= alpha_i, \
    exists i: beta_i < alpha_i
    )
    mu(p_1^beta_1 dot ... dot p_s^beta_s)
  $
  + Если все $alpha_i = 1$, то 
    $
      mu(x, y) = -sum_(
        (beta_1, ..., beta_s): \
        forall i: space 0 <= beta_i <= 1, \
        exists i: beta_i < 1
      )
      mu(p_1^beta_1 dot ... dot p_s^beta_s)
      =
      - (C_s^0 - C_s^1 + ... \ ...+ (-1)^(s-1) C_s^(s-1))
      =
      - (-(-1)^s C_s^s) = (-1)^s = mu(y/x).
    $<generalized_mob_proof>
  + Если $exists i: alpha_i >= 2$, то в суммировани в выкладке (@generalized_mob_proof) появляется $(-1)^s C_s^s$, из-за чего сумма равна нулю, что и есть $mu(y/x)$.
$square.filled$

=== Обращение Мёбиуса на ЧУМе


#theorem([
  #emoji.book.red _Теорема._ Пусть на $(P, prec.curly)$ верно $g(y) = sum_(x prec.curly y) f(x)$. Тогда 
  $
    f(y) = sum_(x prec.curly y) g(x) dot mu(x, y)
  $
])

_Доказательство._ $square$

$
  sum_(x prec.curly y) mu(x, y) dot (sum_(z prec.curly x) f(z)) = sum_(z prec.curly y) f(z) dot (sum_(z prec.curly x prec.curly y) mu(x, y)) =_("лемма") sum_(z prec.curly y) f(z) dot bold(1)_{y = z},
$
где $bold(1)_{y=z}$ --- индикатор.

Тогда 
$
  sum_(x prec.curly y) g(x) dot mu(x, y) = f(y) dot 1 + sum_(z prec y) f(z) dot bold(1)_{y = z} = f(y).
$
$square.filled$

Теперь докажем лемму, использованную в доказательстве теоремы.

#emoji.book.orange _Лемма._ Сумма значений функции Мёбиуса равна индикатору:
$
  sum_(z prec.curly x prec.curly y) mu(x, y) = bold(1)_{y = z}
$
_Доказательство._ $square$
Если $z = y$, то 
$
  sum_(z prec.curly x prec.curly y) mu(x, y) = mu(y, y) = 1 = bold(1)_{y = z}.
$
Если $z prec y$, то рассмотрим два случая: 

+ Между $z$ и $y$ нет других элементов. Тогда 
  $
    sum_(z prec.curly x prec.curly y) mu(x, y) = mu(y, y) + sum_(z prec.curly x prec y) mu(x, y) = 1 + mu(z, y)
    = \
    =
    1 - sum_(z prec.curly u prec y) mu(z, u) = 1 - mu(z, z) = 0.
  $

+ Индукция по длине длиннейшей цепочки значков $prec$ между $z$ и $y$. 
  $
    sum_(z prec.curly x prec.curly y) mu(x, y) = 1 + sum_(z prec.curly x prec y) mu(x, y) = 1 - sum_(z prec.curly x prec y) sum_(x prec.curly u prec.curly y) mu(x, u) =
    \
    =
    1 - sum_(z prec.curly u prec y) underbracket(sum_(z prec.curly x prec.curly u) mu(x, u), bold(1)_{z = u} "по предп.\n инд.") = 1 - 1 = 0. space square.filled
  $


=== Пример применения обращения Мёбиуса на ЧУМе для доказательства ФВИ

Обозначим $cal(R_n) = {1, ..., n}$. Рассмотрим ЧУМ $(2^cal(R_n), subset.eq)$.

Рассмотрим произвольные множества $A_1, ..., A_n$, необязательно элементы $2^cal(R_n)$, и пусть $A = A_1 union A_2 union ... union A_n$.

Пусть $I subset.eq cal(R_n)$. 

Определим $f(I)$ как количество элементов из $A$, которые принадлежат всем множествам $A_i$ при $i in.not I$ и могут как принадлежать, так и не принадлежать $A_i, i in I.$

$
  f(I) = abs(op(inter.big, limits: #true)_(i in.not I) A_i)
$

И пусть $g(I)$ это количество элементов из $A$, которые принадлежат всем множествам $A_i$ при $i in.not I$ и не принадлежат ни одному $A_i$ при $i in I$.

Тогда можно разбить пересечение множеств на части:
$
  f(I) = sum_(I' subset.eq I) g(I')
$
И, используя формулу обращения Мёбиуса на ЧУМе, получаем

$
  g(I) = sum_(I' subset.eq I) f(I') dot mu(I', I)
$

#emoji.book.orange _Лемма._ На ЧУМе $(2^cal(R_n), subset.eq)$ функция Мёбиуса имеет вид

$
  mu(I', I) = (-1)^(abs(I) - abs(I'))
$
докажем её позже.

Если $I = cal(R_n)$, то $g(I) = 0$, поэтому 

$
  0 = sum_(I' subset.eq cal(R_n)) f(I') dot (-1)^(n - abs(I')) dot abs(op(inter.big, limits: #true)_(i in.not I') A_i ) = f(cal(R_n)) + sum_(I' subset R_n) (-1)^(n - abs(I')) dot abs(op(inter.big, limits: #true)_(i in.not I') A_i )
$

Откуда можно найти мощность объединения, так как $f(cal(R_n)) = abs(op(union.big)_(i=1)^n A_i)$

$
  abs(op(union.big, limits: #true)_(i=1)^n A_i) = 
  sum_(I' subset cal(R_n)) (-1)^(n - abs(I') + 1) dot abs(op(inter.big, limits: #true)_(i in.not I') A_i )
$
Преобразуем через дополнение, получая ФВИ

#theorem([
$
  abs(op(union.big, limits: #true)_(i=1)^n A_i) =
  sum_(J != empty \ J subset.eq cal(R_n)) (-1)^(abs(J) + 1) dot abs(op(inter.big, limits: #true)_(j in J) A_j)
$
])

_Доказательство леммы._ $square$ Докажем индукцией по $abs(I) - abs(I')$. 

+ База. $abs(I) - abs(I') = 0$. Тогда $mu(I', I) = 1 = (-1)^0$.  #emoji.checkmark.box

+ Шаг индукции. Пусть предположение верно, и мы знаем, что $I' subset I$. Тогда 
  $
    mu(I', I) = - sum_(I' subset.eq J subset I) mu(I', J)
  $
  Так как $abs(J) - abs(I') < abs(I) - abs(I')$, то по предположению индукции
  $
    mu(I', J) = (-1)^(abs(J) - abs(I'))
  $
  Поэтому 
  $
    mu(I', I) = - sum_(I' subset.eq J subset I) (-1)^(abs(J) - abs(I')) = - sum_(k = abs(I'))^(abs(J)-1)
    (-1)^(k - abs(I')) dot C_(abs(I) - abs(I'))^(k - abs(I')) = \
    =
    - sum_(l=0)^(abs(I) - abs(I') - 1) (-1)^l dot C_(abs(I) - abs(I'))^l = - (- (-1)^(abs(I) - abs(I'))) = (-1)^(abs(I) - abs(I')). space square.filled
  $


