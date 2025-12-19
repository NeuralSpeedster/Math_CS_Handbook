#import "/util.typ": *

== Мера Лебега $star$

_Определение._ Длина --- это функция $mu: cal(F) -> [0, +oo]$, где $cal(F) subset 2^RR$.

_Определение._ Обозначим $Theta$ множество всех ограниченных промежутков $I subset RR$.

Пока считаем, что $cal(F) = Theta$.

Полагаем при $a < b$
$
  mu([a, b)) = b - a.
$

#theorem([
#emoji.book.red _Утверждение(субаддитивность длины)._ Пусть $A in cal(F)$ и $A$ покрыт промежутками $A_i$.
$
  A subset union.big_(i=1)^n A_i,
$
где $n in NN$ и $A_i in cal(F)$ $forall i = overline(1 \, n)$. Тогда 
$
  mu(A) <= sum_(i=1)^n mu(A_i).
$
])

#theorem([
#emoji.book.red _Утверждение(аддитивность длины)._ Если, кроме указанного выше, $A = limits(union.big)_(i=1)^n A_i$
и $A_i inter A_j = empty$ $forall i != j$, то 
$
  mu(A) = sum_(i=1)^n mu(A_i)
$
]
)

=== Лемма Гейне-Бореля

_Определение._ Покрытие множества $X$ --- это система множеств ${S_alpha}$, такая, что $X subset limits(union.big)_(alpha in cal(a)) S_alpha$.

#theorem([
  #emoji.book.red _Лемма Гейне-Бореля._ Пусть $X$ --- замкнутое ограниченное подмножество в $RR^n$. Тогда из всякой системы открытых множеств, покрывающей $X$. можно выделить конечное подпокрытие $X$.
]
)

//_Доказательство._ $square$

//$square.filled$


=== Счётная субаддитивность и аддитивность длины

#theorem([
#emoji.book.red _Утверждение._ Пусть $A in cal(F)$ и $A subset limits(union.big)_(i=1)^oo A_i$, где $forall i = overline(1 \, n): A_i in cal(F)$. Тогда 
$
  mu(A) <= sum_(i=1)^oo mu(A_i).
$

Если, кроме того, $A = limits(union.sq.big)_(i=1)^oo A_i,$
то 
$
  mu(A) = sum_(i=1)^oo mu(A_i).
$
])

_Доказательство_ $square$ Пусть $epsilon > 0$. Тогда $exists accent(A, ~) subset A$ такой, что 
$mu(accent(A, ~)) > mu(A) - epsilon$. Пусть $epsilon_i > 0$ и $forall i in NN space exists$ открытый интервал
$accent(A, hat)_i supset A_i$ такой, что $mu(accent(A, hat)_i) > mu(A_i) + epsilon_i$. Поэтому 

$
  accent(A, ~) subset A subset union.big_(i=1)^oo A_i subset union.big_(i=1)^oo accent(A, hat)_i,
$
следовательно, ${accent(A, hat)_i}_(i=1)^oo$ --- открытое покрытие компакта $accent(A, ~)$. По лемме Гейне-Бореля, существует $m in NN$: 
$
  accent(A, ~) subset union.big_(i=1)^m => mu(accent(A, ~)) <= sum_(i=1)^m mu(accent(A, hat)_i)
  < sum_(i=1)^m (mu(A_i) + epsilon_i) <= sum_(i=1)^oo mu(A_i) + sum_(i=1)^oo epsilon_i
$


//добавить лемму Гейне-Бореля.
``` work in progress```



$square.filled$

=== Определение и свойства меры

