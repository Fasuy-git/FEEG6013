#include "../template.typ"

For this project, it was critical to develop an understanding of the Miura-ori geometry as well as its derivatives and what advantageous properties this this family of origami geometries posses. As my focus within the project was on adapting thin panel Miura-ori architectures for thick panel as well as computationally modelling these thick panel variants, further focus was applied on novel thick panel geometry sas well as the computational methods used to simulate origami structures. Motivated by this, a comprehensive literature review was undertaken with the following goals:

+ Understand the kinematic and geometrical derivations needed to model thin panel origami structures and adapt these to thick panel origami structures.
+ Ascertain the benefits of thick panel origami over thin panel specifically within the constant of Miura-ori architectures and its derivatives.
+ Note novel thick panel geometries which can be used for the Miura-ori family of origami structures.
+ Identify the computational methods used for modelling the kinematic behaviour (folding behaviour) of origami structures.

Origami itself is defined as the art of folding objects out of paper to create both two-dimensional and three-dimensional subjects *@robinson2026origami* with its origins dating back to ancient Japan. In the modern day, the papercraft principles of origami have seen widespread use in various disciplines such as architecture, robotics and spacecraft structures.Whereas origami uses only folds, kirigami is a closely related subset which uses folds and cuts to create more complex structures.

Metamaterials is a novel branch of material science which encompass three dimensional structures with a response, be that electromagnetic, acoustic, mechanical or thermal, due to the collective effect of meta-atom elements that is not achieve conventionally with any individual constituent material *@ukmmn_metamaterials_definition*. The response of metamaterials does not originate from the chemical composition of the constituent materials but from teh structure of the meta-atom itself. A metasurface is a subset of metamaterials where the structural elements are confined to a two dimensional plane instead of a three dimensional structure *@ukmmn_metamaterials_definition*. Some advantageous mechanical properties of engineered metamaterials are negative Poisson's ratio (Auxeticity), shape morphing and reconfigurability, multistability and high specific stiffness or strength. Many metamaterials make use of origami and or kirigami meta-atom architectures to achieve such mechanical properties.

The Miura-ori origami pattern is a fundamental origami structure which sees four intersecting crease lines which are symmetrical about a horizontal center line *@Gattas*, the base Miura-ori architecture is shown in *@2-base-Miura-ori*.

#figure(
  image("../images/2_base_miura_ori.png"),
  caption: [Image depicting the base Miura-ori architecture in an unfolded state with annotated repeated unit [Left], a partially folded state [Center] and a fully folded state [Right] *@Gattas*.],
  supplement: [Figure],
  kind: figure,
)<2-base-Miura-ori>

The geometry itself is constructed with repeating parallelogram facets which themselves are defined by the side lengths $a$ and $b$ and the sector angle $phi.alt$. The structure as a whole exhibits both auxetic and reconfigurable behaviour arising from the crease configuration of the panels. Some other useful properties identified by the literature *@Gattas* are:

- Developability: The Miura-ori architecture can be folded from a continuous flat sheet;
- Flat-Foldability: All panels are coplanar when the pattern is fully folded.
- Tessellation: The Miura-ori architecture utilizes a repetitive unit cell geometry constructed from a single repeating plate size.
- Single DoF motion: The Miura-ori architecture possesses a single Degree-of-Freedom (DoF) throughout its motion, irrespective of the size of the array *@Miura2009*.

// Below paragraph could mention space mirrors
These properties have caused the Miura-ori architecture to see widespread use in various fields as such as in solar panels for the Space Flyer Unit satellite *@Miura2009*, in increasing the impact resistance of structures *@XU2025110540*, in deployable antennas *@WANG2026106372* and in reconfigurable electromagnetic metamaterials for tunable wave manipulation *@chirality*.

Further advantageous properties can be obtained by altering a characteristic of the base Miura-ori geometry, such modified architectures are called first level derivatives. By changing the crease alignment of the zig-zag lines present between adjacent unit cells of the in the base Miura geometry, defines the Arc-Miura geometry, shown in *@2-arc-miura*. If instead the rectilinearity of the  base miura unit cell is changed, by changing the angles of the straight lines defining each panel so that they converge, the tapered Miura is defined shown in *@2-tapered-miura*.

#figure(
  image("../images/2-arc-miura-geometry.png"),
  caption: [Image depicting a unit cell of the Arc-Miura architecture [Left] and the folding behaviour of the tessellated structure [Right] *@Gattas*.],
  supplement: [Figure],
  kind: figure,
)<2-arc-miura>

#figure(
  image("../images/2-tapered-miura-geometry.png"),
  caption: [Image depicting a unit cell of the tapered Miura architecture [Left] and the folding behaviour of the tessellated structure [Right] *@Gattas*.],
  supplement: [Figure],
  kind: figure,
)<2-tapered-miura>

By altering two or more characteristics of the base Miura-ori geometry, second level derivatives can be defined. By altering both the crease alignment and by inclining each straight line by a constant angle, the inclined Arc-Miura geometry is defined and acts as an example of a second level derivative of the base geometry *@Aditi*. This architecture is shown in *@2-inclined-arc-miura*.

#figure(
  image("../images/2-inclined-arc-miura.png", width: 50%),
  caption: [Image depicting a unit cell of the inclined Arc-Miura architecture [Left] and the folding behaviour of the tessellated structure [Right] *@Aditi*.],
  supplement: [Figure],
  kind: figure,
)<2-inclined-arc-miura>

Thin panel origami has been the focus of much of the analysis and simulations on origami structures however as the thickness of the panels increase, the effect of the thickness of the panel on the kinematics of the structure cannot be neglected. Furthermore, thin panel origami simplifies crease behaviour and further neglects geometry intersection. Therefore, thick panel origami structures aim to encompass panel thickness within the kinematic behaviour *@thick_panel_origami* allowing for more realistic representation of the folding behaviors of origami structures. However, the analysis of thick panel origami necessitates more complex modelling approaches and generating the geometry of such origami structures also necessitates more complex rulesets.

Many methods exist to computationally model the kinematic behaviour of origami structures *@computational_modelling_origami* such as utilizing basic trigonometric relationships to compute nodal positions for thin origami structures to utilizing spatial linkages to model the kinematic behaviour of thick panel structures.

One gap in the literature was combining many of the aforementioned concepts together. Mainly taking first and second level derivatives of the base Miura-ori architecture and expanding their kinematic equations for the thin panel configurations of these geometries to thick panels. A computational model of these thick panel structures could leverage both trigonometric equations and spatial linkages to allow for full definition of the structure throughout its folding, allowing for a tool to simulate metasurfaces made from meta-atoms of Miura-ori derivates.

