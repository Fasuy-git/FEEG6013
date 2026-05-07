#include "../template.typ"

The coordinate generation and validation ruleset were then implemented into a parametric kinematic model programmed in MATLAB. This model consists of five separate files which work in tandem with one another to generate a final three-dimensional geometry,the architecture of this model is shown in *@2-sim-architecture* with each of the five files explained below.

#figure(
  image("../images/2-simulation-architecture.png", width: 80%),
  caption: [Image depicting the overall simulation architecture consisting of five files with the flow of inputs and outputs depicted as arrows.],
  supplement: [Figure],
  kind: figure,
)<2-sim-architecture>

- *`Plotter.m`*: This file acts as the master file allowing for top level definition of key geometrical ($a, b, phi.alt, t, theta_A$) and sizing ($X_"Panels",Y_"Panels"$) parameters. These parameters are passed into *`thick_miura_tessellation.m`* which returns a coordinate array, which is passed into *`face_builder.m`* which itself returns a faces array. The face and coordinates array are plotted to yield a three-dimensional structure.
- *`thick_miura_tessellation.m`*: Accepts top level parameters from *`Plotter.m`* from which constants ($i_"max", j_"max", theta_Z, eta_A, eta_Z, T_x, T_y, T_z, N$) are calculated. The file then loops through all possible combinations of $i,j$ and $k$; validates a given combination using *`miura_classify_node.m`* and calculates the coordinates of the point using *`	miura_create_node.m`*. The file returns a list of valid coordinates which bound the geometry.
- *`miura_classify_node.m`*: Utilises the coordinate validation ruleset (see *Appendix B*) for a given inputted combination of $i,j$ and $k$ and returns true or false depending on if the coordinate is valid. This file utilises a combination of *`switch`* and *`if`* conditional statements to allow for a cleaner structure of nested conditions as well as *`mod`* to implement the modular logic of the ruleset.


- *`miura_create_node.m`*: Utilises the coordinate generation ruleset (see *Appendix C*) for a given set of inputs ($i,j,k,eta_A,eta_Z,T_x,T_y,T_z,N$) to calculate the cartesian coordinates of a specified point, returning the $x,y,z$ coordinate. Similarly to *`miura_classify_node.m`*, a mixture of conditional and modular logic is used to define the ruleset.

- *`face_builder.m`*: As the generated geometry is complex, inbuilt functions cannot stitch the points into a three dimensional structure. Instead this file dynamically creates quadrilateral faces by accepting the coordinate array and using a combination of conditional and modular logic and careful indexing through the panel-centric coordinate system. To construct one panel 16 faces are required.

An example output of the kinematic model is shown in *@2-sim-example* for a range of fold angles ($theta_A$).

#figure(
  image("../images/2_thick_panel_example.png", width: 100%),
  caption: [Image depicting an example output of the kinematic model at various fold angles ($theta_A$).],
  supplement: [Figure],
  kind: figure,
)<2-sim-example>
