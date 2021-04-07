From NanoYalla Require Import macroll.

Section TheProof.

Variable A B C : formula.

Goal ll [C; dual B] -> ll [wn (aplus (dual A) (dual B)); tens (oc A) (oc C)].
Proof.
intros H0.
apply (co_r_ext (aplus (dual A) (dual B)) [] [tens (oc A) (oc C)]).
apply (ex_perm [2;0;1]
               [wn (aplus (dual A) (dual B)); tens (oc A) (oc C); wn (aplus (dual A) (dual B))]).
apply (tens_r_ext (oc A) (oc C) [wn (aplus (dual A) (dual B))] [wn (aplus (dual A) (dual B))]).
- apply (oc_r_ext A [aplus (dual A) (dual B)] []).
  apply (de_r_ext (aplus (dual A) (dual B)) [] [A]).
  apply (plus_r1_ext (dual A) (dual B) [] [A]).
  apply ax_exp.
- apply (oc_r_ext C [] [aplus (dual A) (dual B)]).
  apply (de_r_ext (aplus (dual A) (dual B)) [C] []).
  apply (plus_r2_ext (dual B) (dual A) [C] []).
  apply H0.
Qed.

End TheProof.