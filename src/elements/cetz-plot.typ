#import "@preview/cetz:0.2.2"

#let plot(
  columns: 1,
  figure-args: arguments(),
  canvas-args: arguments(),
  plot-args: arguments(),
  body
) = {
  set par.line(numbering: none)

  figure(
    placement: auto,
    scope: if columns == 1 {"column"} else {"parent"},
    ..figure-args,
    cetz.canvas(..canvas-args, {
      cetz.plot.plot(   
        size: if columns == 1 {
          (8, 4.5)
        } else if columns == 2 {
          (16, 9)
        },
        body,
        ..plot-args
      )
    })
  )
  }