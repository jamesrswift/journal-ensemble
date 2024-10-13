#import "ensemble.typ": color-accent-1, color-accent-2
#import "elements/cetz-plot.typ": plot

#let marker = context text(fill: color-accent-1.get(), sym.square.filled, baseline: -0.125em)

#let sep = box(
  width: 1.25em,
  align(center, marker)
)

#let fancy-box(
  body
) = {
  place(right, move(
    dy: -0.25cm,
    dx: 0.3cm,
    context rect(
      fill: color-accent-1.get(),
      width: 1.25cm,
      height: 100% + 0.5cm,
    )
  ))

  context rect(
    width: 100%, 
    height: 100%, 
    inset: 1cm,
    fill: color-accent-2.get(),
    body
  )
}