Require Export GeoCoq.Meta_theory.Parallel_postulates.Euclid_def.

Section triangle_existential_triangle.

Context `{T2D:Tarski_2D}.

Lemma triangle__existential_triangle : triangle_postulate -> postulate_of_existence_of_a_triangle_whose_angles_sum_to_two_rights.
Proof.
  intro triangle.
  destruct lower_dim_ex as [A [B [C]]].
  assert(~ Col A B C) by (unfold Col; assumption).
  assert_diffs.
  destruct (ex_trisuma A B C) as [D [E [F]]]; auto.
  exists A; exists B; exists C; exists D; exists E; exists F.
  repeat split.
    assumption.
    assumption.
    apply (triangle A B C); assumption.
Qed.

End triangle_existential_triangle.
