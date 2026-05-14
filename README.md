<p align="center">
  <img src="docs/logo.svg" width="140" alt="hexa-apps">
</p>

<h1 align="center">📱 hexa-apps</h1>

<p align="center"><strong>HEXA-Mobile Family</strong> — apps · mobile · 5-verb consumer-app spec catalog · n=6 lattice</p>

<p align="center">
  <a href="LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <a href="https://doi.org/10.5281/zenodo.20114975"><img alt="DOI" src="https://zenodo.org/badge/DOI/10.5281/zenodo.20114975.svg"></a>
  <img alt="Spec" src="https://img.shields.io/badge/spec-v0.1.0-success">
  <img alt="Verbs" src="https://img.shields.io/badge/verbs-5_spec-informational">
  <img alt="Verify" src="https://img.shields.io/badge/verify-4%2F4_PASS-informational">
  <img alt="Closure" src="https://img.shields.io/badge/closure-100%25-informational">
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-hexa--mind%20·%20hexa--senses-blueviolet">
</p>

<p align="center">consumer-app · camera · filter · identity · VSCO · n=6 · σ·φ=24 · spec-catalog · MIT</p>

---

`hexa-apps` is the 📱 rollup of canon's application-prototype verbs — the part of the architecture concerned with consumer-grade camera, identity, and filter app product specs. Each verb (`camera_filter_app · hexa_filter_algebra · hexa_main_character · hexa_parallel_self · hexa_vsco`) is a self-contained product spec grounded on `σ(6)=12`, `τ(6)=4`, `φ(6)=2` number theory.

> [!NOTE]
> Sister-rollup of [`hexa-mind`](https://github.com/dancinlab/hexa-mind) (7-verb mental substrate) and `hexa-senses` (sensory substrate). All three share the n=6 lattice scaffold and the spec-first verification discipline (`LATTICE_POLICY.md` §1.3 + `LIMIT_BREAKTHROUGH.md` real-limit anchors). Extracted from `canon@ded52144` on 2026-05-10.

## Why hexa-apps

`hexa-apps` curates consumer-app prototypes that surface the n=6 lattice in everyday products. Where `hexa-mind` curates AI mental ops and `hexa-senses` curates AI senses, hexa-apps focuses on the product-spec layer: what does a camera / filter / identity app look like when it inherits σ(6)=12 axes and a 4-stage capture→filter→share→archive ladder?

The substrate is **SPEC_CATALOG_ONLY at v0.1.0** — no Swift/Kotlin/RN source code, no App Store distribution, no backends. What it carries is closed-form specs that any downstream implementor can take to a working build, with real-limit anchors (Shannon · Nyquist · Landauer · Airy · TOPS · LPDDR5X · Li-ion · App-store engineering envelopes) wired into the verifier so over-claims fail CI.

## n=6 master identity

```
σ(6) · φ(6) = n · τ(6) = J₂ = 24
   12   ·   2  =  6  ·   4  = 24
```

| Symbol | Value | Apps projection                                       |
|--------|-------|--------------------------------------------------------|
| n      | 6     | filter-axis count · identity-mode count                |
| σ(6)   | 12    | filter-composition dimensions                          |
| τ(6)   | 4     | app-stage quartet (capture / filter / share / archive) |
| φ(6)   | 2     | pre-/post-filter verdict bit                           |
| J₂     | 24    | filter-channel multiplexing factor                     |

## Status

**SPEC_CATALOG_ONLY at v0.1.0**.

What works at v0.1:

- 5 verb specs land on disk under their named directories.
- `hexa-apps list` prints the 5-verb table.
- `hexa-apps <verb>` prints spec path + first 20 lines.
- `hexa-apps selftest` confirms 5/5 spec presence.

What is **out of scope** at v0.1:

- Working app source for any verb (no Swift/Kotlin/RN code).
- App-store distribution.
- Backend services.

> [!IMPORTANT]
> Per `LATTICE_POLICY.md` §1.3, lattice-arithmetic identities are permitted only as auxiliary self-consistency checks; the substrate's real verification anchors live in `LIMIT_BREAKTHROUGH.md`. Consumer-app over-claims are preserved verbatim as caveats: `§5.1 No "AGI camera"`, `§5.5 EMH-style ad-revenue honesty`, `§5.6 No n=6 magic`.

## Install

```sh
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install hexa-apps
hx install hexa-apps
```

## Run

```sh
hexa-apps camera_filter_app    # consumer camera filter app prototype
hexa-apps hexa_filter_algebra  # 6-axis filter algebra
hexa-apps hexa_main_character  # main-character mode identity app
hexa-apps hexa_parallel_self   # parallel-self identity multiplexer
hexa-apps hexa_vsco            # VSCO-style aesthetic filter app
hexa-apps list                 # verb table + caveats
hexa-apps selftest             # 5-verb spec presence sweep
```

## Verify

Sister-substrate `verify/run_all.hexa` aggregator pattern, scaled to spec-first scope. From the repo root:

```sh
hexa run verify/run_all.hexa     # exit 0 = all 4 scripts PASS
```

| script                            | what it checks                                                                                            |
| --------------------------------- | --------------------------------------------------------------------------------------------------------- |
| `verify/spec_presence.hexa`       | all 5 verb spec docs present at declared paths                                                            |
| `verify/lattice_arithmetic.hexa`  | n=6 self-consistency (σ·φ = n·τ = 24) — *aux only* per `LATTICE_POLICY.md` §1.3                           |
| `verify/real_limits_anchor.hexa`  | `LIMIT_BREAKTHROUGH.md` anchors (Shannon · Nyquist · Landauer · Airy · TOPS · LPDDR5X · Li-ion · App-store) |
| `verify/closure_consistency.hexa` | scoreboard cross-check (CLI · `hexa.toml` · README · `AGENTS.md`)                                         |

Per `LATTICE_POLICY.md` §1.3, lattice-arithmetic identities are
permitted only as auxiliary self-consistency checks; the substrate's
real verification anchors live in `LIMIT_BREAKTHROUGH.md` (Shannon
entropy / Nyquist–Shannon sampling / Landauer kT ln 2 / Rayleigh-Airy
HARD walls + mobile-NPU TOPS / LPDDR5X / Li-ion / App-store engineering
envelopes).

**Closure: 100 %** — 4/4 verify scripts PASS, 5/5 verb specs present,
`SPEC_CATALOG_ONLY` verdict preserved.

## Repo layout

```
hexa-apps/
├── README.md / LICENSE / hexa.toml / CITATION.cff       ← project meta
├── AGENTS.tape                                          ← identity + governance (.tape v1.2)
├── CLAUDE.md                                            ← symlink → AGENTS.tape
├── LATTICE_POLICY.md / LIMIT_BREAKTHROUGH.md            ← lattice + real-limit anchors
├── TAPE-AUDIT.md                                        ← tape adoption audit
│
├── camera-filter-app/                                    ← consumer camera filter prototype spec
├── hexa-filter-algebra/                                  ← 6-axis filter algebra spec
├── hexa-main-character/                                  ← main-character identity-mode spec
├── hexa-parallel-self/                                   ← parallel-self multiplexer spec
├── hexa-vsco/                                            ← VSCO-style aesthetic filter spec
│
├── CAMERA-FILTER-APP.md / HEXA-FILTER-ALGEBRA.md / ...  ← per-verb declarative SSOTs (5 docs)
│
├── cli/                                                  ← 5-verb router + selftest
├── install.hexa                                          ← hx install entry point
├── verify/                                               ← 4-script aggregator (spec-presence + lattice + real-limits + closure)
├── tests/                                                ← regression harness
└── state/                                                ← gitignored runtime markers
```

## Cross-link

- 🧠 [`dancinlab/hexa-mind`](https://github.com/dancinlab/hexa-mind) — 7-verb mental substrate (sister-rollup).
- 👁️ `hexa-senses` — sensory substrate (sister-rollup).

Upstream concept SSOT: `canon/domains/apps/{camera-filter-app, hexa-filter-algebra, hexa-main-character, hexa-parallel-self, hexa-vsco}/`.

## License

[MIT](LICENSE) — permissive. See [LICENSE](LICENSE).
