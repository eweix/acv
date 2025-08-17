#import "/src/lib.typ" as acv

// should work with data in datetime or string form
//
#acv.award(
  name: "Award name",
  date: "2025",
  from: "Org name",
)

#acv.award(
  name: "Award name",
  date: datetime(year: 2025, month: 1, day: 1),
  from: "Org name",
)
