/*
Presentations section formatting logic
*/
#let pres(
  title: "", // title of presentation
  date: "", // date of presentation with datetime(year: YYYY, month: MM, day: dd)
  authors: (), // array of authors: (("Author 1"), ("Author 2"), ...)
  conference: "", // event that the presentation took place at
  location: "", // city, state, and country of the conference
  type: "", // type of presentation
) = {
  enum.item[
    #{ authors.enumerate().map(((i, author)) => text(author)).join(", ") }.
    // #for author in authors { [#author, ] }.
    #title.
    #type presented at: #emph[#conference]\;
    #date.display("[year] [month repr:long] [day]")\;
    #location.
  ]
}

/*
Poster presentation formatting logic.
*/
#let poster(
  title: "", // title of presentation
  date: "", // date of presentation with datetime(year: YYYY, month: MM, day: dd)
  authors: (), // array of authors: (("Author 1"), ("Author 2"), ...)
  conference: "", // event that the presentation took place at
  location: "", // city, state, and country of the conference
) = {
  enum.item[
    #{ authors.enumerate().map(((i, author)) => text(author)).join(", ") }.
    #title.
    #emph[#conference]\;
    #date.display("[year] [month repr:long] [day]")\;
    #location.
  ]
}

/*
Talk formatting logic.
*/
#let talk(
  title: "", // title of presentation
  date: "", // date of presentation with datetime(year: YYYY, month: MM, day: dd)
  authors: (), // array of authors: (("Author 1"), ("Author 2"), ...)
  conference: "", // event that the presentation took place at
  location: "", // city, state, and country of the conference
) = {
  enum.item[
    #{ authors.enumerate().map(((i, author)) => text(author)).join(", ") }.
    #title.
    #emph[#conference]\;
    #date.display("[year] [month repr:long] [day]")\;
    #location.
  ]
}
