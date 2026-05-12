# 📱 hexa-apps — n=6 application prototypes (5-verb library)

> 5-verb application-prototypes substrate organized as a closed-form spec catalog:
> **camera_filter_app + hexa_filter_algebra + hexa_main_character + hexa_parallel_self + hexa_vsco**.
> Each verb is a self-contained product spec for a consumer-grade camera /
> identity / filter app prototype, grounded on σ(6)=12, τ(6)=4, φ(6)=2 number
> theory. Sister-rollup of [hexa-mind](https://github.com/dancinlab/hexa-mind)
> mental substrate, extracted from `canon@ded52144` on 2026-05-10.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.20114975.svg)](https://doi.org/10.5281/zenodo.20114975)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.0-informational.svg)](hexa.toml)
[![Verbs: 5](https://img.shields.io/badge/verbs-5_(apps)-blue.svg)](#verbs)
[![n=6 lattice](https://img.shields.io/badge/n=6-σ·φ_=_n·τ_=_24-blue.svg)](#n6-master-identity)

---

## Why hexa-apps?

`hexa-apps` is the 📱 rollup of canon's application-prototype verbs
— the part of the architecture concerned with consumer-grade camera,
identity, and filter app product specs. Where
[hexa-mind](https://github.com/dancinlab/hexa-mind) curates AI
mental ops and `hexa-senses` curates AI senses, hexa-apps curates
consumer-app prototypes that surface the n=6 lattice in everyday
products.

---

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

---

## Install

```bash
# 1. Install hexa-lang (gives you `hexa` + `hx` package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Install hexa-apps
hx install hexa-apps
```

## Run

```bash
hexa-apps camera_filter_app    # consumer camera filter app prototype
hexa-apps hexa_filter_algebra  # 6-axis filter algebra
hexa-apps hexa_main_character  # main-character mode identity app
hexa-apps hexa_parallel_self   # parallel-self identity multiplexer
hexa-apps hexa_vsco            # VSCO-style aesthetic filter app
hexa-apps list                 # verb table + caveats
hexa-apps selftest             # 5-verb spec presence sweep
```

---

## Cross-link

- 🧠 [dancinlab/hexa-mind](https://github.com/dancinlab/hexa-mind) — 7-verb mental substrate (sister-rollup).
- 👁️ `hexa-senses` — sensory substrate (sister-rollup).

Upstream concept SSOT: `canon/domains/apps/{camera-filter-app, hexa-filter-algebra, hexa-main-character, hexa-parallel-self, hexa-vsco}/`.

---

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

---

## License

MIT. See [LICENSE](LICENSE).
