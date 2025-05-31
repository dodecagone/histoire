#import "utils.typ": *
#import "@preview/suiji:0.4.0": *
#import "@preview/grayness:0.3.0": *
#import "@preview/cetz:0.3.4"

#set text(lang: "fr")
#set par(first-line-indent: (amount: 2em, all: true), justify: true)

#let form(expediteur, destinataire, lieu_date, objet, contenu, signature, postscript) = {
  set text(font: "New Computer Modern")
  set page(background: place(top + right, dx: -10pt, dy: 10pt, image("DST_desat.png", width: 30%)))

  let rng = gen-rng-f(1+(repr(expediteur) + repr(destinataire) + repr(lieu_date)).codepoints().map(str.to-unicode).sum())


  let (rng, (write_dx, write_dy)) = normal-f(rng, size: 2, loc: 0, scale: 1)
  let typedtext(c) = move(dy: -3pt, text(font: "P22 Typewriter", move(dx: write_dx * 1pt, dy: write_dy * 1pt, c)))


  scanned_effect(rng, 21cm, 29.7cm, old_effect:30%, fast:true, rotate(49deg, text(90pt,font:"Liberation Sans",fill: rgb("#ff00031A"), [*CONFIDENTIEL*])),rng=>[
  
    #set text(size:14pt)
    
    #grid(columns:(59fr,41fr))[][#typedtext(destinataire)]
    #grid(columns:(auto,auto))[#typedtext(expediteur)][#align(right, typedtext(lieu_date))]
    
    #v(2em)
    #typedtext([Objet : #objet])
    #v(2em)
    #typedtext(contenu)
    
    #grid(columns:(6fr,4fr))[][
      #rect(width:100%,stroke:0pt,inset:0pt,signature)
    ]

    #v(2em)
    #typedtext(postscript)

  ])
}
