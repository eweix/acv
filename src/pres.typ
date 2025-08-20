/*
Presentations section formatting logic
*/
#let pres(
  authors: (),
  title: "",
  conference: "",
  number: "",
  pages: "",
  date: "",
  kind: "",
  location: "",
  DOI: "",
  show_link: false,
) = {
  let credit = (
    { if pages != "" [#pages, ] },
    { if kind != "" [#kind] },
    { if number != "" [ #number] },
  )
    .enumerate()
    .map(((i, cred)) => { if cred != none [#cred] })
    .join()

  enum.item[
    #{ if type(authors) == array { authors.enumerate().map(((i, author)) => text(author)).join(", ") } else { authors } }.
    #title.
    #emph[#conference],
    // #date.display("[year] [month repr:long] [day]")\;
    #location\;
    #credit.
    #{
      if DOI != "" and show_link [DOI: #link("https://doi.org" + DOI)[#DOI]]
    }
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
