#import "../template.typ": *

#box(
  fill: aqua.darken(10%),
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [= Technical Contribution],
)

Due to the novelty involved in developing a computational model of thick panel Miura-ori geometries, the development process was decomposed into discrete stages. Each stage would build on the previous one and contribute to the final model. The first stage consisted on analysis of relevent literature as well as past work on the Miura-ori geometries as well as on thick panel origami. The next stage was to derive any relevant equations or relationships that would be utilized within the program. The final stage was to develop the program itself, bringing together equations derived in the previous section to create a model.

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Preliminary Design Research],
)

#include "preliminary_design_research.typ"

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Aims and Objectives For Computational Modelling],
)

The aim of the computational modelling work within ROAM-DS was to alter the existing kinematic relationships for thin panel Miura-ori architectures to thick panel variants and then implement these relationship within a simulation to model the three dimensional folding behaviour of such structures. The intended long term goal of this simulation was to model the behaviour of higher level derivatives specifically the final thick-panel derivative architecture selected for the ROAM-DS communication dish. The decided objectives set to achieve this aim are as follows:

- To adapt the existing kinematic relationships for thin panel Miura-ori origami architectures to thick panel.
- To identify an expandable thick panel geometry that can be simulated.
- To create a ruleset to generate cartesian coordinates for the thick panel variant of the base Miura-ori geometry.
- To design a simulation architecture for the thick panel variant of the base Miura-ori geometry.
- To expand the ruleset and simulation to implement thick panel variants of first level derivates of the Miura-ori architecture.
- To combine the rulesets of multiple first level derivatives to yield second level derivatives of the Miura-ori geometry.
- To implement the final thick panel higher level derivative architecture chosen for thee ROAM-DS communication dish within the completed simulation framework.

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Kinematic Analysis of Thick Panel Origami Structures],
)

#include "kinematic_derivation.typ"

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Relating Kinematic and Geometric Parameters],
)

#include "kinematic_to_geometric.typ"

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Derivation for the Edge Angles for Thick Panel Origami.],
)

Gattas defines a geometrical parameter called the edge angle which can be used to tessilate the Miura-ori unit cell. Gattas defines the equations for these in [equation link] and shown in [image link].

It was important to validate that this edge angkle is not itself impacted by the thickness and so the equations had to be redireved.



// TODO: Need to mention how we have two unit cells, either a three mountain crease configuration or a three valley crease configuration.
