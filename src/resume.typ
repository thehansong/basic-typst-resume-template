#import "@preview/scienceicons:0.1.0": orcid-icon
#import "icons.typ": *

#let resume(
  author: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-font-size: 20pt,
  font-size: 10pt,
  lang: "en",
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: lang,
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Reccomended to have 0.5in margin on all sides
  set page(
    margin: (0.5in),
    paper: paper,
  )

  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Header Layout
  let icon(func, color: rgb(accent-color)) = {
    box(width: 8pt, height: 8pt, func(fill: color))
  }
  
  let contact-item(value, icon-func: none, link-type: "", prefix: "", is-bold: false, icon-color: rgb(accent-color)) = {
    if value != "" {
      let display-value = if is-bold { strong(value) } else { value }
      let content = if link-type != "" {
        link(link-type + value)[#(prefix + display-value)]
      } else {
        [#(prefix + display-value)]
      }
      
      stack(dir: ltr, spacing: 0.5em,
        if icon-func != none {
          icon(icon-func, color: icon-color)
        },
        content
      )
    }
  }

  grid(
    columns: (1fr, auto, auto),
    gutter: 15pt,
    align(left + horizon)[
      #text(weight: 700, size: author-font-size)[#author]
    ],
    align(left)[ // Middle column
      #set text(size: 9pt)
      #stack(dir: ttb, spacing: 0.4em,
        contact-item(location, icon-func: fa-passport, prefix: "Nationality: ", is-bold: true, icon-color: rgb("#0B3D91")),
        contact-item(phone, icon-func: fa-phone, prefix: "Mobile: ", is-bold: true, icon-color: black),
        stack(dir: ltr, spacing: 0.5em,
          icon(fa-comments, color: rgb("#D97706")),
          stack(dir: ltr, spacing: 0.5em,
            [Languages: ],
            stack(dir: ttb, spacing: 0.4em,
              strong("English,"),
              strong("Mandarin Chinese")
            )
          )
        )
      )
    ],
    align(left)[ // Right column - Left aligned so icons line up
      #set text(size: 9pt)
      #stack(dir: ttb, spacing: 0.4em,
        contact-item(linkedin, icon-func: fa-linkedin, link-type: "https://", icon-color: rgb("#0077B5")),
        contact-item(github, icon-func: fa-github, link-type: "https://", icon-color: rgb("#000000")),
        contact-item(personal-site, icon-func: fa-globe, link-type: "https://", icon-color: rgb("#0563C1")),
        contact-item(email, icon-func: fa-envelope, link-type: "mailto:", icon-color: rgb("#CE1126")),
      )
    ]
  )

  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature becuase ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  // Makes dates on upper right like rest of components
  consistent: false,
) = {
  if consistent {
    // edu-constant style (dates top-right, location bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location),
    )
  } else {
    // original edu style (location top-right, dates bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: dates,
      bottom-left: degree,
      bottom-right: location,
    )
  }
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(company),
    top-right: dates,
    bottom-left: title,
    bottom-right: emph(location),
  )
}

#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        [*#name* #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      } else {
        [*#role*, #name #if url != "" and dates != ""  [ (#link("https://" + url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != "" {
        link("https://" + url)[#url]
      } else {
        dates
      }
    },
  )
}

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    *#name*, #issuer
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let Leadership(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}
