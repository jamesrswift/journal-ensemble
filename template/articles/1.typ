#import "/src/lib.typ" as journal

#show: journal.article.rule()

#journal.contents.mark("Advancements in Medical Technology: Bridging the gap for Enhanced Healthcare")

#journal.article.one-column(top, {
  journal.article.header()

  journal.article.title[
    Advancements in Medical Technology: Bridging the gap for Enhanced Healthcare
  ]
  
  journal.article.authors[
    April Stone, David Hardson, Connor Wells, Madison Wilson
  ]

  journal.article.meta[
    #journal.article.dates((
      ("Received", "June 23 2023"),
      ("Accepted", "June 23 2023"),
      ("Published Online", "June 23 2023"),
    ))
    #linebreak()
    *Keywords:* Health Information Technology, Wearable Technology, Digital Health, Telemedicine
  ]

  journal.article.abstract-list[
    - *Background:* #lorem(45)
    - *Methods:* #lorem(40)
    - *Results:* #lorem(55)
    - *Conclusions:* #lorem(25)
  ]
})

#show: journal.article.line-numbers()

= Introduction

#lorem(125)

#lorem(125) #footnote[Arghhhh!]

== Something
#lorem(125)

#lorem(125)

= Methodology
#lorem(125)

#import "@preview/cetz:0.2.2"

#journal.elements.plot(columns: 1, figure-args: (caption: [Testing]),{
  cetz.plot.add((x)=>x, domain: (-1, 1))
})

#lorem(50)

#journal.elements.plot(columns: 1, figure-args: (caption: [Testing]),{
  cetz.plot.add((x)=>x, domain: (-1, 1))
})

#lorem(150)

#lorem(150)