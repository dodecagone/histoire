#import "Sources/soldier_form.typ": *

#show: form(
  "Louis",
  "Goldsberg",
  "13 Août 1980",
  "Cachan",
  "Val-de-Marne",
  "183 cm",
  "M",
  image("Images/ID/id_lgoldsberg.jpg", width: 100%, height: 100%),
  "Lieutenant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_lgoldsberg.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  "Le Lieutenant Goldsberg a été désigné par le Responsable D. Trémaux comme interface entre les troupes et le responsable "
)
