#include "../template.typ"

// PLAN FOR THIS SECTION
//
// Explanation of what origami and kirigami is
// Uses in industries
// Uses in spacecraft
// Thin origami vs thick origami
// Modeling the folding behavior of origami structures
// Types of computational models for origami

For this project, it was critical to develop an understanding of the Miura-Ori geometry as well as its derivatives and their applications within industry and current work

// Below is first draft


It was critical that for this project, a strong understanding of the Miura-Ori geometry was developed as well as all aspect of the derivation needed to model the folding behavior (kinematic behavior) so that these derivations could be modified for the thick panel. This required detailed research on the uses of such geometries n different disciplines as well as current reports which adapted these family of geometries for novel spacecraft applications.

The goal of this research was to fully understand the kinematic and geometrical derivations needed for the thin panel Miura-Ori geometry so that this could be adapted or modified for thick panel. A secondary outcome was to also gain an understanding of the current methods used to adapt Miura-Ori geometries for thick panels as well as their applications. Both of these outcomes of the research would then be applied in a computational model.

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
