/*
Education section formatting logic.
*/
#let edu(
  institution: "",
  date: "",
  degrees: (),
  gpa: "",
  location: "",
  details: "",
) = {
  [#grid(
      columns: (auto, 1fr),
      align(left)[
        #{
          for degree in degrees [
            #strong[#degree] \
          ]
        }
        #institution
        \ #{
          if gpa != "" [
            GPA: #gpa
          ]
        }
      ],
      align(right)[
        #{ if location != "" { location } }
        #{
          if type(date) == datetime [
            // parse datatime variables into nicely formatted dates
            \ #date.display("[month repr:long] [year]")
          ] else [
            // or allow strings for cases like expected graduation date
            \ #date
          ]
        }
      ],
    )
    #{ if details != "" [#details] }
  ]
}

