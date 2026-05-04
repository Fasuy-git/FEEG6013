#include "../template.typ"

// PLAN FOR THIS SECTION
//
// Explanation of what origami and kirigami is
// Uses in industries
// Uses in spacecraft
// Thin origami vs thick origami
// Modeling the folding behavior of origami structures
// Types of computational models for origami
// Need a definition of metamaterials and metastructures


For this project, it was critical to develop an understanding of the Miura-Ori geometry as well as its derivatives and what advantageous properties this this family of origami geometries posses. As my focus within the project was on adapting thin panel Miura-Ori architectures for thick panel as well as computationally modelling these thick panel variants, further focus was applied on novel thick panel geometry sas well as the computational methods used to simulate origami structures. Motivated by this, a comprehensive literature review was undertaken with the following goals:

+ Understand the kinematic and geometrical derivations needed to model thin panel origami structures and adapt these to thick panel origami structures.
+ Ascertain the benefits of thick panel origami over thin panel specifically within the constant of Miura-Ori architectures and its derivatives.
+ Note novel thick panel geometries which can be used for the Miura-Ori family of origami structures.
+ Identify the computational methods used for modelling the kinematic behavior (folding behavior) of origami structures.

Origami itself is defined as the art of folding objects out of paper to create both two-dimensional and three-dimensional subjects *@robinson2026origami* with its origins dating back to ancient Japan. In the modern day, the papercraft principles of origami have seen widespread use in various disciplines such as architecture, robotics and spacecraft structures.Whereas origami uses only folds, kirigami is a closely related subset which uses folds and cuts to create more complex structures.

Metamaterials is a novel branch of material science which encompass three dimensional structures with a response, be that electromagnetic, acoustic, mechanical or thermal, due to the collective effect of meta-atom elements that is not achieve conventionally with any individual constituent material *@ukmmn_metamaterials_definition*. The response of metamaterials does not originate from the chemical composition of the constituent materials but from teh structure of the meta-atom itself. A metasurface is a subset of metamaterials where the structural elements are confined to a two dimensional plane instead of a three dimensional structure *@ukmmn_metamaterials_definition*. Some advantageous mechanical properties of engineered metamaterials are negative Poisson's ratio (Auxeticity), shape morphing and reconfigurability, multistability and high specific stiffness or strength. Many metamaterials make use of origami and or kirigami meta-atom architectures to achieve such mechanical properties.

The Miura-Ori origami pattern is a fundamental origami structure which sees four intersecting crease lines which are symmetrical about a horizontal center line *@Gattas*, the base Miura-Ori architecture is shown in *@2-base-miura-ori*.

#figure(
  image("../images/2_base_miura_ori.png"),
  caption: [Image depicting the base Miura-Ori architecture in an unfolded state with annotated repeated unit [Left], a partially folded state [Center] and a fully foldede state [Right] *@Gattas*.],
  supplement: [Figure],
  kind: figure,
)<2-base-miura-ori>

The geometry itself is constructed with repeating parallelogram facets which themselves are defined by the side lengths $a$ and $b$ and the sector angle $phi.alt$. The structure as a whole exhibits both auxetic and reconfigurable behaviour arising from the crease configuration of the panels. Some other useful properties identified by the literature *@Gattas* are:

- Developability: The Miura-Ori architecture can be folded from a continuous flat sheet;
- Flat-Foldability: All panels are coplanar when the pattern is fully folded.
- Tessellation: The Miura-Ori architectur utilizes a repetitive unit cell geometry constructed from a single repeating plate size.

These properties


// Below is first draft

/*
The goal of this research was to fully understand the kinematic and geometrical derivations needed for the thin panel Miura-Ori geometry so that this could be adapted or modified for thick panel. A secondary outcome was to also gain an understanding of the current methods used to adapt Miura-Ori geometries for thick panels as well as their applications. Both of these outcomes of the research would then be applied in a computational model.]
*/



// When we talk abouty the computational model we need to make refrence to rigid origami

A Miura-Ori geometry is classified as an origami pattern consisting of straight lines and zig zag lines. Each unit cell of the Miura-Ori geometry consists of 4 cells bounded by three zig zag lines and straight lines. A given unit cell will either have three mountain creases and one valley crease or three valley creases and one mountain crease. an example unit cell with the [] configuration is shown in

// Picture of a base miura-ori cell

The above configuration of the Miura-Ori geometry is defined as the base case geometry and once this unit cell is tessellated, the resulting structure displays advantageous mechanical properties, with the main two parameters being the compactness of teh structure in the folded state as well as the aucentic (negative Poisson's ratio) behavior that such structures show, these are shown in

// Picture showing compactness and folding behaviour of such geometries as well as

Second order derivatives of the base Miura-Ori geometry vary some of the base parameters shown in [] between cells. By modifying the unit cells in this way further advantageous mechanical properties can be developed such as spiraling, curvature and circular folding behaviors. Three geometries that allow for this behaviour are the Arc Miura, Inclined arc miura and tapered miura architecture, these three geometries being shown in [Image of the three unit cells] The geometrical and kinematical relationships of these three architectures are investigated within [Aditis paper] and [Gatas's].

The goal of the computational model would be to allow for a top level definition of key geometric and kinematic parameters, as well as the number of panels within the structure. From the top level parameters, kinematic and geometrical calculations could be perfroamed to calculate key constants. The model would then iterate through all of the possible points within the geometry, generating and returning the cartesian coordinates of each point within the geometry.


// Defgine what a mountain crease and valley and mountain crease is

// Need an explanation of what origami actually is and could benefit with a futher explanation of kinematics
// Need an explination of what the computaional model actually is, how ity takes in inputs and develops
// What is a miura ori cell
// What is a DH matrix
// Look at example papers to see what these sections talk about

// Could do a little work defining a compaction factor for the thick origami structure, wouldn't be too much work and would allow for some more discussion in teh paper./

