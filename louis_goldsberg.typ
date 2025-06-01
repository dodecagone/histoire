#import "Sources/soldier_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#soldier_form.form(
  "Louis, David",
  "GOLDSBERG",
  "13 Août 1980",
  "Cachan",
  "Val-de-Marne",
  "183 cm",
  "M",
  align(center, image("Images/ID/id_lgoldsberg.jpg", width: 100%, height: 100%)),
  "Commandant",
  "Zêta",
  "Brigade d'Enquête sur les Cultes",
  align(center, image("Images/Signatures/sig_lgoldsberg.png")),
  // align(horizon + center, text(size: 20pt, "X")), // je sais pas à quoi ca pourrait servir
  [
  État psychologique : #errata("très", "") stable. Le Commandant L. GOLDSBERG est jugé apte au terrain.

  Le Commandant L. GOLDSBERG a été désigné par le Responsable D. TRÉMAUX comme interface entre les soldats de la Brigade d'Enquête sur les Cultes et le Quartier Général.
  ]
)

#letter.form(
  [Louis G.],
  [S. PESNAULT\ 25 rue Duployé\ 38100 Grenoble],
  "8 décembre 1999",
  "À propos d'hier",
  [
  Cher Inspecteur,

  Je suis conscient que cela a pu vous paraître étrange d'avoir été approché si inopinément, et de cette manière.
  Je tiens également à m'excuser pour mon manque de transparence, car je crains ne pas pouvoir, dans cette lettre, vous éclairer sur les raisons qui m'ont motivées à vous contacter.\
  Dans le cas où la proposition d'hier vous intrigue ou vous intéresse, je
  vous donne rendez-vous demain, à l'heure et au lieu indiqués sur le papier que je vous avais donné.
  J'attendrai un quart d'heure.
  Au-delà, je considèrerai que vous n'êtes pas interessé.\
  Dans le cas où vous venez, vous aurez les réponses à toutes vos questions.

  En espérant vous revoir,
  ],
  align(center, image("Images/Signatures/sig_lgoldsberg1.png")),
  [
  PS : Quand bien même j'ai pris toutes les précautions possibles, je vous saurais gré de ne mentionner nos échanges à personne, et surtout pas à vos supérieurs. Vous comprendrez bien assez vite si vous venez demain.
  ],
  logo: false
)

#letter.form(
  [Commandant L. GOLDSBERG\ Ministère des Armées],
  [S. PESNAULT\ 25 rue Duployé\ 38100 Grenoble],
  "10 décembre 1999",
  "Consignes de démission",
  [
  Cher Inspecteur,

  Suite à notre entrevue hier, je vous précise, comme convenu, la marche à suivre afin de quitter votre poste actuel.
  Vous l'aurez compris, pour une raison de sécurité, vous ne devrez pas préciser le véritable motif de votre démission.
  Une formule comme "Pour des raisons que je préfère ne pas révéler ..." suffit.
  Ne vous perdez pas en justification, elles ne sont pas nécessaires.\
  Je vous donne une semaine pour rédiger et envoyer la lettre.
  Prenez votre temps si vous en avez besoin, mais ne tardez pas trop car mes supérieurs ne voudront pas attendre au-delà.\ 
  J'ai également un service à vous demander.
  Apportez-moi le dossier sur les épidémies #censor("de folie") de Novembre, afin que nous le photocopions pour la brigade - je pense que c'est une excellente piste.
  Je serai au même hôtel que la dernière fois.\ 
  Je vous félicite encore pour cette lourde décision prise avec autant de hâte, et vous je garanti que vous serez plus utile dans notre service qu'à la DST.

  En vous souhaitant la bienvenue parmis nous,
  ],
  align(center, image("Images/Signatures/sig_lgoldsberg2.png")),
  [
  PS : Évidemment, nos échanges ne doivent jamais être révélés en-dehors de la brigade.
  ],
  logo: false
)
