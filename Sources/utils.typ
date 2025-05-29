// --input censoring enabled or not


#let censor(s) = {
  if sys.inputs.censored == none or sys.inputs.censored != "false" {
    return s.split("").map(s => box(hide(s), outset: (top: 2pt, bottom: 2pt, left: 1pt, right: 1pt), fill: black)).join("")
  }
  return s
}


