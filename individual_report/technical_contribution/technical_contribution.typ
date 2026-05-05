#import "../template.typ": *

#box(
  fill: aqua.darken(10%),
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [= Technical Contribution],
)

Due to the novelty involved in developing a computational model of thick panel Miura-Ori geometries, the development process was decomposed into discrete stages. Each stage would build on the previous one and contribute to the final model. The first stage consisted on analysis of relevent literature as well as past work on the Miura-Ori geometries as well as on thick panel origami. The next stage was to derive any relevant equations or relationships that would be utilized within the program. The final stage was to develop the program itself, bringing together equations derived in the previous section to create a model.

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

The aim of the computational modelling work within ROAM-DS was to alter the existing kinematic relationships for thin panel Miura-Ori architectures to thick panel variants and then implement these relationship within a simulation to model the three dimensional folding behaviour of such structures. The intended long term goal of this simulation was to model the behaviour of higher level derivatives specifically the final thick-panel derivative architecture selected for the ROAM-DS communication dish. The decided objectives set to achieve this aim are as follows:

- To adapt the existing kinematic relationships for thin panel Miura-Ori origami architectures to thick panel.
- To identify an expandable thick panel geometry that can be simulated.
- To create a ruleset to generate cartesian coordinates for the thick panel variant of the base Miura-Ori geometry.
- To design a simulation architecture for the thick panel variant of the base Miura-Ori geometry.
- To expand the ruleset and simulation to implement thick panel variants of first level derivates of the Miura-Ori architecture.
- To combine the rulesets of multiple first level derivatives to yield second level derivatives of the Miura-Ori geometry.
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
  [== Converting Kinematic Parameters into Geometrical Parameters.],
)
/*
The expressions in *@2-kinematic-relationship-equations* describe kinematic variables however these must be converted to geometrical parameters related to the Miura-Ori geometry. The first step to do this is to convert the kinematic angle $theta$ to the dihedral angle $phi$ which is a geometric parameter defining the angle between two panels as they close whereas $theta$ describes the angle of the hinge between the incoming and outgoing linkage.

For thin panel oragami this was simple as it only depenedant on if a given crease was a mountain crease or valley crease. The thin origami relationship between the kinematic angle and dihedral angle are shown in *@2-thin-kinematic-dihedral*.

$
  "Mountain" : \
  "Valley"
$<2-thin-kinematic-dihedral>

For thick panel origami architectures however, the relationship is not as simple as the offset $a$ driven by the thickness does affect the relationship between these two parameters. Therefore the relationship between the kinematic angle and dihedral angle ends up being specific to each revolute hinge and so there are four relationships, these are shown in.

$// Thickness relationship equations
$

In terms of the $beta$ angle, this can be related to the geometrical $phi.alt$ angle, these relationships are shown in

$// Beta angles and phi.alt angle relationships
$

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Derivation for the Edge Angles for Thick Panel Origami.],
)

Gattas defines a geometrical parameter called the edge angle which can be used to tessilate the Miura-Ori unit cell. Gattas defines the equations for these in [equation link] and shown in [image link].

It was important to validate that this edge angkle is not itself impacted by the thickness and so the equations had to be redireved.



// TODO: Need to mention how we have two unit cells, either a three mountain crease configuration or a three valley crease configuration.
