
#include "../template.typ"

As was identified within the literature, one common method for simulating the kinematics of origami structures is through utilizing spatial linkages. In this method, the origami structure is assumed to be rigid in that the panels are treated as non-deformable bodies with movement restricted to one DoF rotation about crease lines. Spatial linkages model these creases specifically as revolute joints and the panels themselves and rigid linkages *@Spatial_linkages*.

The conversion between the coordinate system of one revolute joint to the next is done through the definition of  Denavit-Hartenberg (DH) parameters within a transformation matrix, a general configuration of joints is shown in *@2-DH-image*. The four DH parameters are defined below:

- $theta$: Angle about Z axis of the joint ($Z_i$), measured from the X axis of previous joint ($X_i$) to the X axis of the next joint ($X_(i+1)$).
- $a$: Length along the X axis of the joint ($X_i$) from joint $i$ to joint $i + 1$.
- $R$: Offset along the Z axis of the joint ($Z_i$) from joint $i$ to joint $i + 1$.
- $beta$: Angle about X axis of the joint ($X_i$), measured from the Z axis of previous joint ($Z_i$) to the Z axis of the next joint ($Z_(i+1)$).

Unlike the general configuration shown in *@2-DH-image*, in the Miura-Ori architecture the four revolute joints modelling the four intersecting creases form a close loop, allowing for the transformation matrices to be linked together within a closure condition. This closure condition generates a system of equations which can be simplified to yield equations describing the kinematics of the linkage in terms of the four DH parameters.

#figure(
  image("../images/A-dh-joints.png", width: 50%),
  caption: [Image depicting the four Denavit-Hartenberg parameters ($theta,a, R, beta$).],
  supplement: [Figure],
  kind: figure,
)<2-DH-image>

For thin panel configurations of the Miura-Ori architecture, the four creases intersect at a point in the center of the unit cell whereas for thick panel configuration the thickness of each panel prevents this. A diagram depicting this is shown in *@2-crease-lines*.

#figure(
  image("../images/2-crease-line.png", width: 60%),
  caption: [Image depicting the crease lines (shown in red) on a thin panel Miura-Ori unit cell meeting at one point [Left] and crease lines not intersecting at one point for a thick panel configuration of the Miura-Ori unit cell [Left.]],
  supplement: [Figure],
  kind: figure,
)<2-crease-lines>

This results in a differing set of simplifying conditions being imposed on the set of DH matrices for each panel configuration, this further yields a different configuration of spatial linkages.For thin panel origami a spherical linkage can be utilized to model the system of joints as both the $a$ and $R$ parameters are zero, this linkage is shown in *@2-spherical-linkage*. For thick panel configurations a Bennett linkage must be used, as $R = 0$ but $a eq.not 0$. This linkage is shown in *@2-bennett-linkage*.

#grid(
  columns: 2,
  column-gutter: 0.5cm,
  [
    #figure(
      image("../images/2_spherical_linkage.png", width: 65%),
      caption: [Image depicting the spherical linkage used to simplify the kinematic behaviour of thin panel Miura-Ori configurations ($alpha = beta$). *@Spatial_linkages*],
      supplement: [Figure],
      kind: figure,
    )<2-spherical-linkage>
  ],
  [
    #figure(
      image("../images/2_bennett_linkage.png", width: 50%),
      caption: [Image depicting the Bennett linkage used to simplify the kinematic behaviour of thick panel Miura-Ori configurations ($alpha = beta$). *@Spatial_linkages*],
      supplement: [Figure],
      kind: figure,
    )<2-bennett-linkage>
  ],
)

The spherical linkage configuration for thin panel origami meant that the $4 times 4$ DH transformation for each joint could be reduced to $3 times 3$ resulting in nine kinematic equations. As $a eq.not 0$ this reduction in matrix size cannot be done for thick panel configuration, 16 equations are generated of which three contain $a$ terms. These set of equations can be simplified by imposing geometrical constraints

// Need picture of the joint sof each of the thin panle vs thick panel will have toi make one for thin panel. from this qoute equations simplifying a and beta. then qoute theta bits and you are done with this section



/*



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

/*
