#import "/src/contents.typ": needle

#let contents() = {
  pagebreak(weak: true, to: "odd")

  v(1cm)
  text(size: 22pt)[Contents]
  parbreak()

  context { 
    let results = query(needle).fold((:), (acc, it)=>{
      acc.insert(it.value.scope, acc.at(it.value.scope, default: ()) + (it,))
      return acc
    })

    grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      column-gutter: 0.5em,
      row-gutter: 1.75em,

      ..(for (part, entries) in results {

        (
          strong(part), 
          strong(
            numbering(
              entries.first().location().page-numbering(), 
              ..counter(page).at(entries.first().location())
            )
          )
        )

        if entries.len() > 1 {
          for entry in entries {
            (
              grid.cell(
                inset: (left: 1em),
                {
                  entry.value.body
                  h(0.75em)
                  box(repeat[.], width: 1fr)
                }
              ), 
              numbering(
                entry.location().page-numbering(), 
                ..counter(page).at(entry.location())
              ),
            )
          }
        } 
      })
    )
  }
}