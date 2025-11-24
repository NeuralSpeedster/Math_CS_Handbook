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

#let sections(s1, s2, s3, s4, s5, s6) = {
  if s1 == 1 {
    include "sections_full/algebra.typ"
    pagebreak()
  }
  if s2 == 1 {
    include "sections_full/calculus.typ"
    pagebreak()
  }
  if s3 == 1 {
    include "sections_full/combinatorics.typ"
    pagebreak()
  }
  if s4 == 1 {
    include "sections_full/probability.typ"
    pagebreak()
  }
  if s5 == 1 {
    include "sections_full/algorithms.typ"
    pagebreak()
  }
  if s6 == 1 {
    include "sections_full/DS.typ"
  }
}

#outline(title: "Содержание")

#pagebreak()

#sections(1, 1, 1, 1, 1, 1)
