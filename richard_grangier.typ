#import "Sources/police_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#police_form.form(
  "Richard",
  "Grangier",
  "31 Janvier 1954",
  "Grenoble",
  "185 cm",
  "M",
  "93 kg",
  align(center, image("Images/ID/id_rgrangier.jpg", width: 100%, height: 100%)),
  0,
  [
    #errata("Lieutenant", "Capitaine") à la Police Nationale de Grenoble.
  ],
  errata("23/06/1973", "05/08/1987")
)

#letter.form(
  [Capitaine R. Grangier\ Police Nationale \ 36, boulevard Maréchal-Leclerc \ 38000 Grenoble],
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  "Grenoble, 3 novembre 1999",
  "Re : L'hystérique de Chavant",
  [
  Bonjour Inspecteur,

  Je pense franchement que c'est une perte de temps d'interroger la folle. J'ai jeté un oeil aux retranscriptions : elle dit n'importe quoi.
  Je veux bien vous accorder votre entretien à condition que vous n'y passiez pas la semaine.\ 
  Quant aux deux avis de recherche, j'ai remarqué que celui du garçon mentionne une troisième personne. Il y aurait donc Marie, Joann, et \...?\
  Ménard a cherché tout l'après-midi, un troisième avis de recherche, sans trouver. Vous lui demanderez.\
  Pour Marie et Joann, à moins que vous ne fassiez des miracles avec l'autre folle, je vais les considérer comme morts et clore leurs dossier.
  Vous irez annoncer la nouvelle aux familles, si vous le souhaitez.\
  Venez me voir demain dans mon bureau pour qu'on rediscute de cet entretien.

  À demain,
  ],
  align(center, image("Images/Signatures/sig_rgrangier.png")),
  [
  ]
)

#letter.form(
  [Capitaine R. Grangier\ Police Nationale \ 36, boulevard Maréchal-Leclerc \ 38000 Grenoble],
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  "Grenoble, 17 décembre 1999",
  "Votre prétendue démission",
  [
  Inspecteur,

  J'ai viens d'apprendre, par une lettre du Commissaire, votre prétendue démission.
  Je suis à la fois surpris et déçu de la nouvelle, en partie car je ne l'apprends pas de vous.

  Votre début de carrière prometteur parmis nous peut vous garantir une promotion prestigieuse dès l'année prochaine.
  Vous êtes un élément essentiel de notre division. De plus dois-je vous apprendre que partir en coup de vent ne se fait pas, surtout sans justification.

  Je n'accepterai votre démission qu'après que nous en ayons parlé demain, dans mon bureau.

  À demain,
  ],
  align(center, image("Images/Signatures/sig_rgrangier1.png")),
  [
  ]
)

#letter.form(
  [Capitaine R. Grangier\ Police Nationale \ 36, boulevard Maréchal-Leclerc \ 38000 Grenoble],
  [Inspecteur divisionnaire S. Pesnault\ 25, rue Duployé\ 38100 Grenoble],
  "Grenoble, 23 décembre 1999",
  "Relance",
  [
  Pesnault,

  Je n'ose imaginer le dédain dont vous devez faire preuve pour ignorer mes lettres.
  J'ai appris de surcroît que le Comissaire a validé votre démission sans même me consulter.\
  Je ne sais pas à quoi vous jouez, ni comment vous vous êtes attiré les faveurs du Commissaire, mais sachez que tous les commissariats d'Isère seront informés de votre insolence.

  Joyeux Noël,
  ],
  align(center, image("Images/Signatures/sig_rgrangier2.png")),
  [
  ]
)
