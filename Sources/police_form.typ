#import "utils.typ": *
#import "@preview/suiji:0.4.0": *
#import "@preview/grayness:0.3.0": *
#import "@preview/cetz:0.3.4"

#set text(lang: "fr")
#set par(first-line-indent: (amount: 2em, all: true), justify: true)

#let form(prenom, nom, datenaissance, a, taille, m_ou_f, poids, photo, type_nb, remarques, maj) = {
  set text(font: "New Computer Modern")
  set page(background: place(top + right, dx: -10pt, dy: 10pt, image("DST_desat.png", width: 30%)))

  let typedtext(c) = move(dy: -4pt, text(font: "P22 Typewriter", c))

  let rng = gen-rng-f(1+(repr(prenom) + repr(nom)).codepoints().map(str.to-unicode).sum())

  scanned_effect(rng, 21cm, 16cm, old_effect: 30%, fast: true, rotate(34deg, text(70pt, font: "Liberation Sans", fill: rgb("#ff00031A"), [*CONFIDENTIEL*])), rng => [
    #align(center)[
      #move(dx: -50pt, text(size: 15pt)[*DIRECTION de la SURVEILLANCE du TERRITOIRE*])

      #move(dx: -0pt, text(size: 14pt)[Feuille de renseignement])
    ]

    #v(20pt)

    #set text(size: 14pt)

    #let (rng, (write_dx, write_dy)) = normal-f(rng, size: 2, loc: 0, scale: 1)

    #let fillable(key, value) = grid(columns: (auto, 1fr))[#key : ][
      #typedtext(move(dx: write_dx * 1pt, dy: write_dy * 1pt, " " + value))
      //#box(place(dx: 0.3em, dy: 1pt, line(length: 100% - 10pt, stroke: 0.5pt)))
      //#typedtext(" " + value)
    ]

    #grid(columns: (3cm, 1fr), column-gutter: 10pt)[
      #rect(inset: 0.5pt, width: 3cm, height: 4cm)[
        #block(clip: true, photo)

        #{
          let rotation
          (rng, rotation) = normal-f(rng, loc: 0, scale: 0.5)
          place(center + horizon, rotate(rotation*3deg, rect(width: 70%, height: 85%, fill: black)))
        }
      ]
    ][

      #v(1em)
      #grid(columns: (1fr, 1fr), fillable("Prénom", prenom), fillable("Nom", nom))
      #v(1em)
      #grid(columns: (1fr, 1fr), fillable("Né(e) le", datenaissance), fillable("À", a))
      #v(1em)
      #grid(columns: (1fr, 1fr, 1fr), fillable("Sexe", m_ou_f), fillable("Taille", taille), fillable("Poids", poids))
    ]
    
    #v(1em)
    #let checkable(checked, txt) = {
      [*□*]
      if checked {
        let (rng, (check_dx, check_dy)) = normal-f(rng, size: 2, loc: 0, scale: 0.5)
        [#h(-12pt) #box(move(dx: check_dx * 3pt, dy: check_dy * 3pt, text(font: "P22 Typewriter", "x")))]
      }
      h(4pt)
      txt
      h(1fr)
    }
    #checkable(type_nb == 0, [Employé])
    #checkable(type_nb == 1, [Témoin])
    #checkable(type_nb == 2, [Suspect])
    #checkable(type_nb == 3, [Victime])

    #v(1em)
    #typedtext(remarques)

    #place(bottom + right)[MàJ le : #text(font: "P22 Typewriter", maj)]
  ])
}
