#import "Sources/soldier_form.typ"
#import "Sources/police_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#police_form.form(
  "Xavier",
  "Jean",
  "29 Septembre 1945",
  "Tours",
  censor("170") + " cm",
  "M",
  censor("102") + " kg",
  align(center, image("Images/ID/id_xjean.jpg", width: 100%, height: 100%)),
  0,
  [
  #errata("Inspecteur de l'", "Commissaire de l'") antenne Lyonnaise de la DST.
  ],
  errata("04/09/1965", "28/02/1972")
)

#letter.form(
  [Commissaire X. Jean\ DIRECTION de la SURVEILLANCE du TERRITOIRE \ #censor("40, rue Marius-Berliet")\ #censor("69371 Lyon")],
  [Inspecteur S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  "Lyon, le 16 Décembre 1999",
  "Re : Lettre de démission",
  [
  Cher Salomon, 

  Je vous avoue être surpris par la nouvelle.
  Votre début de carrière très prometteur à la DST aurait pu vous garantir une promotion prestigieuse dès l'année prochaine.

  Si vous êtes sûr de votre décision, je ne peux que vous souhaiter bon courage pour l'avenir, et vous remercie pour votre contribution à la DST.
  ],
  align(center, image("Images/Signatures/sig_xjean.png")),
  [
  PS : Pas de problème pour le dossier, mais ne tardez pas trop, la hiérarchie pourrait ne pas apprécier. Je vous remercie de votre conseil, j'y réfléchirai.
  ]
)
