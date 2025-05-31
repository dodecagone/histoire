#import "Sources/soldier_form.typ"
#import "Sources/police_form.typ"
#import "Sources/utils.typ": *

#soldier_form.form(
  "Salomon, Pierre",
  "PESNAULT",
  "19 Août 1975",
  "Nantes",
  "Loire-Atlantique",
  "179 cm",
  "M",
  align(center, image("Images/ID/id_spesnault.jpg", width: 100%, height: 100%)),
  "Aspirant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_spesnault.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  "Dernière recrue de la BEC. S'est distingué auprès du Lieutenant L. GOLDSBERG par sa curiosité."
)

#police_form.form(
  "Salomon",
  "Pesnault",
  "19 Août 1975",
  "Nantes",
  "179 cm",
  "M",
  "70 kg",
  align(center, image("Images/ID/id_spesnault.jpg", width: 100%, height: 100%)),
  0,
  [
    Inspecteur de la DST.

    Dossier #errata("actuel", "préc.") : signalement enfant disparu dans la région.\
    Dossier actuel : conséquences épidémies #censor("folie") nuit du 01/11/99. Recherche lien avec hausse récente de taux de criminalité.
  ],
  errata("23/08/1993", "20/11/1999")
)
