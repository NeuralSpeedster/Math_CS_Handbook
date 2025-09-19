#import "util.typ": *

#set text(12pt, lang: "ru", )
#set math.equation(numbering: "(1)", supplement: none)
#set heading(numbering: "A.1.",)
#set par(
  leading: 1em,
  first-line-indent: (amount: 1.25em, all: true),
  justify: true, spacing: 1.5em,
)

#set enum(full: true, numbering: "1.1.", indent: 1.25em)
#set list(indent: 1.25em)
#align(horizon, align(center, stack(spacing: 1.5em, 
text(size: 24pt, weight: "bold", "ШАД. Хэндбук поступающего"),
text(size: 18pt, "Автор: Даниил Скороходов "),
text(size: 18pt,"@neuralspeedster"), 
text(size: 14pt, datetime.today().display("[day].[month].[year]"))
)))


#pagebreak()

#set page(width: 210mm, height: 297mm, margin: 2.5cm, numbering: "1",)

#outline(title: "Содержание")

#pagebreak()

#include "sections_full/algebra.typ"

#pagebreak()

#include "sections_full/calculus.typ"

#pagebreak()

#include "sections_full/combinatorics.typ"

#pagebreak()

#include "sections_full/probability.typ"

#pagebreak()

#include "sections_full/algorithms.typ"

#pagebreak()

#include "sections_full/DS.typ"


