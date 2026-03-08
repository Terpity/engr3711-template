#let report(
  title: none,
  degree: none,
  author: none,
  group_members: (),
  motor_number: none,
  columns: 1,
  doc
) = {
  set text(font: "Carlito")
  // Codly formatting
  import "@preview/codly:1.3.0": *
  import "@preview/codly-languages:0.1.8": *
  show: codly-init.with()
  codly(languages: codly-languages)
  
  set page(
    footer: context[
      Control Systems Practical Report
      #h(1fr) #counter(page).display()
    ],

  )

  let __icon(image-filename) = {
    (
      box(
        image(image-filename, width: 1.8em, height: 1em),
        baseline: .2em,
        inset: -.6pt,
        outset: 0pt,
      )
        + h(0.3em)
    )
  }

  // Codly Arduino styling
  codly(
    aliases: ("ino": "cpp"),
    languages: (
      ino: (
        name: text(size: 0.9em)[Arduino],
        color: blue.lighten(20%),
        icon: __icon("src/Arduino Logo.svg"),
      ),
    )
      + codly-languages,
  )

  // Heading styling
  show heading.where(level: 1): it => text(size: .8em, weight: 700)[#it #v(5pt)]
  show heading.where(level: 2): it => text(size: .9em, weight: 600)[#emph(it) #v(5pt)]
  show heading.where(level: 3): it => text(size: 1em, weight: 700)[#it #v(5pt)]

  // Title block
  align(center, par(leading: 1em)[
    Control Systems Report\
    #strong(title)\
    #degree\
    #author\
    #if group_members.len() == 1 [
      #group_members.at(0)
    ] else if group_members.len() == 2 [
      #group_members.at(0) and #group_members.at(1) 
    ] else if group_members.len() > 2 [
      #group_members.join(", ", last:", and ")
    ] else [
      ""
    ]\
    Motor Number: #motor_number\
  ])

  // Report content
  doc
}