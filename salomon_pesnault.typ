#import "Sources/soldier_form.typ": *

#show: form(
  "Salomon, Pierre",
  "PESNAULT",
  "19 Août 1981",
  "Nantes",
  "Loire-Atlantique",
  "179 cm",
  "M",
  align(center, move(dy: 0pt, image("Images/ID/id_spesnault.jpg", width: 100%, height: 100%))),
  "Aspirant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_spesnault.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  "Dernière recrue de la BEC. S'est distingué auprès du Lieutenant L. GOLDSBERG par sa curiosité."
)
