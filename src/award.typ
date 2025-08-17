/*
Award section formatting logic.
*/
#let award(
  name: "", // name of award
  date: "", // date of award
  from: "", // award-granting institutio summary: "", // short description of award
  amt: "", // amount of award - optional
  details: "", // detailed description of award.
) = {
  grid(
    columns: (3em, auto, 3em),
    align(left)[
      #{ if type(date) == datetime [#date.display("[year]")] else [#date] }
    ],
    align(left)[
      #strong[#name,] #text[#from. #details]
    ]
  )
}
