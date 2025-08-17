#import "/src/lib.typ" as acv

// cv should pass when called without arguments
#acv.cv.with()

// cv should pass when shown with full contacts
#show: acv.cv.with(
  author: "Jacky Cao",
  location: "Cleveland OH, US",
  contacts: (
    [#link("mailto:email@domain")[email\@domain]],
    [#link("your-website-url")[personal website]],
    [#link("https://github.com/user")[gh/user]],
    [#link("https://www.linkedin.com/in/user/")[in/user]],
  ),
)
