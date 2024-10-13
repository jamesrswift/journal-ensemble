#let color-accent-1 = state("color-accent-1", rgb(174,154,73))
#let color-accent-2 = state("color-accent-2", rgb(42,59,71))

#let rule(
  accent-1: rgb(174,154,73),
  accent-2: rgb(42,59,71),
) = (body) => {
  set page(paper: "a4", numbering: "1")
  set text(font: "Open Sans")
  set par(leading: 0.75em)
  show figure.caption: set align(left)
  set figure(gap: 1.2em)
  set place(clearance: 2.5em)
  color-accent-1.update(accent-1)
  color-accent-2.update(accent-2)
  body
}