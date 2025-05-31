#import "Sources/soldier_form.typ"
#import "Sources/police_form.typ"
#import "Sources/letter.typ"
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

#letter.form(
  [Inspecteur S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  [Commissaire X. Jean\ DIRECTION de la SURVEILLANCE du TERRITOIRE \ #censor("40, rue Marius-Berliet")\ #censor("69371 Lyon")],
  "Grenoble, le 12 Décembre 1999",
  "Lettre de démission",
  [
  Cher Monsieur,

  Pour des raisons que je préfère ne pas révéler pour le moment, j'ai pris la lourde décision de démissionner de mon poste d'Inspecteur à la DST.\
  Je vous prie de m'excuser pour cette nouvelle qui pourrait vous sembler inopinée, et vous remercie de la confiance que vous m'avez accordé durant mes années à la DST.

  Je vous prie d'agréer l'expression de mes salutations distinguées.
  ],
  align(center, image("Images/Signatures/sig_spesnault1.png")),
  [
  PS : J'ai encore en ma possession le dossier sur lequel je travaille depuis Novembre, je vous l'apporterai au plus tôt. Aussi, je vous suggérerait de le classer sans suite, car je pense sincèrement qu'il sera infructueux.
  ]
)
