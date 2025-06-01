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

  Je pense franchement que c'est une perte de temps, et de votre talent.
  Même s'il s'agissait de la même personne (et j'en doute), ça ne ferait aucune différence pour le personnel de l'asile où elle finira internée.\
  Je vous accorde votre entretien à condition que vous ne passiez pas trop de temps sur cette affaire. Venez me voir demain matin dans mon bureau qu'on en rediscute.\
  Quant à l'autre avis de recherche, je pense aussi que le garçon est mort; je clos son dossier.
  Un détail me titille cependant : dans l'avis de recherche du garçon, il est stipulé qu'ils étaient trois personnes : Joann, Marie, et ...?
  Un de vos collègue a cherché tout l'après-midi, sans rien trouver.
  J'en déduit donc qu'aucun avis de recherche n'a été publié pour le dernier.\
  Je préférerais que vous alliez interroger la famille du garçon pour en apprendre plus sur ce fantôme.

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

  J'ai appris, par une lettre du Commissaire, votre prétendue démission.
  Je suis à la fois surpris, et déçu de la nouvelle, en partie car je ne l'apprends pas de vous.

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
