#import "../util.typ": *

== Линейные отображения

_Определение._ Пусть даны два векторных пространства $V$ и $W$. Отображение $cal(A): V -> W$ называется #underline([линейным]), если выполнены два условия:

+ $cal(x + y) = cal(x) + cal(y)$,  $forall x, y in V$.

+ $cal(lambda dot x) = lambda dot cal(x)$,  $forall lambda in RR, x in V$.

По умолчанию будем считать, что линейные отображения действуют между арифметическими пространствами, то есть  $cal(A): RR^n -> RR^m$.

=== Матрица линейного отображения

_Определение._ Матрицей $A$ линейного отображения $cal(A)$ называется матрица $m times n$, такая, что

 $ A^((j)) = cal(A) (e_i), forall j = 1, ..., n, $

 где $e_1,...e_n$ --- векторы стандартного базиса пространства $RR^n$.


- Линейное отображение $cal(A)$ однозначно определяется своей матрицей $A$.

  $square$ $forall x in RR^n: x = x_1 e_1 + ... + x_n e_n$. Но $cal(A) (x) = cal(A) (x_1 e_1) + ... + cal(A) (x_n e_n) = x_1 cal(A) (e_1) + ... + x_n cal(A) (e_n)$. $cal(A) (e_i)$ --- это столбцы нужной матрицы $A$. Обратно, если $x = x_1 A^((1)) + ... + x_n A^((n))$, то столбцы можно переписать как образы базисных векторов $RR^n$. $square.filled$

=== Алгебраические операции над линейными отображениями

+ Сложение. Пусть $cal(A), cal(B): RR^n -> RR^m$, тогда $forall x in RR^n$
  $
    cal(C) = cal(A) + cal(B) <=> cal(C) (x) = cal(A) (x) + cal(B) (x)
  $
  Здесь $cal(C)$ отображает $RR^n -> RR^m$.

+ Умножение на число. Пусть $cal(A): RR^n -> RR^m$ и $lambda in RR$, тогда $forall x in RR^n$:
  $
    cal(C) = lambda dot cal(A) <=> cal(C) (x) = lambda dot cal(A) (x)
  $
  Здесь $cal(C)$ отображает $RR^n -> RR^m$.

+ Умножение линейных отображений. Пусть $A: RR^n -> RR^m$ и $B: RR^p -> RR^n$. Тогда $cal(C): RR^p -> RR^m$:

  $
    cal(C) = cal(A) dot cal(B) <=> cal(C) (x) = cal(A) (cal(B) (x)), forall x in RR^p
  $

=== Алгебраические операции над матрицами


+ Сложение. Пусть $A, B$ - матрицы $m times n$. Для всех столбцов $forall j = 1, ..., n$:

  $ C = A +B <=> C^((j)) = A^((j)) + B^((j)) $

  Это следует из того, что для соответсвующих линейных отображений $ C^((j)) = cal(C) (e_j) = cal(A) (e_j) + cal(B) (e_j) = A^((j)) + B^((j)). $
  Или же
  #theorem([
  $
    c_(i j) = a_(i j) + b_(i j),
  $
  где $i=1, ..., m; j=1, ..., n.$
  ])

+ Умножение на число. Пусть $A$ - матрица $m times n$ и $lambda in RR$, тогда для всех столбцов $forall j = 1, ..., n$:
  $
    C = lambda dot A <=> C^((j)) = lambda dot A^((j))
  $
  Так как $cal(C) = lambda dot cal(A)$, то для всех $j = 1, ..., n$:
  $
    C = lambda dot A <=> cal(C) (e_j) = lambda dot cal(A) (e_j)
  $
  Или же
  #theorem([
  $
    C = lambda dot A <=> c_(i j) = lambda dot a_(i j),
  $
  где $i=1, ..., m; j=1, ..., n.$
  ])

+ Умножение матриц. Пусть матрица $A$ имеет размер $m times n$ и $B$ имеет размер $n times p$.
  $
    C = A dot B <=> C^((j)) = cal(C) (e_j), forall j = 1, ..., p
  $
  Так как $cal(C) = cal(A) dot cal(B)$, то для всех $j = 1, ..., p$:
  $
    cal(C) (e_j) = cal(A) (cal(B) (e_j)) = cal(A) (B^((j))) = cal(A) (b_(1 j) e_1 + ... + b_(n j) e_n) 
    = \ =
    b_(1 j) cal(A) (e_1) + ... + b_(n j) cal(A) (e_n)
    =
    b_(1 j) A^((1)) + ... + b_(n j) A^((n))
  $
  Получаем поэлементно:
  #theorem([

    $
      c_(i j) = sum_(k=1)^n a_(i k) dot b_(k j), \ forall i = 1, ..., m; j = 1, ..., p
    $
  ])