#import "../util.typ": *
== Множества

"Элемент $a$ принадлежит множеству $A$" обозначают $a in A$. Отрицание этого утверждения обозначается $a in.not A$.

Множество $B$ называется подмножеством $A$, если $forall x in B: space x in A$. Обозначают $B subset A$.

Множества $A " и " B$ называаются равными, если $A subset B and B subset A$. Обозначают $A = B$.

Пустым множеством называется множество, не содержащее ни одного элемента. Оно является подмножеством любого множества. Обозначается $empty$. $forall A: space empty subset A$

=== Операции на множествах

Основные бинарные операции над множествами определены так:

+ Объединение. $A union B = {x | x in A or x in B}$

+ Пересечение. $A inter B = {x | x in A and x in B}$

+ Разность. $A backslash B = {x | x in A and x in.not B}$

+ Симметрическая разность. $A triangle B = (A backslash B) union (B backslash A)$


=== Свойства бинарных операций над множествами

+ Коммутативность объедиения и пересечения: 
  - $A union B = B union A$ 
  - $A inter B = B inter A$.

+ Ассоциативность объедиения и пересечения: 
  - $(A union B) union C = A union (B union C)$
  - $(A inter B) inter C = A inter (B inter C)$.

+ Дистрибутивность объедиения и пересечения: 
  - $A inter (B union C) = (A inter B) union (A inter C)$

  - $A union (B inter C) = (A union B) inter (A union C)$.

=== Кортеж

Кортежем называется упорядоченная n-ка элементов. Обозначается как $ (a_1, a_2, dots, a_n) "или " ⟨a_1, a_2, dots, a_n⟩ $.

Более строго, можно индуктивно сопоставить кортежи множествам:
- $empty <-> ⟨⟩$
- ${a_1} <-> ⟨a_1⟩$
- ${a_1, {a_1, a_2}} <-> ⟨a_1, a_2⟩$
Тогда:
- ${a_1, a_2, ..., a_n} <-> ⟨a_1, a_2, ..., a_n⟩ =_("def") ⟨⟨a_1, a_2, ..., a_(n-1)⟩, a_n ⟩$


Альтернативно, можно дать такое определение:

$ ⟨a_1, a_2, dots, a_n⟩ = f: [n] -> {a_1, a_2, dots, a_n} $

=== Декартово произведение

Декартовым произведением двух множеств $A " и " B$ называется множество всех упорядоеченных пар элементов из $A$ и $B$.

$ A times B = {(a, b) | a in A, space b in B} $

Свойства декартова произведения:

+ Некоммутативность.
  Вообще говоря, $A times B != B times A$, если $A != B$

+ Ассоциативность. $A times (B times C) = (A times B) times C$

+ Дистрибутивность относительно объедиения и пересечения(по левому и по правому множителю):

  - $A times (B union C) = A times B union A times C$
  - $A times (B inter C) = A times B inter A times C$

  - $(B union C) times A = B times A union C times A$
  - $(B inter C) times A = B times A inter C times A$


=== Мощность множества

Мощностью конечного множесвва $A = {a_1, a_2, ..., a_n}$ называется количество элементов в нём: $abs(A) = n$.

*Утверждение 1.* $A inter B = empty => abs(A union B) = abs(A) + abs(B)$ 

(#ref(<sets_union_card>, supplement: text("Уже доказано, см.",)))

*Утверждение 2.* $abs(A times B) = abs(A) dot abs(B)$ 

(#ref(<sets_product>, supplement: text("Уже доказано, см.",)))

=== Круги Эйлера


=== Формула включений и исключений




