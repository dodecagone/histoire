#import "Sources/soldier_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#soldier_form.form(
  "Yannick, Maodenn, Jacques",
  "CADORET",
  "1 Janvier 1975",
  "Paris 14e",
  "Ile-de-France",
  "195 cm",
  "M",
  align(center, image("Images/ID/id_ycadoret.jpg", width: 100%, height: 100%)),
  "Sergent",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_ycadoret.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  [
  Élément efficace. Sanguin. À surveiller.

  État psychologique : #errata("très", "   in") stable. Le Sergent Y. Cadoret #errata("est jugé apte au terrain.", "a été envoyé pour examen en cellule psychologique.")
  ]
)


#letter.form(
  [Sergent Y. CADORET],
  [Commandant L. GOLDSBERG\ Ministère des Armées],
  "TBD",
  "Demande de réhabilitation",
  [
    À l'intention du commandant,\ \

  Il est inenvisageable pour moi de ne pas participer à la prochaine opération.\
  La loyauté dont j'ai toujours fait preuve n'a jamais été remise en question.\
  
  Et ne me parlez pas d'instabilité psychologique ou je ne sais quoi.\
  S'il y a quoique ce soit que je puisse faire pour réintégrer l'équipe, dites-moi.\
  Tout ce que ces intellos disent de moi est faux, qu'ils aillent se faire voir.\
  
  La brigade, c'est tout pour moi, et j'espère que mes fidèles équipiers le savent.\
  À vous, Commandant, qui me comprendrez, j'en suis certain.\ \


  Respectueusement,
  ],
  align(center, image("Images/Signatures/sig_ycadoret.png")),
  [],
)
