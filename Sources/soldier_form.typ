#import "@preview/suiji:0.4.0": *
#import "@preview/grayness:0.3.0": *

#let seed = 2193193
#let seed = seed + 23268710481
#let seed = seed.bit-xor(seed.bit-lshift(7))
#let seed = seed.bit-and(0xffffffff)
#let seed = seed * 146810307;
#let seed = seed.bit-and(0xffffffff)
#let seed = seed.bit-xor(seed.bit-rshift(3))

#let yellow_alpha = (seed / 0x80000000 - 1) * 20
#let yellow_alpha = yellow_alpha * yellow_alpha.signum() + 10
#let yellow_alpha = yellow_alpha * 1%

/*
#set page(

  foreground: [
  // Yellow background (alpha can be tweaked)
  #place(top + left, rect(fill: rgb("ffffaa00"), width: 100%, height: 100%))

  // Noise background (FAST ALTERNATIVE to the textured background)
  #place(top + left, image("Backgrounds/noise1.png", height: 100%))

  // Old paper texture backgound (VERY SLOW)
  //#let data = read("Backgrounds/bg.jpg", encoding: none)
  //#place(top + left, image-transparency(data, alpha: yellow_alpha, height: 100%))
// ],
//   foreground: [

  #rotate(44deg, text(80pt, font: "Liberation Sans", fill: rgb("#ff00031A"), [
                      *CONFIDENTIEL*
            ]))

], width: 21cm, height: 25cm, margin: 5%)

*/

#let censor(str) = box(hide(str), outset: 2pt, fill: black)

#set text(lang: "fr")
#set par(first-line-indent: (amount: 2em, all: true), justify: true)


#let form(prenoms, nom, datenaissance, a, dep, taille, m_ou_f, photo, rang, division, brigade, signature, remarques) = {

set page(

  foreground: [
  // Yellow background (alpha can be tweaked)
  #place(top + left, rect(fill: rgb("ffffaa00"), width: 100%, height: 100%))

  // Noise background (FAST ALTERNATIVE to the textured background)
  #place(top + left, image("Backgrounds/noise1.png", height: 100%))

  // Old paper texture backgound (VERY SLOW)
  //#let data = read("bg.jpg", encoding: none)
  //#place(top + left, image-transparency(data, alpha: yellow_alpha, height: 100%))
// ],
//   foreground: [

  #rotate(44deg, text(80pt, font: "Liberation Sans", fill: rgb("#ff00031A"), [
                      *CONFIDENTIEL*
            ]))

], width: 21cm, height: 25cm, margin: 5%)

rotate((seed / 0x80000000 - 1) * 0.5deg)[
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
  #square(photo, inset: 0.5pt, width: 100%)
  #place(top + left, dx: 5%, dy: 5%, square(width: 90%, fill: black))
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
]
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
