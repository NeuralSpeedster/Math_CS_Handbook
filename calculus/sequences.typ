== Числовые последовательности

Отображение $NN -> RR$ называется числовой последовательностью. Последовательность можно записать как $a_1, a_2, ... a_n, ...$, где $forall n in NN: a_n in RR$ или же 

$ {a_n}_(n=1)^oo $

_Членом последовательности с номером $n$_ называется пара $(n, a_n)$.

=== Предел последовательности

Число $a in RR$ называется пределом последовательности ${a_n},$ если 
$
  forall epsilon > 0 space exists N in NN: forall n > N: abs(a_n - a) < epsilon
$

Если $a$ --- предел последовательности ${a_n}$, то пишут 
$
  lim_(n->oo) a_n = a.
$

Можно дать более общее определение, если ввести следующие обозначения.

+ $overline(RR) = RR union { -oo, +oo }$
+ $accent(RR, "^") = overline(RR) union {oo}$
+ Понятие эпсилон-окрестности элемента $a in accent(RR, "^")$.
    + Если $a in RR$, то 
    $ u_epsilon (a) =_"def" (a - epsilon, a + epsilon) $

    + Если $a = -oo$, то $ u_epsilon (a) =_"def" (-oo, -1/epsilon) $

    + Если $a = +oo$, то $ u_epsilon (a) =_"def" (1/epsilon, +oo) $

    + Если $a = oo$, то 
    $ u_epsilon (a) =_"def" 
    (-oo, -1/epsilon) union (1/epsilon, +oo) 
    $

Тогда $a in accent(RR, "^")$ называется пределом последовательности ${a_n}$, если

$
  forall epsilon > 0 space exists N in NN: forall n > N: a_n in u_epsilon (a)
$
