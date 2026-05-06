#include "../template.typ"

The expressions in *@2-kinematic-relationship-equations* describe kinematic variables (DH parameters) however, these parameters must be linked to geometric parameters related to the unit cell geometry itself. Kinematically, the $beta$ parameter defines the angle between consecutive Z axis, but geometrically this can be linked to the sector angle $phi.alt$ for both thick and thin panels. This is shown in *@2-thin-kinematics* and *@2-thick-kinematics*

#grid(
  columns: 2,
  column-gutter: 0.5cm,
  [
    #figure(
      image("../images/2-thin-origami-kinematics.png", width: 95%),
      caption: [Image depicting the kinematic variables $theta$ amd $beta$, the dihedral angle $phi$ and the joint $z$ axis labelled on a thin panel Miura-ori unit cell. *@dataset*.],
      supplement: [Figure],
      kind: figure,
    )<2-thin-kinematics>
  ],
  [
    #figure(
      image("../images/2-thick-origami-kinematics.png", width: 80%),
      caption: [Image depicting the kinematic variables and joint axes labelled on a thick panel Miura-ori unit cell.*@offset_geometry*. The coordinate system is different from the one assumed in this report.],
      supplement: [Figure],
      kind: figure,
    )<2-thick-kinematics>
  ],
)

Utilizing both *@2-thin-kinematics* and *@2-thick-kinematics* the $beta$ parameter can be directly related to the sector angle $phi.alt$, these relationships further govern the flat foldability of Miura-ori architectures *@hull2010maekawa*. The relationship between these parameters are shown in *@2-beta-relations*.

$
  beta_12 = phi.alt quad quad beta_23 = phi.alt
$<2-beta-relations>

The remaining kinematic parameter $theta$ can be transformed into the dihedral angle ($phi$) which is a geometrical parameter defined as the angle between two panel faces about a crease line (shown in *@2-thin-kinematics*). Despite the panel thickness having no impact on the kinematics, it does however impact the relationship between $theta$ and $phi$. The thin panel and thick panel variants of this relationship are shown in *@2-dihedral-thin* respectively *@2-dihedral-thick*.

#grid(
  columns: 2,
  column-gutter: 1cm,
  [ Thin panel relationships
    $
      theta_1 = phi_1 + pi quad quad
      theta_2 = pi - phi_2 \
      theta_3 = pi - phi_3 quad quad
      theta_4 = pi - phi_4 \
    $<2-dihedral-thin>
  ],
  [ Thick panel relationships
    $
      theta_1 = phi_1 quad quad
      theta_2 = pi - phi_2 \
      theta_3 = 2 pi - phi_3 quad quad
      theta_4 = pi + phi_4 \
    $<2-dihedral-thick>
  ],
)
