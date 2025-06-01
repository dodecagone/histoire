#import "Sources/soldier_form.typ"
#import "Sources/police_form.typ"
#import "Sources/letter.typ"
#import "Sources/utils.typ": *

#police_form.form(
  "Marie",
  "",
  "Estim. 1930",
  "",
  "165 cm",
  "F",
  "50 kg",
  align(center, image("Images/ID/id_mchen2.jpg", width: 100%, height: 100%)),
  3,
  [
  Détenue en garde à vue pour trouble à l'ordre public.\
  État psychologique fortement instable.
  Ne se souvient que de son prénom. 
  Phases de délires paranoïaques, rarement entrecoupées de phases d'hystéries.\ 
  Inspecteur Pesnault cherche à la lier à #censor("Marie Chen"), disparue depuis Juillet 1998.
  ],
  errata("02/11/1999", "05/11/1999"),
  old_effect: 30%,
  censor_id: false
)
