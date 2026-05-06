#include "../template.typ"

// Talk about the dihedral angle tan equation
// Talk about the i j k coordinate systems
// Talk about how we took the planar case and just applied raw thicknes
// talk about ghow we can mult unit vectors by thickness
// Need a plot of the side of the geometry

An initial strategy to simulate the thick panel Miura-ori unit cell was to offset each face by a thickness $t$, forming a system of cuboidal thick panels. This was achieved via multiplying the unit vectors (shown in *@2-unit-vectors* and *@2-orthogonal-unit-vectors*) by the side lengths $a$ and $b$ and the thickness $t$.

To achieve this a panel centric coordinate system was developed, similar to the one shown *@2-base-Miura-ori* where the $i$ index moves along the $b$ side lengths and $j$ moves along the $a$ side lengths. An additional parameters $k$ was introduced to move between the upper and lower faces of the panel. This coordinate is depicted in *@2-model-1-coords*.

By combining together *@2-kinematic-relationship-equations* and *@2-dihedral-thick* as well as by using the variable naming convention and the specific unit cell configuration shown in *@2-edge-angle-fig*, a relationship between the dihedral angles $theta_A$ and $theta_Z$ could be developed. This equation is shown in *@2-kinematic-link*.

$
  theta_Z = 2 arctan (tan(theta_A/2)/cos(phi.alt))
$<2-kinematic-link>

#figure(
  image("../images/2-planar-thick-model-cord-system.png", width: 80%),
  caption: [Image depicting the $i$, $j$, $k$ coordinate system used for thick panel origami.],
  supplement: [Figure],
  kind: figure,
)<2-model-1-coords>

After implementing this initial thickness strategy in MATLAB, it was found that the four panels which make up a unit cell do not form a closed loop, an example plot of the unit cell is shown in *@2-model-1-pic-1*. After further inspection, it was found that this gap stemmed from how the center crease being incorrectly offset due to the thickness strategy used.

#figure(
  grid(
    columns: 2,
    column-gutter: -2cm,
    [#image("../images/thick_miura_offset.png", width: 55%)],
    [#image("../images/thick_miura_offset_rotated.png", width: 70%)],
  ),
  caption: [Image depicting the simulated thick panel Miura-ori unit cell using the initial thickness strategy, a top down view [Left] and a rotated view of the back of the unit cell [Right].],
  supplement: [Figure],
  kind: figure,
)<2-model-1-pic-1>
