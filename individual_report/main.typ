//Import all libraries from template file
#import "template.typ": *

// LaTex-ify the Typst
#set page(margin: 1in)
#set text(font: "Calibri")

// Need to show word count for total word func
#show: word-count
#align(right)[
  #image("southampton_logo.png")
]

#text(16pt)[
  *Design Journal Summary* \
  FEEG6013 Group Design Project
]

// Large centered title
#v(4cm)

#align()[
  #text(24pt)[
    *33* \
    *Reconfigurable Origami Antenna;
    Mechanism of Deployment for Spacecraft
    structures, ROAM-DS
    *
  ] \

  #text(16pt)[Developing reconfigurable deployable space communication systems]
]

#v(1fr)

#line(length: 100%)


#align(left)[
  ID Number: #h(1em) 32750552\
  Name: #h(3em) Mr Yusaf Sultan\
  \


  Primary Supervisor: Dr Susmita Naskar	#h(1fr)		Co-Supervisors: Dr Tanmoy Mukhopadhyay \

  Submitted on: DD/MM/YYYY
]

#pagebreak()  // start new page after title page

#set page(
  footer: context [
    #align(right)[
      Page #counter(page).display("1") of a maximum of 15
    ]
  ],
)

// LaTex-ify the Typst
#set text(hyphenate: true)
#set par(
  spacing: 0.65em,
)

#show heading: set block(below: 1.2em)
#set par(spacing: 1.5em)
#set figure(gap: 1.5em)

#show: equate.with(breakable: true, sub-numbering: true)
#set math.equation(numbering: "(1.1)", supplement: [Eq.])
#set heading(numbering: "1.")
#set math.mat(delim: "[")
#set math.vec(delim: "[")


#counter(page).update(1)

#box(
  fill: aqua.darken(10%),
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [= Summary of Individual Contribution & Key Achievements],
)

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Summary of Individual Contribution & Key Achievements],
)
