#import "/src/lib.typ" as journal

#show: journal.ensemble.rule()

#let logo = {
  v(1fr)
  set align(right)
  block({
    set align(left)
    set text(weight: 600)
    context text(
      size: 20pt, 
      fill: journal.ensemble.color-accent-1.get(), 
      h(0.3em) + upper[Journal Of\ ]
    )
    text(size: 32pt, fill: white, [Breathomics])
  })
}

#journal.pages.cover(
  hero: logo,
  title: [Advances in Breath Analysis and its Applications]
)

// #journal.pages.inner(
//   text(size: 32pt, weight: 600, [Breathomics]),
// )

#journal.pages.contents()

#journal.contents.mark(scope: "Editorial", "Editorial")

#journal.part.make-new-section("Letters and Communications")

#journal.part.make-new-section("Research Articles")
#include "articles/1.typ"
#include "articles/1.typ"

#journal.part.make-new-section("Literature Reviews")
#include "articles/1.typ"
#include "articles/1.typ"

#journal.part.make-new-section("Posters")

#journal.part.make-new-section("Tutorials")

