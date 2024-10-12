#import "part.typ"

#let needle = label("__journal-ensemble:mark-contents")

#let make(

) = [

]

#let mark(
  label: needle,
  scope: auto,
  body
) = context [
  #metadata((:
    scope: if scope == auto {part.get()} else {scope},
    body: body,
  ))
  #label
]