#import "../elements.typ"

#let inner(..args) = page(
  numbering: none,
  {
    grid(
      gutter: 1cm,
      columns: (1fr, 1fr),
      rows: (auto, 1fr),
      // stroke: 1pt,
      ..args
    )
  }
)