/*
Formatting logic tends to obey the ACS style guide:
https://pubs.acs.org/doi/full/10.1021/acsguide.40303
*/

/*
Formatting logic for published abstracts from presentations and talks. Follows
ACS format, with minor modifications.
*/
#let abstract(
  authors: (),
  title: "",
  conference: "",
  number: "",
  pages: "",
  date: "",
  kind: "",
  location: "",
) = {
  let credit = (
    { if pages != "" [#pages,] else [] },
    { if kind != "" [ Abstract and #kind] else [ Abstract] },
    { if number != "" [ #number] },
  )
    .enumerate()
    .map(((i, cred)) => { if cred != none { [#cred] } else { none } })
    .join()

  enum.item[
    #{ if type(authors) == array { authors.enumerate().map(((i, author)) => text(author)).join(", ") } else { authors } }.
    #title.
    #emph[#conference],
    // #date.display("[year] [month repr:long] [day]")\;
    #location\;
    #credit.
  ]
}

/*
Formatting logic for published and preprinted papers. Follows American Chemical Society
format, with minor modifications.
*/
#let paper(
  authors: (),
  title: "",
  journal: "",
  published: "",
  vol: "",
  issue: "",
  pages: "",
) = {
  // date formatting
  let date = {
    if type(published) == datetime {
      // prefer datetime form
      strong[#published.display("[year]")]
    } else {
      // handle string/content form
      strong[#published]
    }
  }

  // take list of identifiers for journal (journal name, volume, issue, pages) and flatten them into single string.
  let credit = (
    { if journal != "" { [#emph(journal) #date] } else { [#date] } },
    {
      if vol != "" [, #vol#{ if issue != "" [ (#issue)] else [] }] else {
        none
      }
    },
    { if pages != "" [, #pages] else { none } },
  )
    .enumerate()
    .map(((i, cred)) => { if cred != none { [#cred] } else { none } })
    .join()

  // the actual item listed
  enum.item[
    #{ if type(authors) == array { authors.enumerate().map(((i, author)) => text(author)).join(", ") } else { authors } }.
    #title.
    #credit.
  ]
}
