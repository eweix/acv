#import "/src/lib.typ" as acv

// should pass without parameters
#acv.paper()

// should work with one author
#acv.paper(
  published: datetime(year: 2025, month: 1, day: 1),
  title: "A very impressive paper",
  authors: "Single Author",
  vol: "12",
  issue: "2",
  pages: "355-372",
  journal: "Prestigious Journal",
)

// should work with multiple authors
#acv.paper(
  authors: (
    [Firstname Lastname],
    [Corresponding Author],
  ),
  published: datetime(year: 2025, month: 1, day: 1),
  title: "A very impressive paper",
  vol: "12",
  issue: "2",
  pages: "355-372",
  journal: "Prestigious Journal",
)

// should show no parenthesis without issue
#acv.paper(
  authors: (
    [Firstname Lastname],
    [Corresponding Author],
  ),
  published: datetime(year: 2025, month: 1, day: 1),
  title: "A very impressive paper",
  vol: "12",
  pages: "355-372",
  journal: "Prestigious Journal",
)

// should only show journal and date if no volume/pages/issue
#acv.paper(
  authors: (
    [Firstname Lastname],
    [Corresponding Author],
  ),
  published: datetime(year: 2025, month: 1, day: 1),
  title: "A very impressive paper",
  journal: "Prestigious Journal",
)
