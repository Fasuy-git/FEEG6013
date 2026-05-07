#include "../template.typ"

One important consideration for the computational model was that if the panel thickness was set to be zero ($t = 0$) the generated geometry should match that of the thin panel model *@Gattas**@Aditi*. This was done and it was observed that the zero thickness geometry matched the thin origami models, this is depicted in *@2-thicc* and *@2-thin*.

#grid(
  columns: 2,
  column-gutter: 1cm,
  [
    #figure(
      image("../images/example_thicc.png", width: 100%),
      caption: [Image depicting an example output of the kinematic model.],
      supplement: [Figure],
      kind: figure,
    )<2-thicc>
  ],
  [
    #figure(
      image("../images/example_thin.png", width: 100%),
      caption: [Image depicting the example output shown in *@2-thicc* with $t = 0$.],
      supplement: [Figure],
      kind: figure,
    )<2-thin>
  ],
)



