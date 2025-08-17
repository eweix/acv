/*
Experience section formatting logic.

parameters:
  role: equivalent to job title
  org:
  start: start date, using datetime.
  end: end date using datetime, or "Present".
*/
#let exp(
  role: "", // equivalent to job title
  org: "", // organization/employment
  start: "", // time period of work. Month YYYY - Month YYYY is standard.
  end: "",
  location: "", // City (State), Country is a good format.
  summary: "", // one-sentence summary of the work.
  details: [], // longer summary in content form. Can be a short paragraph or bullet points.
) = {
  [#grid(
      columns: (auto, 1fr),
      align(left)[
        #strong[#role]
        \ #org
        #{
          if summary != "" [
            \ #summary
          ]
        }
      ],
      align(right)[
        #{
          if location != "" [
            #location
          ]
        }
        #text[
          \ #{
            if type(start) == datetime {
              start.display("[month repr:long] [year]")
            } else { start }
          } #{
            if end != "" [
              #{
                if type(end) == datetime {
                  end.display("- [month repr:long] [year]")
                } else [\- #end]
              }
            ]
          }]
      ],
    ) #details]
}

#let ser(
  role: "",
  org: "",
  start: "",
  end: "",
  summary: "",
) = {
  grid(
    columns: (auto, 1fr),
    align(left)[
      #org, #strong[#role]
      #{
        if summary != "" [
          \ #summary
        ]
      }
    ],
    align(right)[
      #text[
        #{
          if type(start) == datetime {
            start.display("[month repr:long] [year]")
          } else { start }
        } #{
          if end != "" [
            #{
              if type(end) == datetime {
                end.display("- [month repr:long] [year]")
              } else [\- #end]
            }
          ]
        }]
    ],
  )
}
