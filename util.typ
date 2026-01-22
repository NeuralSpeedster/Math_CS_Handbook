#let diagram(cont) = {
  set math.equation(numbering: none)
    align(center, rect(cont))
}

#let proof(markup) = {
  let bg = rgb(163, 227, 163, 30%)
  rect(markup, fill: bg, stroke: rgb(0, 0, 0, 50%), width: 100%)
}

#let theorem(content) = {
  let bg = rgb("#edf04a4d")
  rect(content, fill: bg, stroke: rgb(0, 0, 0, 50%), width: 100%)
}

#let code_block(content, lang) = {
  let bg = rgb("#8088f34d")

  stack(dir: ttb,

  rect($triangle.r.filled space $ + lang, stroke: rgb(0, 0, 0, 50%), fill: bg),
  rect(content, fill: bg, stroke: rgb(0, 0, 0, 50%), width: 100%))
}

#let empty = $cancel(circle, length: #95%)$

#let ints  = $op("int")$ 

#let int = $op(integral, limits: #true)$

// Функция для получения текущего заголовка
#let currentH(level: 1) = {
  return context query(
  selector(heading.where(level: level)).before(here())
).len()
}

#let pp = $upright(bold(P))$ 

#let cov(x, y) = $op("Cov") (#x, #y)$

#let Res(f, a) = $limits(op("Res"))_#a #f$ 

