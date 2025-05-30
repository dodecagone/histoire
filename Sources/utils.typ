#import "@preview/suiji:0.4.0": *
#import "@preview/grayness:0.3.0": *
#import "@preview/cetz:0.3.4"


// --input censoring enabled or not
#let censor(s) = {
  if "censored" in sys.inputs and sys.inputs.censored == "true" {
    return s.split("").map(s => box(hide(s), outset: (top: 2pt, bottom: 2pt, left: 0.3pt, right: 0.3pt), fill: black)).join("")
  }
  return s
}

#let scanned_effect(rng, paper_width, paper_height, fast: true, multi_pages:false, nb_de_specks: 30, old_effect: 50%, additional_foreground, rng_to_content) = {
  let yellow_alpha;
  (rng, yellow_alpha) = normal-f(rng, loc: 0.6, scale: 0.2)

  let (yellow_x, yellow_y) = (0, 0)
  (rng, (yellow_x, yellow_y)) = normal-f(rng, loc: 0.5, scale: 0.1, size: 2)
  set page(foreground: {
    place(top + left, cetz.canvas(length: 1cm, {
      import cetz.draw: *

      let width = paper_width / 1cm
      let height = paper_height / 1cm
      
      let rng = rng

      for i in range(nb_de_specks) {
        let (x, y, a) = (0, 0, 0)
        (rng, x) = uniform-f(rng, low: 0, high: width)
        (rng, y) = uniform-f(rng, low: 0, high: height)
        (rng, a) = uniform-f(rng, low: 0, high: 2*calc.pi)
        let (x-new, y-new) = (0, 0)
        let v = ()
        let (l, n, na, transparency) = (0, 0, 0, 0)

        (rng, n) = integers-f(rng, low: 1, high: 4)
        (rng, transparency) = uniform-f(rng, low: 0.5, high: 1)

        for j in range(n) {
          (rng, l) = uniform-f(rng, low: 0.02, high: 0.15)
          (rng, na) = uniform-f(rng, low: -calc.pi / 5, high: calc.pi / 5)
          a += na
          (x-new, y-new) = (x + l*calc.cos(a), y + l*calc.sin(a))
          
          //(rng, v) = uniform-f(rng, low: -0.1, high: 0.1, size: 2)
          //(x-new, y-new) = (x - v.at(1), y - v.at(0))
          
          let col = rgb("777777").transparentize(transparency * (100% - old_effect))
          line(stroke: (paint: col, cap: "round", thickness: 1pt),
            (x, y), (x-new, y-new)
          )
          (x, y) = (x-new, y-new)
        }
      }
      circle((width, height), radius: 0.01)
    }))

    // Yellow background (alpha can be tweaked)
    place(top + left, rect(fill: rgb("ffffaa00"), width: 100%, height: 100%))

    if fast {
      // Noise background (FAST ALTERNATIVE to the textured background)
      place(top + left, image("Backgrounds/noise1.png", height: 100%))
    } else {
      // Old paper texture backgound (VERY SLOW)
      let data = read("Backgrounds/bg.jpg", encoding: none)
      place(top + left, image-transparency(data, alpha: yellow_alpha * old_effect, height: 100%))
    }

    additional_foreground
    
  }, fill: gradient.radial(center: (yellow_x*100%, yellow_y*100%), rgb("FFFFFF00"), rgb("FFFFAA").transparentize(100% - yellow_alpha * old_effect)), width: paper_width, height: paper_height, margin: 5%)

  let rotation;
  (rng, rotation) = normal-f(rng, loc: 0, scale: 0.5)

  let mycontent = text(fill: gradient.radial(center: (yellow_x*100%, yellow_y*100%), black, rgb("FFFFAA").mix((black, 100%-yellow_alpha * old_effect))), rng_to_content(rng))

  if multi_pages {
    mycontent
  }
  else {
    rotate(rotation * 1deg, mycontent, reflow: true)
  }
}
