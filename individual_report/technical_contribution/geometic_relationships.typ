#include "../template.typ"

One method used in literature for tessellating a thin panel Miura-ori unit cell is via the use of edge angles and unit vectors *@Gattas*. This method utilizes trigonometric relationships to link the dihedral angle ($phi$) to a new geometrical parameter called the edge angle ($eta$) shown in *@2-edge-angle-fig*. The equations for these parameters are shown in *@2-edge-angles*.

#figure(
  image("../images/2_edge_angles.png", width: 40%),
  caption: [Image depicting definition of the edge angles $eta_A$ and $eta_Z$ on a Miura-ori unit cell *@Gattas*.],
  supplement: [Figure],
  kind: figure,
)<2-edge-angle-fig>

$
  cos(eta_A) = sin^2(phi.alt)cos(theta_Z) - cos^2(phi.alt)
  quad quad
  cos(eta_Z) = sin^2(phi.alt)cos(theta_A) + cos^2(phi.alt)
$<2-edge-angles>

As the edge angles are defined on the surface of a valley face then they are not effected by panel thickness and so *@2-edge-angles* can be applied to both thick and thin panel configurations. These edge angles can be utilized in unit vectors which point along the edge of each panel (shown in *@2-edge-angle-fig* with $c_1$ and $c_2$). The unit vectors for all four panels in a unit cell are shown in *@2-unit-vector-definition* and *@2-unit-vectors*.

$
  c_10 = vec(sin(eta_A/2), 0, cos(eta_A/2))
  quad
  c_20 = vec(cos(eta_Z/2), sin(eta_Z/2), 0)
  quad quad quad
  c_11 = vec(sin(eta_A/2), 0, -cos(eta_A/2))
  quad
  c_21 = vec(cos(eta_Z/2), sin(eta_Z/2), 0)
  \
  c_12 = vec(sin(eta_A/2), 0, cos(eta_A/2))
  quad
  c_22 = vec(-cos(eta_Z/2), sin(eta_Z/2), 0)
  quad quad quad
  c_13 = vec(sin(eta_A/2), 0, -cos(eta_A/2))
  quad
  c_23 = vec(-cos(eta_Z/2), sin(eta_Z/2), 0)
$<2-unit-vectors>


#figure(
  image("../images/2-unit-cell-config.png", width: 40%),
  caption: [Image depicting the unit vector configuration for a Miura-ori unit cell.],
  supplement: [Figure],
  kind: figure,
)<2-unit-vector-definition>

An orthogonal unit vector to $c_(1n)$ and $c_(2n)$ is nessicary to represent the thickness of the panel and is computed by taking the cross product of the two unit vectors, the subsequent vector is referred to as $c_(3n)$. The cross product is then normalised by dividing it by its magnitude. The resultying expressions are simplified and can be written in terms of thcikness parameters ($T_x,T_y,T_z$) and a normalisation parameter ($N$). The expresssions for the thickness parameters, normalisation parameter and the resulting unit vectors are shown in *@2-thickness-terms*, *@2-normilisation-parameter* and *@2-orthogonal-unit-vectors*.

$
  T_x = cos(eta_A/2) sin(eta_Z/2)
  quad quad
  T_y = cos(eta_A/2) cos(eta_Z/2)
  quad quad
  T_z = sin(eta_A/2) sin(eta_Z/2)
$<2-thickness-terms>

$
  N = sqrt(1 - sin^2(eta_A/2) cos^2(eta_Z/2))
$<2-normilisation-parameter>

$
  c_30 = vec(
    - T_x / N,
    T_y / N,
    T_z / N,
  )quad
  c_31 = vec(
    T_x / N,
    T_y / N,
    T_z / N,
  ) quad
  c_32 = vec(
    -T_x / N,
    -T_y / N,
    T_z / N,
  )quad
  c_33 = vec(
    T_x / N,
    T_y / N,
    T_z / N,
  )
$<2-orthogonal-unit-vectors>

