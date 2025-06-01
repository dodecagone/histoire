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
  "Sergent",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_spesnault.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  "Dernière recrue de la BEC. S'est distingué auprès du Commandant L. GOLDSBERG pour son travail à la Direction de la Sécurité du Territoire."
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
    Inspecteur divisionnaire de la DST.

    Dossier #errata("actuel", "préc.") : signalement enfant disparu dans la région.\
    Dossier actuel : conséquences épidémies #censor("folie") nuit du 01/11/99. Recherche lien avec hausse récente de taux de criminalité.
  ],
  errata("23/08/1993", "20/11/1999")
)

#letter.form(
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  [Capitaine R. Grangier\ Police Nationale \ 36, boulevard Maréchal-Leclerc \ 38000 Grenoble],
  "Grenoble, le 3 Novembre 1999",
  "L'hystérique de Chavant",
  [
  Capitaine,

  Je vous écris afin de vous faire part d'une découverte récente.
  J'ai récemment retrouvé deux avis de recherche datant de Juillet 1998.
  L'un deux a piqué ma curiosité, car il s'agit d'une jeune femme d'une vingtaine d'année dénommée Marie #censor("Chen").\ 
  Certains éléments me portent à croire qu'il s'agit de la même personne que l'hystérique que nous avons amené au poste hier, bien que cette dernière semble avoir la soixantaine.
  Il a été documenté depuis les deux guerres que le vieillissement corporel est fortement accéléré suite à l'exposition d'un traumatisme intense.\ 
  J'espère que vous saurez m'accorder un entretien avec elle afin de me permettre d'éclaircir mon jugement.

  Je vous prie d'agréer l'expression de mes salutations distinguées,
  ],
  align(center, image("Images/Signatures/sig_spesnault2.png")),
  [
  PS : Je vous ai joint les deux avis de recherches. Le deuxième, un jeune homme accompagnant Marie, n'a pas encore été retrouvé à ce jour. Tout porte à croire que Marie -- si c'est bien elle -- est la seule survivante de l'expédition.
  ]
)

#letter.form(
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  [Capitaine R. Grangier\ Police Nationale \ 36, boulevard Maréchal-Leclerc \ 38000 Grenoble],
  "Grenoble, le 8 Décembre 1999",
  "Absence demain après-midi",
  [
  Capitaine,

  Un rendez-vous médical de dernière minute me contraint à m'absenter du bureau demain 09/12 pendant l'après-midi.

  Je vous prie d'agréer l'expression de mes salutations distinguées,
  ],
  align(center, image("Images/Signatures/sig_spesnault3.png")),
  [
  ]
)

#letter.form(
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  [Commissaire X. Jean\ DIRECTION de la SURVEILLANCE du TERRITOIRE \ #censor("40, rue Marius-Berliet")\ #censor("69371 Lyon")],
  "Grenoble, le 12 Décembre 1999",
  "Lettre de démission",
  [
  Cher Monsieur,

  Pour des raisons que je préfère ne pas révéler pour le moment, j'ai pris la lourde décision de démissionner de mon poste d'Inspecteur divisionnaire à la DST.\
  Je vous prie de m'excuser pour cette nouvelle qui pourrait vous sembler inopinée, et vous remercie de la confiance que vous m'avez accordé durant mes années à la DST.

  Je vous prie d'agréer l'expression de mes salutations distinguées,
  ],
  align(center, image("Images/Signatures/sig_spesnault1.png")),
  [
  PS : J'ai encore en ma possession le dossier sur lequel je travaille depuis Novembre, je vous l'apporterai au plus tôt. Aussi, je vous suggérerait de le classer sans suite, car je pense sincèrement qu'il sera infructueux.
  ]
)

