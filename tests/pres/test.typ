#import "/src/lib.typ" as acv

#acv.pres(
  authors: ([Firstname Lastname], [Another Cool Person]),
  conference: "Amazing Conference",
  location: "Some town, MI",
  title: "Some kind of presentation",
  date: datetime(year: 2025, month: 1, day: 1),
  type: "Presentation type",
)

#acv.talk(
  authors: ([Firstname Lastname], [Another Cool Person]),
  conference: "Amazing Conference",
  location: "Some town, MI",
  title: "Fantastic talk",
  date: datetime(year: 2025, month: 1, day: 1),
)

#acv.poster(
  authors: ([Firstname Lastname], [Another Cool Person]),
  conference: "Amazing Conference",
  location: "Some town, MI",
  title: "Outstanding poster",
  date: datetime(year: 2025, month: 1, day: 1),
)
