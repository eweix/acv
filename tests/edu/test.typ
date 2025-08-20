#import "/src/lib.typ" as acv

// passing with nothing should return nothing
#acv.edu()

// passing without gpa should be allowed
#acv.edu(
  degrees: ([B.A. Mathematics], [Minor in Art]),
  date: datetime(year: 2025, month: 1, day: 1),
  institution: "Some college",
  location: "Some city",
)

// should be allowed to pass empty degree
#acv.edu(
  date: datetime(year: 2025, month: 1, day: 1),
  gpa: "4.00",
  institution: "Some college",
  location: "Some city",
)
