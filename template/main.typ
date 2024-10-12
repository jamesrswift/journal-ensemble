#import "/src/lib.typ" as journal

#show: journal.ensemble.rule()

#journal.pages.cover(
  hero: {
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
  },
  title: [Advances in Breath Analysis and its Applications]
)
#journal.pages.contents()

#journal.contents.mark(scope: "Editorial", "Editorial")

#journal.part.update("Research Articles")
#include "articles/1.typ"
#include "articles/1.typ"
#journal.part.update("Literature Reviews")
#include "articles/1.typ"
#include "articles/1.typ"
