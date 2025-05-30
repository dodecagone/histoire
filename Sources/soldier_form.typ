#import "utils.typ": *
#import "@preview/suiji:0.4.0": *
#import "@preview/grayness:0.3.0": *
#import "@preview/cetz:0.3.4"

#set text(lang: "fr")
#set par(first-line-indent: (amount: 2em, all: true), justify: true)

#let form(prenoms, nom, datenaissance, a, dep, taille, m_ou_f, photo, rang, division, brigade, signature, remarques) = {

  let rng = gen-rng-f((repr(prenoms) + repr(nom)).codepoints().map(str.to-unicode).sum())

  scanned_effect(rng, 21cm, 25cm, fast: true, rotate(44deg, text(80pt, font: "Liberation Sans", fill: rgb("#ff00031A"), [*CONFIDENTIEL*])), rng => [
    #align(center)[
      #text(size: 17pt)[*DÉPARTEMENT DE L'ARMÉE DE TERRE*]

      #text(size: 17pt)[Fiche de personnel]
    ]

    #v(20pt)

    #let part(title) = align(center)[
      #line(length: 95%)
      #v(-10pt)
      #text(size: 14pt)[*#title*]
      #v(10pt)
    ]

    #let fillable(key, value) = grid(columns: (auto, 1fr))[#key : ][
        #box(place(dx: 0.3em, dy: 1pt, line(length: 100% - 10pt, stroke: 0.5pt)))
        #text(font: "Veteran Typewriter", " " + value)
      ]

    #part[Informations personnelles]

    #grid(columns: (3fr, 1fr), column-gutter: 10pt)[
      #fillable("Prénom(s)", prenoms)
      #fillable("Nom", nom)
      #fillable("Né(e) le", datenaissance)

      #grid(columns: (50%, 50%), fillable("À", a), fillable("Dep", dep))
      #grid(columns: (50%, 50%), fillable("Taille", taille), fillable("Sexe", m_ou_f))
    ][
      #square(inset: 0.5pt, width: 100%)[
        #block(clip: true, photo)

        #{
          let rotation;
          (rng, rotation) = normal-f(rng, loc: 0, scale: 0.5)
          place(center + horizon, rotate(rotation*3deg, rect(width: 70%, height: 85%, fill: black)))
        }
      ]
    ]

    #v(40pt)
    #part[Poste occupé]


    #grid(columns: (50%, 50%), fillable("Rang", rang), fillable("Division", division))

    #grid(columns: (3fr, 1fr), column-gutter: 10pt)[
      #fillable("Brigade", brigade)
    ][
      #rect(width: 100%, height: 50pt, inset: 0pt, signature)
    ]

    #part[Remarques]

    #text(font: "Veteran Typewriter", remarques)
  ])
}

// NE PAS TOUCHER À CE QUI EST AU-DESSUS, sinon tout le monde aura pas les mêmes fiches

// Il est possible de mettre des blocks de content au lieu des strings,
// mais généralement ça ne sert à rien.

/*
#form(
  "Louis",
  "Goldsberg",
  "13 Août 1980",
  "Cachan",
  "Val-de-Marne",
  "183 cm",
  "M",
  image("ID/goldsberg.jpg", width: 100%, height: 100%),
  "Lieutenant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("signature.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  "Le Lieutenant Goldsberg a été désigné par le Responsable D. Trémaux comme interface entre les troupes et le responsable 
)
*/
