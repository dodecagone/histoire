#import "Sources/soldier_form.typ": *

#show: form(
  "D" + censor("aniel") + ", " + censor("Dominique"),
  "Trémaux",
  censor("8 Novembre 1940"),
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
  censor("Le Colonel Trémaux est devenu Responsable de la Brigade d'Enquête sur les Cultes à la suite de ses travaux de recherches alors qu'il n'était que secrétaire pour un détective privé. Sa perspicacité en ont fait un atout majeur dans la traque du Culte.")
)
