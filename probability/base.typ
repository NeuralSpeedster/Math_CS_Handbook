== Основные понятия

/ Случайное событие: --- событие, про которое нельзя точно сказать, произойдёт оно или нет. Обозначают буквами латинского алфавита: $A, B, C ...$

/ Достоверным: называется событие, которое происходит всегда. Обозначается $Omega$.

/ Невозможным: называется событие, которое не может произойти. Обозначается $emptyset.rev$.

/ Вероятность случайного события: это численная мера объективной возможности наступления данного события. Обозначение: $P(A)$ --- вероятность события A.

=== Операции над событиями

$overline(A)$ --- событие, противоположное A. Заключается в том, что событие $A$ не произошло.

$A inter B$ --- произведение событий. Это событие, которое заключается в совместном происхождении событий $A, B$.

Если $A inter B = emptyset.rev$, то события $A, B$ называются несовместными. 

_Вместо $A inter B$ иногда пишут $A B$_.

$A union B$ --- объединение или сумма событий. Заключается в том, что хотя бы одно из ${A, B}$ верно.

*Закон де Моргана* в терминах событий:

$ overline(A union B) = overline(A) inter overline(B) $

$ overline(A inter B) = overline(A) union overline(B) $ 

Диаграммы Венна
// TODO: добавить картинки

*Свойства противоположного события:*

+ $overline(overline(A)) = A$

+ $A inter overline(A) = emptyset.rev$

+ $A union overline(A) = Omega $

*Свойства бинарных операций над событиями.*

+ Коммутативность: 
  - $A inter B = B inter A$;
  - $A union B = B union A$.

+ Ассоциативность: 
  - $A inter (B inter C) = (A inter B) inter C$;
  - $A union (B union C) = (A union B) union C$.


+ Дистрибутивность. 
  - $A inter (B union C) = (A inter B) union (A inter B)$;

  - $A union (B inter C) = (A union B) inter (A union C)$.

*Операция включения*

$ A subset B$ --- событие, которое заключается в том, что происхождение $B$ влечёт $A$. 

*Разность и симметрическая разность.*

Разность событий $A$ и $B$ определяется как: $ A backslash B = A inter overline(B) $

Симметрической разностью называется бинарная операция над событиями, такая, что $ A triangle B = (A union B) inter (overline(A) union overline(B)) $

Отрицание симметрической разности: 
$ overline(A triangle B) = overline(A) triangle B = A triangle overline(B) = overline(A) triangle overline(B) $

*Поглощение.*

+ $A union (A inter B) = A $
+ $A inter (A union B) = A$
+ $overline(A) union (A inter B) = overline(A) union B$
+ $overline(A) inter (A union B) = overline(A) inter B $

*Декомпозиция бинарных операций*.

+ $A union B = A triangle B triangle A B$

+ $A backslash B = A backslash (A B) $

=== Аксиомы вероятности

+ $forall A space P(A) >= 0$ (неотрицательность);
+ $P(Omega) = 1$ (Вероятность достоверного события);
+ $forall A, B: A inter B = emptyset.rev: space P(A union B) = P(A) + P(B)$. (Аддитивное свойство вероятности).

=== Следствия из Аксиом

*Теорема о вероятности противоположных событий.* $ P(A) + P(overline(A)) = 1 $.

_Доказательство:_ так как $
                            cases(A union overline(A) = Omega,
                            A inter overline(A) = emptyset.rev)
                          $
то из аксиом 2 и 3: $P(A union overline(A)) = P(Omega) = 1. space square.filled$

_Следствие из теоремы._ $$

Вероятность объединения $n$ попарно независимых событий. 


 $ 
 forall A_1, A_2, ... A_n: forall i, j: space i!=j: A_i inter A_j = emptyset.rev: \
 
 P(union.big_(1<=i<=n) A_i) = sum_(i=1)^n P(A_i) $

_Доказательство_: по индукции. $n = 2$: это аксиома 3.

Пусть верно для $n in NN$. Тогда $P(union.big_(1<=i<=n) A_i) = sum_(i=1)^n P(A_i) $ Докажем для $n + 1$: 

$ P(union.big_(1<=i<=n+1) A_i) = P([union.big_(1<=i<=n) A_i] union A_(n+1)) = P(union.big_(1<=i<=n) A_i) + \ 

+ P(A_(n+1)) = sum_(i=1)^n P(A_i) + P(A_(n+1)) = sum_(i=1)^(n+1) P(A_i) space square.filled $


