#import "template.typ": *


#box(
  fill: aqua.darken(10%),
  width: 100%,
  inset: (x: 10pt),
  outset: (y: 5pt),
  [= Appendix A: Thick Origami Kinematic Derivation],
)


#import "template.typ": *

Each crease in the Miura-Ori geometry can be modelled as a revolute hinge, with Denavit-Hartenberg (DH) matrices allowing for transfromation between the coordinate system of one hinge to the other. A general DH matrix as well as an inverse DH matrix are shown in *@A-dh_matrix* and *@A-inverse-dh_matrix* respectively.

$
  T_((i+1)i) =mat(
    cos theta_i, -cos beta_(i(i+1)) sin theta_i, sin beta_(i(i+1)) sin theta_i, a_(i(i+1)) cos theta_i;
    sin theta_i, cos beta_(i(i+1)) sin theta_i, -sin beta_(i(i+1)) sin theta_i, a_(i(i+1)) sin theta_i;
    0, sin beta_(i(i+1)), cos beta_(i(i+1)), R_i;
    0, 0, 0, 1
  )_(4 times 4)
$<A-dh_matrix>

$
  T_(i(i+1)) = T_((i+1)i)^(-1) =mat(
    cos theta_i, sin theta_i, 0, -a_(i(i+1));
    -cos beta_(i(i+1)) sin theta_i, cos beta_(i(i+1)) cos theta_i, sin beta_(i(i+1)), - R_i sin beta_(i(i+1));
    sin beta_(i(i+1)) sin theta_i, -sin beta_(i(i+1)) cos theta_i, cos beta_(i(i+1)), - R_i cos beta_(i(i+1));
    0, 0, 0, 1
  )_(4 times 4)
$<A-inverse-dh_matrix>

For thin panel origami architectures $R = 0$ and $a = 0$ allowing for *@A-dh_matrix* and *@A-inverse-dh_matrix* to be reduced to $3 times 3$ matrices. For thick panel origami however, $a eq.not 0$ and the resulting linkage is a bennet linkage. The closure condition however remains the same as the thin panel configuration and is shown in *@A-closure-condition*.

$
  [T_(2 -> 1)]_(4 times 4) [T_(3 -> 2)]_(4 times 4) [T_(4 -> 3)]_(4 times 4) = [T_(4 -> 1)]_(4 times 4)
$<A-closure-condition>

The transformation matrices can be simplified further by  applying the constraints of the Miura-Ori geometry shown in *@2-thick-origami-substitutions*. Utilizing these conditions, the simplifying substitutions shown in *@A-subs* will be made into the transformation matrices.

$
  beta_34 = pi - beta_12 quad beta_41 = pi - beta_23
  \ a_34 = a_12 = a_23 sin(beta_12)/sin(beta_23) = a_41 sin(beta_12)/sin(beta_23)
  \
$<A-subs>

The resulting transformation matrices for each revolute hinge is shown in *@A-mat-1-2*, *@A-mat-3-2*, *@A-mat-4-3* and *@A-mat-4-1*, with *@A-mat-4-1* being the inverse matrix utilizing the form shown in *@A-inverse-dh_matrix*.

$
  [T_(2 -> 1)]_(4 times 4) = mat(
    cos(theta_1), -cos(beta_12) sin(theta_1), sin(beta_12) sin(theta_1), (a_23 sin(beta_12) cos(theta_1))/(csc(beta_23) );
    sin(theta_1), cos(beta_12) cos(theta_1), -sin(beta_12) cos(theta_1), (a_23 sin(beta_12) sin(theta_1))/csc(beta_23);
    0, sin(beta_12), cos(beta_12), 0;
    0, 0, 0, 1;
  )_(4 times 4)
$<A-mat-1-2>

$
  [T_(3 -> 2)]_(4 times 4) = mat(
    cos(theta_2), -cos(beta_23) sin(theta_2), sin(beta_23) sin(theta_2), a_23 cos(theta_2);
    sin(theta_2), cos(beta_23) cos(theta_2), -sin(beta_23) cos(theta_2), a_23 sin(theta_2);
    0, sin(beta_23), cos(beta_23), 0;
    0, 0, 0, 1;
  )_(4 times 4)
$<A-mat-3-2>

$
  [T_(4 -> 3)]_(4 times 4) = mat(
    cos(theta_3), cos(beta_12) sin(theta_3), sin(beta_12) sin(theta_3), (a_23 sin(beta_12)cos(theta_3))/sin(beta_23);
    sin(theta_3), -cos(beta_12) cos(theta_3), -sin(beta_12) cos(theta_3), (a_23 sin(beta_12) sin(theta_3))/(sin(beta_23) );
    0, sin(beta_12), -cos(beta_12), 0;
    0, 0, 0, 1;
  )_(4 times 4)
$<A-mat-4-3>

$
  [T_(4 -> 1)]_(4 times 4) = mat(
    cos(theta_4), sin(theta_4), 0, -a_23;
    cos(beta_23) sin(theta_4), -cos(beta_23) cos(theta_4), sin(beta_23), 0;
    sin(beta_23) sin(theta_4), -sin(beta_23) cos(theta_4), -cos(beta_23), 0;
    0, 0, 0, 1;
  )_(4 times 4)
$<A-mat-4-1>

Substituting these 4 matrices into the closure conditions yields the following 16 raw un-simplified equations, these are shown in full on the next page.

#pagebreak()
#set page(flipped: true)

Eq (1,1)
$
  (-sin(theta_1) sin(theta_2) cos(beta_12) + cos(theta_1) cos(theta_2)) cos(theta_3) ...
  \
  ... +
  (sin(beta_12) sin(beta_23) sin(theta_1) - sin(theta_1) cos(beta_12) cos(beta_23) cos(theta_2)- sin(theta_2) cos(beta_23) cos(theta_1)) sin(theta_3)
  = cos(theta_4)
$<raw-eq-1-1>

Eq (1,2)
$
  -(-sin(theta_1) sin(theta_2) cos(beta_12) + cos(theta_1) cos(theta_2)) sin(theta_3) cos(beta_34)...
  \
  ... +
  (sin(beta_12) sin(beta_23) sin(theta_1) - sin(theta_1) cos(beta_12) cos(beta_23) cos(theta_2) - sin(theta_2) cos(beta_23) cos(theta_1)) cos(beta_34) cos(theta_3)...
  \
  ... +
  (sin(beta_12) sin(theta_1) cos(beta_23) + sin(beta_23) sin(theta_1) cos(beta_12) cos(theta_2) + sin(beta_23) sin(theta_2) cos(theta_1)) sin(beta_34) = sin(theta_4)
$<raw-eq-1-2>

Eq (1,3)
$
  (-sin(theta_1) sin(theta_2) cos(beta_12) + cos(theta_1) cos(theta_2)) sin(beta_34) sin(theta_3)
  \
  ... -
  (sin(beta_12) sin(beta_23) sin(theta_1) - sin(theta_1) cos(beta_12) cos(beta_23) cos(theta_2) - sin(theta_2) cos(beta_23) cos(theta_1)) sin(beta_34) cos(theta_3)
  \
  ... +
  (sin(beta_12) sin(theta_1) cos(beta_23) + sin(beta_23) sin(theta_1) cos(beta_12) cos(theta_2) + sin(beta_23) sin(theta_2) cos(theta_1)) cos(beta_34) = 0
$<raw-eq-1-3>

Eq (1,4)
$
  a_12 cos(theta_1) - a_23 sin(theta_1) sin(theta_2) cos(beta_12) + a_23 cos(theta_1) cos(theta_2)...
  \ ... + a_34 (-sin(theta_1) sin(theta_2) cos(beta_12) + cos(theta_1) cos(theta_2)) cos(theta_3) ...
  \ ... + a_34 (sin(beta_12) sin(beta_23) sin(theta_1) - sin(theta_1) cos(beta_12) cos(beta_23) cos(theta_2) - sin(theta_2) cos(beta_23) cos(theta_1)) sin(theta_3) = - a_41
$<raw-eq-1-4>

Eq (2,1)
$
  (sin(theta_1) cos(theta_2) + sin(theta_2) cos(beta_12) cos(theta_1)) cos(theta_3)...
  \ ...+(-sin(beta_12) sin(beta_23) cos(theta_1) - sin(theta_1) sin(theta_2) cos(beta_23) + cos(beta_12) cos(beta_23) cos(theta_1) cos(theta_2)) sin(theta_3) = - sin(theta_4) cos(beta_41)
$<raw-eq-2-1>

Eq (2,2)
$
  -(sin(theta_1) cos(theta_2) + sin(theta_2) cos(beta_12) cos(theta_1)) sin(theta_3) cos(beta_34)...
  \ ... +(-sin(beta_12) sin(beta_23) cos(theta_1) - sin(theta_1) sin(theta_2) cos(beta_23) + cos(beta_12) cos(beta_23) cos(theta_1) cos(theta_2)) cos(beta_34) cos(theta_3)...
  \ ... +(-sin(beta_12) cos(beta_23) cos(theta_1) + sin(beta_23) sin(theta_1) sin(theta_2) - sin(beta_23) cos(beta_12) cos(theta_1) cos(theta_2)) sin(beta_34) = cos(beta_41) cos(theta_4)
$<raw-eq-2-2>

Eq (2,3)
$
  (sin(theta_1) cos(theta_2) + sin(theta_2) cos(beta_12) cos(theta_1)) sin(beta_34) sin(theta_3)...
  \ ... -(-sin(beta_12) sin(beta_23) cos(theta_1) - sin(theta_1) sin(theta_2) cos(beta_23) + cos(beta_12) cos(beta_23) cos(theta_1) cos(theta_2)) sin(beta_34) cos(theta_3)...
  \ ...+(-sin(beta_12) cos(beta_23) cos(theta_1) + sin(beta_23) sin(theta_1) sin(theta_2) - sin(beta_23) cos(beta_12) cos(theta_1) cos(theta_2)) cos(beta_34) = sin(beta_41)
$<raw-eq-2-3>

Eq (2,4)

$
  a_12 sin(theta_1) + a_23 sin(theta_1) cos(theta_2) + a_23 sin(theta_2) cos(beta_12) cos(theta_1)...
  \ ... + a_34 (sin(theta_1) cos(theta_2) + sin(theta_2) cos(beta_12) cos(theta_1)) cos(theta_3)...
  \ ... + a_34 (-sin(beta_12) sin(beta_23) cos(theta_1) - sin(theta_1) sin(theta_2) cos(beta_23) + cos(beta_12) cos(beta_23) cos(theta_1) cos(theta_2)) sin(theta_3) = 0
$<raw-eq-2-4>

Eq (3,1)

$
  (sin(beta_12) cos(beta_23) cos(theta_2) + sin(beta_23) cos(beta_12)) sin(theta_3) + sin(beta_12) sin(theta_2) cos(theta_3) = sin(beta_41) sin(theta_4)
$<raw-eq-3-1>

Eq (3,2)

$
  (-sin(beta_12) sin(beta_23) cos(theta_2) + cos(beta_12) cos(beta_23)) sin(beta_34)...
  \ ... +(sin(beta_12) cos(beta_23) cos(theta_2) + sin(beta_23) cos(beta_12)) cos(beta_34) cos(theta_3) - sin(beta_12) sin(theta_2) sin(theta_3) cos(beta_34) = - sin(beta_41) cos(theta_4)
$<raw-eq-3-2>

Eq (3,3)

$
  (-sin(beta_12) sin(beta_23) cos(theta_2) + cos(beta_12) cos(beta_23)) cos(beta_34)...
  \ ... -(sin(beta_12) cos(beta_23) cos(theta_2) + sin(beta_23) cos(beta_12)) sin(beta_34) cos(theta_3) + sin(beta_12) sin(beta_34) sin(theta_2) sin(theta_3) = cos(beta_41)
$<raw-eq-3-3>

Eq (3,4)

$
  a_23 sin(beta_12) sin(theta_2) + a_34 (sin(beta_12) cos(beta_23) cos(theta_2) + sin(beta_23) cos(beta_12)) sin(theta_3) + a_34 sin(beta_12) sin(theta_2) cos(theta_3) = 0
$<raw-eq-3-4>

Eq (4,1)

$
  0 = 0
$<raw-eq-4-1>

Eq (4,2)

$
  0 = 0
$<raw-eq-4-2>

Eq (4,3)

$
  0 = 0
$<raw-eq-4-3>

Eq (4,4)

$
  1 = 1
$<raw-eq-4-4>


Eq (3,3), Eq (3,1) and Eq (2,3) remain unchanged from the original paper. By substituting $beta_12 = pi - beta_34$ and $beta_23 = pi - beta_41$ as well as the double angle formulae shown below:

$
  sin(theta) = (2 thin tan(theta/2))/(1 + tan^2 (theta/2)), quad
  cos(theta) = (1 - tan^2 (theta/2))/(1 + tan^2 (theta/2))
$

The three expressions can be written in quadratic, allowing for the following 4 angle relations to be extracted.

$
  (tan theta_3)/(tan theta_2) = - (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  quad quad
  (tan theta_3)/(tan theta_4) = (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  quad quad
  (tan theta_1)/(tan theta_2) = - (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
  quad quad
  (tan theta_4)/(tan theta_1) = (cos (beta_23 - beta_12)/2)/(cos (beta_23 + beta_12)/2)
$

#pagebreak()

#set page(flipped: false)
= Thick Origami Derivation

== Manipulation of the 3-4 equation

By initially substituting $beta_12 = pi - beta_34$ and $beta_23 = pi - beta_41$ as well as the double angle formulae yields the following modified form of Eq (3-4)

$
  (2 a_23 sin(beta_34) tan(theta_2/2))/(tan^2 (theta_2/2) + 1) + ... \
  ... + (2 a_34 tan(theta_3/2)
  (- (sin(beta_34) cos(beta_41)(1 - tan^2 (theta_2/2)))/(tan^2 (theta_2/2) + 1) - cos(beta_34)sin(beta_41)))/(tan^2 (theta_3/2) + 1) + ... \
  ... + (2 a_34 sin
  (beta_34) tan(theta_2/2)(1 - tan^2 (theta_3/2)))/((tan^2 (theta_2/2) + 1)
  (tan^2 (theta_3/2) + 1)) = 0
$

Simplifying this equation yields

$
  (sin(beta_34) tan(theta_2/2)((a_23 - a_34) tan^2 (theta_3/2) + a_23 + a_34) + a_34 tan
  (theta_3/2)(tan^2 (theta_2/2) sin
    (beta_34 - beta_41) - sin(beta_34 + beta_41)))/((tan^2 (theta_2/2) + 1)(tan^2 (theta_3/2) + 1)) = 0
$

Multiplying out the denominator ($(tan^2 (theta_2/2) + 1)(tan^2 (theta_3/2) + 1)$) and grouping terms together in terms of $tan (theta_2/2)$ yields the following

$
  sin(beta_34) tan(theta_2/2)((a_23 - a_34) tan^2 (theta_3/2) + a_23 + a_34) + ... \
  ... + a_34 tan
  (theta_3/2)(tan^2 (theta_2/2) sin
    (beta_34 - beta_41) - sin(beta_34 + beta_41)) = 0
$

This expression can be further simplified by applying the following relationship for thick origami.

$
  a_12 / a_23 = a_34 / a_23 = sin(beta_12)/sin(beta_23) = quad -> quad a_34 = a_23 sin(beta_12)/sin(beta_23)
$

Applying this expression removes $a_34$ from the equation and allows for the previous expression to be written in the following form

$
  -a_23 sin(beta_12)[1/sin(beta_23) tan^2 (theta_2/2) tan
    (theta_3/2) sin(beta_12 - beta_23) +... \ ...+ sin(beta_12)/sin(beta_23)
    tan(theta_2/2) tan^2 (theta_3/2) - sin(beta_12)/sin(beta_23) tan(theta_2/2) - ... \ ... - 1/sin(beta_23) tan(theta_3/2) sin(beta_12 + beta_23) - tan(theta_2/2)
    tan^2 (theta_3/2) - tan(theta_2/2)] = 0
$
#set page(flipped: true)
As $-a_23 sin(beta_12)$ is factorized out of the whole expression, both $a_23$ and $a_34$ do not have any impact on the behavior of the equations (thick origami kinematics = thin origami kinematics).

= Manipulation of the 2-4 equation

By initially substituting $beta_12 = pi - beta_34$ and $beta_23 = pi - beta_41$ as well as the double angle formulae yields the following modified form of Eq (2-4)

$
  (tan(theta_1/2)("a12"(tan^2 (theta_2/2) + 1)(tan^2 (theta_3/2) + 1) -(tan^2 (theta_2/2) - 1)
    ((a_23 - a_34) tan^2 (theta_3/2) + a_23 + a_34)) - cos
  (beta_12)(tan^2 (theta_1/2) - 1) tan(theta_2/2)
  ((a_23 - a_34) tan^2 (theta_3/2) + a_23 + a_34) + a_34
  tan(theta_3/2)((tan^2 (theta_1/2) - 1) tan^2 (theta_2/2) cos(beta_12 - beta_23) -(tan^2 (theta_1/2) - 1) cos(beta_12 + beta_23) - 4 cos(beta_23) tan
    (theta_1/2) tan(theta_2/2)))/((tan^2 (theta_1/2) + 1)(tan^2 (theta_2/2) + 1)
  (tan^2 (theta_3/2) + 1)) = 0
$

$
  mat(
    "Eq (1,1)", "Eq (1,2)", "Eq (1,3)", bold("Eq (1,4)");
    "Eq (2,1)", "Eq (2,2)", bold("Eq (2,3)"), bold("Eq (2,4)");
    bold("Eq (3,1)"), "Eq (3,2)", bold("Eq (3,3)"), bold("Eq (3,4)");
    "Eq (4,1)", "Eq (4,2)", "Eq (4,3)", "Eq (4,4)",
  )
$
