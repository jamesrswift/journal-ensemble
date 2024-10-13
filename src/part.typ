#import "elements.typ"

#let part-state = state("__journal-ensemble:part", none)

#let update(new) = {
  part-state.update(new)
}

#let make-new-section(
  body,
  display: auto
) = {
  display = if display == auto {body} else {display}
  pagebreak(weak:true, to: "even")
  update(body)
  v(1fr)
  move(
    dx: -2.5cm,
    block(
      width: 10cm,
      height: 10cm,
      elements.fancy-box({
        set text(fill: white, size: 24pt)
        v(1fr)
        align(center,block(width: 5cm,display))
        v(1fr)
      })
    )
  )
  v(1fr)
  pagebreak(weak:true)
}

#let get() = part-state.get()