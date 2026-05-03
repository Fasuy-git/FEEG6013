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
  [== Aims and Objectives],
)


#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Kinematic Analysis of Thick Panel Origami Structures],
)

// Explain what revolute hinges are and linkages. how revolute hinges allow for one degree of freedom rotation. and spatial linkages

// Need to explain that we

The kinematic behavior of Miura-Ori geometries is modeled by reducing each panel and fold crease to a system of revolute hinges and linkages. To convert between the coordinate system of one hinge and the next, Denavit-Hartenberg (DH) parameters can be used, where each transformation matrix can be joined together in a closure condition. A general configuration of a system of three revolute joints is shown in *@2-DH-image* with the four DH parameters annotated.

R: Offset in the Z direction of the previous joint to the next.
θ: Angle about Z from X of previous joint to the next X.
a: Length in the X direction of the linkage between two hinges.
$beta$: Angle about X from Z of previous joint to the next Z.

#figure(
  image("../images/A-dh-joints.png", width: 60%),
  caption: [Image depicting the four Denavit-Hartenberg parameters ($theta,a, R, beta$).],
  supplement: [Figure],
  kind: figure,
)<2-DH-image>

// Need to explain what all the parameters are

As all Miura-Ori architectures consist of four creases meeting at a point, the kinematic analysis performed could be applied to all geometries. In thin panel configurations of the Miura-Ori architecture, all four creases that make up a unit cell meet at one point, allowing for the general DH configuration depicted in *@2-DH-image* to be reduced to a four revolute joint spherical linkage and so $a = 0 "and" R = 0$. This meant that each four by four DH transformation matrix could be reduced to a 3 by 3 matrix, thus reducing the total number of equations from 16 to 9.

However, in thick panel architectures the thickness of each panel prevents all of the fold lines from meeting at one point, this is depicted in [picture showing the gap in the center of the thick miura cell]. In terms of the kinematic impact of this, $a eq.not 0$ and so the matrix size cannot be reduced. This meant that 16 equations would be generated from the closure conditions and not 9, with 3 of the equations containing $a$ terms and 4 equations being trivial.

Due to the configuration of the Miura-Ori architecture some of the DH parameters could be related to one another, such relations are depicted in *@2-thick-origami-substitutions*.

$
  beta_12 = pi - beta_34 quad beta_23 = pi - beta_41 quad a_12 = a_34 quad a_23 = a_41 quad a_12 / a_23 = sin(beta_12)/sin(beta_34)
$<2-thick-origami-substitutions>

Applying the conditions in *@2-thick-origami-substitutions*, the three equations with thickness terms could then be simplified as the $a$ offset terms could be factored out and divided out. This meant that the set of equations left were identical to the ones for the thin origami case meaning the resulting derivation paralleled the one in [Aditis paper]. The final relationships between the $theta$ angles and the $beta$ angles which are the only remaining DH parameters from [aditis paper] are shown in *@2-kinematic-relationship-equations*.

$
  (tan theta_3)/(tan theta_2) = - (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  quad quad
  (tan theta_3)/(tan theta_4) = (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  \
  (tan theta_1)/(tan theta_2) = - (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  quad quad
  (tan theta_4)/(tan theta_1) = (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
$<2-kinematic-relationship-equations>


// The image I put in brackets
// Need a section on stakeholders for group reports.
// Need a picture of a bennet linkage and a spherical linkage
// Reference to how theta is the kinematic angle

#box(
  fill: aqua,
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [== Converting Kinematic Parameters into Geometrical Parameters.],
)

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
