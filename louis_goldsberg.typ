#import "Sources/soldier_form.typ": *

#form(
  "Louis, David",
  "GOLDSBERG",
  "13 Août 1980",
  "Cachan",
  "Val-de-Marne",
  "183 cm",
  "M",
  align(center, image("Images/ID/id_lgoldsberg.jpg", width: 100%, height: 100%)),
  "Lieutenant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_lgoldsberg.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  [
  État psychologique : #errata("très", "") stable. Le Lieutenant L. GOLDSBERG est jugé apte au terrain.

  Le Lieutenant L. GOLDSBERG a été désigné par le Responsable D. TRÉMAUX comme interface entre les soldats de la Brigade d'Enquête sur les Cultes et le Quartier Général.
  ]
)
