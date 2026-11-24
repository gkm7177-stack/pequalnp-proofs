import Mathlib
import PEqualNP.Defs

-- The line stars cover all flags at their exact total cost.
-- Below order 199 the input dependencies alone pay for that cover.
set_option maxHeartbeats 4000000 in
theorem PEqualNP.Outside.R_meta_3364_1
    (stars : ∀ (q n : ℕ) (inc : Fin n → Fin n → Prop) [DecidableRel inc]
    (hq : 100 < q)
    (hdeg : ∀ l : Fin n, Fintype.card { p : Fin n // inc p l } = q + 1)
    (g : ℕ) (hbudget : n * (q + 1) ≤ 100 * g),
    ∃ (A B : Fin g → Finset (Fin n)),
      (∀ i, ∀ p ∈ A i, ∀ l ∈ B i, inc p l) ∧
      (∀ p l, inc p l → ∃ i, p ∈ A i ∧ l ∈ B i) ∧
      ∑ i : Fin g, ((A i).card + (B i).card) ≤ 100 * g + n)
    (largeOrder : ∀ (x1 x2 : ℕ) (x3 : Fin x2 → Fin x2 → Prop) [x4 : DecidableRel x3],
      (198 : ℕ) < x1 →
      x2 = x1 ^ (2 : ℕ) + x1 + (1 : ℕ) →
      (∀ (x7 : Fin x2), Fintype.card { x8 : Fin x2 // x3 x8 x7 } = x1 + (1 : ℕ)) →
      (∀ (x8 x9 : Fin x2), x8 ≠ x9 → ∃! x11 : Fin x2, x3 x8 x11 ∧ x3 x9 x11) →
      ∀ (x9 x10 : ℕ) (x11 : Finset ℕ) (x12 : ℕ → Set ((Fin x2 → Bool) × (Fin x2 → Bool))),
      x10 < x2 + x2 + x9 →
      (∀ (x14 : Fin x2), x12 ↑x14 = {x15 : (Fin x2 → Bool) × (Fin x2 → Bool) | x15.1 x14 = Bool.true} ∧ x12 (x2 + ↑x14) = {x15 : (Fin x2 → Bool) × (Fin x2 → Bool) | x15.2 x14 = Bool.true}) →
      (∀ x15 < x9,
      ∃ x17 < x2 + x2 + x15,
      ∃ x18 < x2 + x2 + x15,
      have x19 : Set ((Fin x2 → Bool) × (Fin x2 → Bool)) := x12 (x2 + x2 + x15);
      x19 = x12 x17 ∪ x12 x18 ∨ x19 = x12 x17 ∨ x19 = ∅ ∨ x19 = x12 x17 ∩ x12 x18 ∧ (x15 ∈ x11 ∨ ∃ (x20 : Set (Fin x2 → Bool)) (x21 : Set (Fin x2 → Bool)), x12 x17 = x20 ×ˢ Set.univ ∧ x12 x18 = Set.univ ×ˢ x21)) →
      (∀ (x16 x17 : Fin x2), x3 x16 x17 → (fun (x19 : Fin x2) => Decidable.decide (x19 = x16), fun (x19 : Fin x2) => Decidable.decide (x19 = x17)) ∈ x12 x10) → (∀ (x17 : Fin x2 → Bool), Fintype.card { x18 : Fin x2 // x17 x18 = Bool.true } ≤ x1 → (fun (x19 : Fin x2) => Decidable.decide ¬∃ (x20 : Fin x2), x3 x19 x20 ∧ x17 x20 = Bool.true, x17) ∉ x12 x10) → (100 : ℕ) * x11.card < x2 * x1 → x2 * (x1 + 1) ≤ 100 * x9) :
    ∀ (x1 x2 : ℕ) (x3 : Fin x2 → Fin x2 → Prop) [x4 : DecidableRel x3],
      (100 : ℕ) < x1 →
      x2 = x1 ^ (2 : ℕ) + x1 + (1 : ℕ) →
      (∀ (x7 : Fin x2), Fintype.card { x8 : Fin x2 // x3 x8 x7 } = x1 + (1 : ℕ)) →
      (∀ (x8 x9 : Fin x2), x8 ≠ x9 → ∃! x11 : Fin x2, x3 x8 x11 ∧ x3 x9 x11) →
      ∀ (x9 x10 : ℕ) (x11 : Finset ℕ) (x12 : ℕ → Set ((Fin x2 → Bool) × (Fin x2 → Bool))),
      x10 < x2 + x2 + x9 →
      (∀ (x14 : Fin x2), x12 ↑x14 = {x15 : (Fin x2 → Bool) × (Fin x2 → Bool) | x15.1 x14 = Bool.true} ∧ x12 (x2 + ↑x14) = {x15 : (Fin x2 → Bool) × (Fin x2 → Bool) | x15.2 x14 = Bool.true}) →
      (∀ x15 < x9,
      ∃ x17 < x2 + x2 + x15,
      ∃ x18 < x2 + x2 + x15,
      have x19 : Set ((Fin x2 → Bool) × (Fin x2 → Bool)) := x12 (x2 + x2 + x15);
      x19 = x12 x17 ∪ x12 x18 ∨ x19 = x12 x17 ∨ x19 = ∅ ∨ x19 = x12 x17 ∩ x12 x18 ∧ (x15 ∈ x11 ∨ ∃ (x20 : Set (Fin x2 → Bool)) (x21 : Set (Fin x2 → Bool)), x12 x17 = x20 ×ˢ Set.univ ∧ x12 x18 = Set.univ ×ˢ x21)) →
      (∀ (x16 x17 : Fin x2), x3 x16 x17 → (fun (x19 : Fin x2) => Decidable.decide (x19 = x16), fun (x19 : Fin x2) => Decidable.decide (x19 = x17)) ∈ x12 x10) → (∀ (x17 : Fin x2 → Bool), Fintype.card { x18 : Fin x2 // x17 x18 = Bool.true } ≤ x1 → (fun (x19 : Fin x2) => Decidable.decide ¬∃ (x20 : Fin x2), x3 x19 x20 ∧ x17 x20 = Bool.true, x17) ∉ x12 x10) → (100 : ℕ) * x11.card < x2 * x1 → ∃ (x19 : Fin x9 → Finset (Fin x2)) (x20 : Fin x9 → Finset (Fin x2)), (∀ (x21 : Fin x9), ∀ x22 ∈ x19 x21, ∀ x24 ∈ x20 x21, x3 x22 x24) ∧ (∀ (x21 x22 : Fin x2), x3 x21 x22 → ∃ (x24 : Fin x9), x21 ∈ x19 x24 ∧ x22 ∈ x20 x24) ∧ ∑ x21 : Fin x9, ((x19 x21).card + (x20 x21).card) ≤ (100 : ℕ) * x9 + x2 := by
  classical
  intro q N I inst hq hN degrees unique s o tags X ho inputs steps pos neg tagBound
  apply stars q N I hq degrees s
  by_cases large : 198 < q
  · exact largeOrder q N I large hN degrees unique s o tags X ho inputs steps pos neg tagBound
  have width : N + N ≤ s + 1 := by
    have propagate (g : ℕ) (hg : g < s) : ∃ a < N+N+g, ∃ b < N+N+g,
        ∀ z z', z ∈ X (N+N+g) → z' ∉ X (N+N+g) →
          (z ∈ X a ∧ z' ∉ X a) ∨ (z ∈ X b ∧ z' ∉ X b) := by
      obtain ⟨a, ha, b, hb, law⟩ := steps g hg
      refine ⟨a, ha, b, hb, ?_⟩
      intro z z' hz hn
      rcases law with law | law | law | ⟨law, _⟩
      · rw [law] at hz hn
        rcases hz with h | h
        · exact Or.inl ⟨h,fun t => hn (Or.inl t)⟩
        · exact Or.inr ⟨h,fun t => hn (Or.inr t)⟩
      · rw [law] at hz hn
        exact Or.inl ⟨hz,hn⟩
      · rw [law] at hz
        exact hz.elim
      · rw [law] at hz hn
        by_cases h : z' ∈ X a
        · exact Or.inr ⟨hz.2,fun hb => hn ⟨h,hb⟩⟩
        · exact Or.inl ⟨hz.1,h⟩
    have reach (k : ℕ) (hk : k ≤ s) (W : Finset ℕ) (hw : ∀ w ∈ W, w < N+N+k) :
        ∃ S : Finset ℕ, S.card ≤ W.card+k ∧ ∀ w ∈ W, ∀ z z', z ∈ X w → z' ∉ X w →
          ∃ v ∈ S, v < N+N ∧ z ∈ X v ∧ z' ∉ X v := by
      induction k generalizing W with
      | zero =>
        refine ⟨W,by omega,?_⟩
        intro w mem z z' hz hz'
        exact ⟨w,mem,by simpa using hw w mem,hz,hz'⟩
      | succ k ih =>
        let w := N+N+k
        by_cases use : w ∈ W
        · obtain ⟨a,ha,b,hb,parent⟩ := propagate k (by omega)
          let U := insert a (insert b (W.erase w))
          have bounds : ∀ u ∈ U, u < w := by
            intro u hu
            rcases Finset.mem_insert.mp hu with rfl|h
            · exact ha
            rcases Finset.mem_insert.mp h with rfl|h
            · exact hb
            obtain ⟨ne,inc⟩ := Finset.mem_erase.mp h
            have bound := hw u inc
            change u ≠ N+N+k at ne
            change u < N+N+k
            omega
          obtain ⟨S,c,dep⟩ := ih (by omega) U bounds
          have uc : U.card ≤ W.card+1 := by
            have c1 := Finset.card_insert_le a (insert b (W.erase w))
            have c2 := Finset.card_insert_le b (W.erase w)
            rw [Finset.card_erase_of_mem use] at c2
            have := Finset.card_pos.mpr ⟨_,use⟩
            dsimp [U]; omega
          refine ⟨S,by omega,?_⟩
          intro u hu z z' hz hz'
          by_cases eq : u=w
          · subst u
            rcases parent z z' hz hz' with h|h
            · exact dep a (by simp [U]) z z' h.1 h.2
            · exact dep b (by simp [U]) z z' h.1 h.2
          · exact dep u (by simp [U,eq,hu]) z z' hz hz'
        · have bounds : ∀ u ∈ W, u < w := by
            intro u hu
            have ne : u ≠ w := fun eq => use (eq ▸ hu)
            have bound := hw u hu
            change u ≠ N+N+k at ne
            change u < N+N+k
            omega
          obtain ⟨S,c,h⟩ := ih (by omega) W bounds
          exact ⟨S,by omega,h⟩
    obtain ⟨S,card,dep⟩ := reach s le_rfl {o} (by simpa using ho)
    have witness (p l : Fin N) (h : I p l) (y : Fin N → Bool)
        (cy : Fintype.card {k : Fin N // y k = true} ≤ q) :
        ∃ v ∈ S, v < N+N ∧
            ((fun k : Fin N => decide (k=p)), (fun k : Fin N => decide (k=l))) ∈ X v ∧
            ((fun k : Fin N => decide (¬ ∃ t, I k t ∧ y t = true)),y) ∉ X v :=
      dep o (by simp) _ _ (pos p l h) (neg y cy)
    have allBits : Finset.range (N+N) ⊆ S := by
      intro v hv
      have bound := Finset.mem_range.mp hv
      by_cases point : v < N
      · let p : Fin N := ⟨v,point⟩
        have big : 2 ≤ N := by nlinarith [Nat.zero_le (q^2)]
        let p' : Fin N := if p.val=0 then ⟨1,by omega⟩ else ⟨0,by omega⟩
        have ne : p ≠ p' := by
          intro e
          have eq := congrArg Fin.val e
          unfold p' at eq
          split at eq
          · change p.val = 1 at eq; omega
          · change p.val = 0 at eq; contradiction
        obtain ⟨l,hl,_⟩ := unique p p' ne
        obtain ⟨u,hu,ub,hp,hn⟩ := witness p l hl.1 (fun k => decide (k=l)) (by
          rw [Fintype.card_of_subtype ({l} : Finset (Fin N)) (by intro k; simp)]
          simpa using (show 1 ≤ q by omega))
        by_cases left : u < N
        · let k : Fin N := ⟨u,left⟩
          rw [(inputs k).1] at hp
          have eq : k = p := of_decide_eq_true hp
          exact (congrArg Fin.val eq) ▸ hu
        · let k : Fin N := ⟨u-N,by omega⟩
          have e : u = N + k.val := by dsimp [k]; omega
          rw [e,(inputs k).2] at hp hn
          exact False.elim (hn hp)
      · let l : Fin N := ⟨v-N,by omega⟩
        have hc : 0 < Fintype.card {p : Fin N // I p l} := by rw [degrees]; omega
        obtain ⟨⟨p,hpl⟩⟩ := Fintype.card_pos_iff.mp hc
        obtain ⟨u,hu,ub,hp,hn⟩ := witness p l hpl (fun _ => false) (by simp [Fintype.card_subtype])
        by_cases left : u < N
        · let k : Fin N := ⟨u,left⟩
          rw [(inputs k).1] at hn
          apply False.elim
          apply hn
          change decide (¬∃ t, I k t ∧ false = true) = true
          simp
        · let k : Fin N := ⟨u-N,by omega⟩
          have e : u = N + k.val := by dsimp [k]; omega
          rw [e,(inputs k).2] at hp
          have eq : k = l := of_decide_eq_true hp
          have e2 := congrArg Fin.val eq
          change u-N = v-N at e2
          have : u=v := by omega
          exact this ▸ hu
    have count := Finset.card_le_card allBits
    simp only [Finset.card_range] at count
    simp only [Finset.card_singleton] at card
    omega
  have qmax : q+1 ≤ 199 := by omega
  have bound := Nat.mul_le_mul_left N qmax
  have nn : 100 ≤ N := by nlinarith [Nat.zero_le (q^2)]
  omega
