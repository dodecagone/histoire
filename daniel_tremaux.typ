#import "Sources/soldier_form.typ": *

#show: form(
  121,
  text[D #censor("aniel")],
  "Trémaux",
  censor("8 Novembre 1960"),
  censor("Quimper"),
  censor("Finistère"),
  censor("172 cm"),
  censor("M"),
  align(center, move(dy: 10pt, image("Images/ID/id_dtremaux.jpg", width: 100%, height: 100%))),
  censor("Colonel"),
  censor("Zêta"),
  censor("Brigade d'Enquête sur les Cultes"),
  align(center, image("Images/Signatures/sig_dtremaux.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  ""
)
