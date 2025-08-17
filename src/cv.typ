/*
Base cv document template. Includes a header.
*/
#let cv(
  author: "",
  location: "",
  contacts: (),
  updated: datetime.today(),
  body,
) = {
  // Sets document metadata
  set document(author: author, title: author, date: updated)

  // Document-wide formatting, including font and margins
  set text(
    size: 11pt,
    lang: "en",
  )

  set page(
    margin: (
      top: 1.25cm,
      bottom: 1.25cm,
      left: 1.5cm,
      right: 1.5cm,
    ),
    footer: [
      #align(center)[
        #author -- CV -- #context { counter(page).display("1 of 1", both: true) }
      ]
    ],
  )

  show heading: it => text(size: 12pt, it.body)
  show heading.where(level: 1): it => pad(bottom: 12pt, smallcaps(it))
  show heading.where(level: 2): it => pad(bottom: 0pt, it)

  // show heading.where(level: 1): it => [
  //   #pad(top: 0pt, bottom: -15pt, text(size: 12pt)[#smallcaps(it.body)])
  //   #line(length: 100%, stroke: 1pt)
  // ]
  //
  // show heading.where(level: 2): it => text(size: 12pt, it.body)

  // Author
  align(center)[
    #block(text(size: 14pt, weight: 700, [#smallcaps(author)]))
  ]

  // Contact
  pad(
    top: 2pt,
    align(center)[
      #smallcaps[#contacts.join("  |  ")]
    ],
  )

  // Location
  if location != "" {
    align(center)[
      #smallcaps[#location]
    ]
  }

  // Main body.
  set par(justify: true)

  body
}
