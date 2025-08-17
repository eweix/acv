#let project(
  title: "",
  advisors: (),
  institution: "",
  date: "",
  time: "",
  access: "",
  significance: "",
  skills: "",
) = {
  pagebreak()

  heading(title)
  grid(columns: (1fr, auto))

  strong[Access.]
  [#access]

  strong[Significance.]
  [#significance]

  strong[Skills.]
  [#skills]
}
