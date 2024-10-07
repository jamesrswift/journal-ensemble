#import "ensemble.typ": color-accent-1

#let sep = box(
  width: 1.25em,
  align(center, context {
    text(fill: color-accent-1.get(), sym.square.filled, baseline: -0.125em)
  })
)