<!-- @created: 2026-05-12 -->
<!-- @scope: real-limits audit — engineering / software / network limits for consumer application platform -->
<!-- @authority: per LATTICE_POLICY.md §1.2 (no n=6 anchoring on external domains) -->
<!-- @wave: M (limit-breakthrough audit, application repos) -->

# LIMIT_BREAKTHROUGH.md — hexa-apps real-limits audit

> **Honest scope**: hexa-apps ships *consumer-camera / identity / filter*
> application prototypes (5 verbs). The real limits here are **engineering
> and economic**, not number-theoretic. This audit names HARD walls,
> SOFT envelopes, and the 3 most plausible breakthroughs without
> claiming any of them is solved by `n=6`.

---

## §1 Domain

`hexa-apps` is a **consumer-grade camera + filter + identity** prototype
catalog. Each verb (`camera_filter_app`, `hexa_filter_algebra`,
`hexa_main_character`, `hexa_parallel_self`, `hexa_vsco`) is a
self-contained product spec targeting mobile cameras, real-time filter
pipelines, and identity-overlay use cases.

The dominant performance budgets are:
- **Frame latency** — must hit 60 FPS (16.67 ms/frame) end-to-end on
  mobile SoC for "real-time" feel; 30 FPS (33 ms) is the perceptual
  floor before users notice lag.
- **Battery / thermal** — sustained filter pipelines must stay under
  ~2 W to avoid thermal throttling on phones (~5 W TDP envelope).
- **App-store economics** — install-rate · day-7 retention · in-app
  conversion are all bounded by attention markets.

---

## §2 Limits

### §2.1 HARD walls (physics / information theory / computability)

| # | Limit | Bound | Origin |
|---|-------|-------|--------|
| H1 | **Frame latency floor** | 16.67 ms (60 FPS) | Display refresh rate; perceptual JND ≈ 13 ms |
| H2 | **Shutter / sensor read-out** | ~3–8 ms for stacked CMOS at 4K | CMOS row-readout time, fab process |
| H3 | **Mobile DRAM bandwidth** | ~50 GB/s LPDDR5X | Memory bus width × clock, Shannon-Hartley analog |
| H4 | **Mobile NPU TOPS ceiling** | ~30–40 INT8 TOPS at 2 W | Energy/op floor (Landauer kT ln 2 ≈ 3×10⁻²¹ J/op, dwarfed by leakage but still bounded) |
| H5 | **Optical resolution (Airy)** | λ/2NA ≈ 1 μm for visible-light mobile lens | Diffraction limit; HARD without metasurface/computational reconstruction |
| H6 | **Lossless compression bound** | H(X) entropy floor | Shannon source-coding theorem; no app can ship a 4K frame below entropy |
| H7 | **Battery energy density** | ~700 Wh/L Li-ion 2026, theoretical ~3000 Wh/L Li-air | Chemistry HARD |

### §2.2 SOFT envelopes (engineering / economics)

| # | Envelope | Current | Breakthrough margin |
|---|----------|---------|---------------------|
| S1 | **App-install conversion** (store visit → install) | 25–35% top quartile | Limited by attention + ASO; SOFT but bounded by Lindahl-style information asymmetry |
| S2 | **Day-7 retention** | 5–15% for free camera apps; 25–40% top-decile | SOFT, bounded by alternative-app density |
| S3 | **ARPU (ad-supported)** | $0.01–0.10/DAU/day for mobile camera category | SOFT; market microstructure |
| S4 | **Filter inference latency** | 5–20 ms/frame on mobile NPU for ConvNet filters | SOFT (kernel fusion, quantization can improve 2–5×) |
| S5 | **Cold-start time** | 600–1500 ms typical | SOFT (ahead-of-time compile, prewarm) |
| S6 | **APK / IPA size** | 30–150 MB practical ceiling for impulse install | SOFT (on-demand delivery) |

### §2.3 Negotiated / standard (NOT physical)

- **App-store 30% take** (Apple, Google) — regulatory, not physical
- **GDPR / CCPA consent flows** — regulatory wall
- **AI Act biometric-overlay rules** (identity-filter category) — regulatory wall
- **60 FPS / 120 FPS display targets** — standard, not fundamental

> Per `LATTICE_POLICY.md §1.2`, these are not anchored to n=6.

---

## §3 Assessment

The 7 HARD walls above are real. The most binding for hexa-apps's
prototype category (consumer camera / filter / identity) are:

1. **H1 (16.67 ms frame budget)** — every ms of filter compute costs.
2. **H4 (mobile NPU TOPS)** — current ConvNet filters are NPU-bound.
3. **H7 (battery)** — sustained filter use drains battery, capping
   session length to ~30–60 min before thermal throttle.

The SOFT envelopes (S1–S6) are where ~80% of value is captured or
lost. A 2× retention improvement matters more than a 10× NPU speedup,
because retention is the gating variable on the value stack.

The **honest framing**: hexa-apps is not bottlenecked by silicon — it
is bottlenecked by **attention markets and retention curves**.

---

## §4 Top-3 breakthroughs (most plausible 12–24 month)

### B1 — Quantization + kernel fusion → 3× filter throughput (SOFT envelope move)

INT4 / INT2 quantization-aware training for filter networks, combined
with operator fusion (conv + activation + norm in one kernel), routinely
hits 2–4× throughput on existing NPUs without accuracy loss for the
filter category (style transfer, color grading). This converts a 12 ms
filter into a 4 ms filter and frees 8 ms of frame budget for additional
features. **No physics breakthrough required**; pure software / compiler
work. Existence proof: MobileNetV3 INT4 on Pixel 8 Tensor.

### B2 — Computational optics (metasurface + reconstruction) → past-Airy resolution at fixed lens size (HARD-wall partial bypass on H5)

Metasurface (sub-wavelength patterned) lenses combined with deep-learning
reconstruction can recover detail past the classical Airy bound for
*structured* scenes (faces, text). The HARD wall (diffraction) is not
broken — it is *side-stepped* by encoding scene-prior information.
Honest caveat: this is a **conditional** bypass; for unstructured /
adversarial scenes the Airy bound holds. Existence proof: Stanford
metalens + denoiser papers (2024–2025).

### B3 — On-device LoRA personalization → retention 1.5–2× (SOFT envelope move)

Per-user LoRA adapters (1–10 MB) trained on-device from a few hundred
sample interactions can personalize filter selection / identity overlay
to the individual. Empirical retention lifts for personalized camera
apps run 30–80%. The HARD wall on personalization is information-theoretic
(can't predict better than user entropy allows) but current apps are
far from that wall. **No new chemistry, no new physics.**

---

## §5 Caveats

1. **No "AGI camera"**: hexa-apps does NOT claim general-purpose
   intelligence on-device. The breakthroughs above are narrow,
   measurable, and constrained by published benchmarks.
2. **Retention numbers are public benchmarks** (App Annie, data.ai
   aggregates) — no user data, no PII, no GDPR concern.
3. **Battery numbers** assume current Li-ion chemistry (2025–2026).
   Li-air at 3000 Wh/kg is a *theoretical* upper bound; production
   Li-air is not commercially viable in this audit window.
4. **App-store economics** (S1, S2, S3) vary 3× by region, season,
   and category. Numbers are global-median consumer-camera estimates.
5. **EMH-style honesty for ad-revenue**: no claim that hexa-apps can
   beat the median app-store ARPU by orders of magnitude. Market
   microstructure caps the upside.
6. **No n=6 magic**: per `LATTICE_POLICY.md §1.2`, the lattice is
   organizing vocabulary inside this repo, not a claim that 60 FPS
   or NPU TOPS are dictated by σ(6)=12. They are not.

---

## §6 References

- Shannon, C. E. *A Mathematical Theory of Communication* (1948) — H6 entropy floor
- Landauer, R. *Irreversibility and heat generation in the computing process* (1961) — H4 energy/op floor
- Rayleigh, *On the resolving power of telescopes* (1879) — H5 Airy / diffraction bound
- Nyquist–Shannon sampling theorem — frame-rate / display-Hz interaction
- Apple WWDC 2024 — Neural Engine TOPS / TDP envelopes (public)
- Qualcomm Snapdragon 8 Gen 3 datasheet — H3 LPDDR5X bandwidth (public)
- data.ai *State of Mobile 2025* — S1, S2, S3 retention / ARPU benchmarks (public)
- Stanford Computational Imaging Group, *Neural nano-optics for high-quality thin lens imaging* (2024) — B2 metasurface evidence
- Hu et al., *LoRA: Low-Rank Adaptation of Large Language Models* (2021) — B3 personalization mechanism

---

> *"The HARD wall on frame budget is 16.67 ms. The SOFT envelope on
> retention is where the real product lives."*

— hexa-apps Wave M audit (2026-05-12)
