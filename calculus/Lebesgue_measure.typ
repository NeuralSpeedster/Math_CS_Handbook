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
#emoji.book.red _Утверждение(аддитивность длины)._ Если, кроме указанного выше, 
$
  A = union.big_(i=1)^n A_i
$
и $A_i inter A_j = empty$ $forall i != j$, то 
$
  mu(A) = sum_(i=1)^n mu(A_i)
$
]
)

#theorem([
#emoji.book.red _Утверждение._ Пусть $A in cal(F)$ и $A subset op(union.big, limits: #true)_(i=1)^oo A_i$, где $forall i = overline(1 \, n): A_i in cal(F)$. Тогда 
$
  mu(A) <= sum_(i=1)^oo mu(A_i).
$

Если, кроме того, 
$
  A = op(union.sq.big, limits: #true)_(i=1)^oo A_i, 
$
то 
$
  mu(A) = sum_(i=1)^oo mu(A_i).
$
])

_Доказательство_ $square$

//добавить лемму Гейне-Бореля.
``` work in progress```

$square.filled$
