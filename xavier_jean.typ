#import "Sources/soldier_form.typ"
#import "Sources/police_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#police_form.form(
  "Xavier",
  "Jean",
  "29 Septembre 1945",
  "Tours",
  errata("169", "") + " cm",
  "M",
  errata("91", "") + " kg",
  align(center, image("Images/ID/id_xjean.jpg", width: 100%, height: 100%)),
  0,
  [
  #errata("Inspecteur de l'", "Commissaire de l'") antenne Lyonnaise de la DST.
  ],
  errata("04/09/1965", "28/02/1972")
)

#soldier_form.form(
  censor("Xavier"),
  censor("JEAN"),
  censor("29 Septembre 1945"),
  censor("Tours"),
  censor("Indre-et-Loire"),
  censor("169 cm"),
  censor("M"),
  align(center, image("Images/ID/id_xjean1.jpg", width: 100%, height: 100%)),
  "Colonel",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_xjean0.png")),
  [
    #errata("Droiture et rigueur exceptionnelle. Meilleur élément.", "Démissionnaire. Remplacé par le Lieutenant-Colonel D. TRÉMAUX.")

    Nouveau poste : corps de direction de la Direction de la Surveillance du Territoire.
  ]
)

#letter.form(
  [Commissaire X. JEAN\ DIRECTION de la SURVEILLANCE du TERRITOIRE \ #censor("40, rue Marius-Berliet")\ #censor("69371 Lyon")],
  [Inspecteur S. PESNAULT\ 25, rue Duployé\ 38100 Grenoble],
  "Lyon, le 16 Décembre 1999",
  "Re : Lettre de démission",
  [
  Cher Salomon, 

  Je reconnais bien là les méthodes de mon cher Louis.
  Vous pouvez être fier de vous, sa division n'approche que peu de monde.\
  Je me charge de prévenir le Capitaine Grangier, ne vous souciez pas de lui.
  Le connaissant, il tentera sûrement de faire pression sur vous afin que vous restiez, mais ignorez-le, il n'est pas abilité à traiter ce genre de cas.\

  En vous souhaitant le meilleur pour l'avenir,
  ],
  align(center, image("Images/Signatures/sig_xjean.png")),
  [
  PS : Pas de problème pour le dossier, mais ne tardez pas trop à le remettre au Commissariat, votre hiérarchie pourrait ne pas apprécier.
  ],
  logo: true
)
