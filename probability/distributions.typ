#import "../util.typ": *

== Основные распределения

=== Непрерывные распределения

==== Нормальное распределение

Нормальное распределение задается функцией плотности

$
  p(x) = 1/(sqrt(2 pi ) dot sigma) e^(-((t-mu)^2)/(2 sigma^2))
$


Функция распределения $xi ~ N(mu, sigma)$
$
  F_xi (x) = P(xi < x) = 1/(sqrt(2 pi ) dot sigma) int_(-infinity)^x e^(-((t-mu)^2)/(2 sigma^2)) d t 
$

Определим для стандартного нормального распределения $xi ~ N(0, 1)$
$
  Phi(x) = F_(xi) (x) = 1/sqrt(2pi) int_(-infinity)^x e^(-t^2/2) d t
$

Напомним, что функция лапласа $Phi_0 (x)$ определяется как

$
  Phi_0 (x) = 1/sqrt(2pi) int_(0)^x e^(-t^2/2) d t
$
Тогда 
$
  Phi(x) = 1/2 + Phi_0 (x)
$

$
  F_xi (x) =  1/sqrt(2pi) int_(-infinity)^x e^(-t^2/2) d t = [(t - mu)/sigma = z] = 1/sqrt(2pi) int_(-infinity)^((x-mu)/sigma) e^(-z^2 / 2) d z
  = \ =
  Phi((x - mu)/sigma) = 1/2 + Phi_0 ((x-mu)/sigma)
$

Вероятность попадания в заданный интервал. Пусть $xi ~ N(mu, sigma)$. Найдём $P(xi in [alpha, beta])$

$
  P(xi in [alpha, beta]) = F_sigma (beta) - F_sigma (alpha) - Phi((beta - m)/sigma) - Phi((alpha - mu) / sigma)
  = \ =
  Phi_0 ((beta - m)/sigma) - Phi_0 ((alpha - mu) / sigma)
$