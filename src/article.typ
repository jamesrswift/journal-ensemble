#import "part.typ"
#import "elements.typ"

#let header(citation: [CITATION]) = block(
  spacing: 3em,
  stack(
    dir: ltr,
    context part.get(),
    h(1fr),
    citation
  )
)

#let title(body) = {
  set par(justify: false)
  set text(size: 20pt, weight: 450)
  block(
    above: 1em,
    below: 1em,
    body
  )
}

#let authors(body) = {
  set par(justify: false)
  set text(size: 12pt)
  block(
    above: 1.5em,
    below: 2.5em,
    body
  )
}

#let dates(input) = {
  input.map((it)=>[#strong(it.first() + ":") #it.last()]).join(elements.sep)
}

#let meta(body) = {
  set par(justify: false)
  set text(size: 9pt)
  block(
    spacing: 3em,
    body
  )
}

#let template(
  color-accent-1: rgb("123456")
) = (body) => {
  set page(paper: "a4")
  set text(font: "Open Sans")
  set par(leading: 0.75em)
   body
}

#let abstract-list(body) = meta({
  set par(leading: 1em, justify: true)
  set list(
    marker: elements.marker, 
    indent: -1em,
    tight: false
  )
  body
})

#let rule(
  
) = (body) => {
  pagebreak(weak: true)
  set page(
    columns: 2,  
    margin: (x: 1.5cm, y: 2cm)
  )
  set par(justify: true, leading: 0.85em)
  set par.line(numbering-scope: "page")
  set text(size: 9pt)
  set heading(numbering: "1.1")
  show heading: set block(spacing: 1.5em)
  show figure: (fig) => {
    show figure.caption:  (caption) => context {
      strong({
        caption.supplement
        sym.space
        numbering(fig.numbering, ..caption.counter.at(fig.location()))
      })
      caption.separator
      caption.body
    }
    fig
  }
  body
  pagebreak(weak: true)
  counter(heading).update(0)
}

#let one-column(alignment, body) = place(
  scope: "parent",
  float: true, 
  clearance: 3em,
  alignment,
  body,
)

#let line-numbers() = (body) => {
  show par.line: set text(size: 7pt)
  set par.line(
    numbering: (n) => text(size: 5pt, str(n), baseline: -0.1em),
  )
  body
}