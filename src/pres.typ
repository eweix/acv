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
