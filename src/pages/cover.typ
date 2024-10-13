#import "../ensemble.typ"
#import "../elements.typ"

#let cover-content(
  hero: [],
  date: datetime.today(),
  volume: 1,
  issue: 1,
  title: none,
) = {
  move(
    dx: -2.5cm,
    block(
      width: 100% + 5cm,
      grid(
        columns: (1fr, 1fr),
        rows: (10cm),
        column-gutter: 1cm,
        elements.fancy-box(hero),
        grid.cell(
          inset:(y: 1cm),
          {
            date.display("[month repr:long] [year]"); linebreak()
            [Volume #volume\ ]
            [Issue #issue\ ]
            v(1fr)
            text(size: 13pt,title)
          }
        )
      )
    )
  )
}

#let cover(
  hero: [],
  date: datetime.today(),
  volume: 1,
  issue: 1,
  title: none,
) = page(
  numbering: none,
  {
    v(1fr)
    cover-content(
      hero: hero, date: date, volume: volume, issue: issue, title: title
    )
    v(1fr)
    counter(page).update(0)
  }
)
