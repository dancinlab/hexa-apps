# TAPE-AUDIT — hexa-apps

**Date:** 2026-05-14 · **Lens:** `.tape` (typed events).

## A. Audit-class ledgers

`state/markers/*.marker` — uniform dancinlab boot-hook markers (rich timestamp count incl. multiple `_FAILED`), **CARGO**. No `.jsonl`, no audit scripts.

## B. Identity surface

`hexa.toml` **has `[identity]`** (regex matched). App-brand identity.

## C. Domain.md files

**5 UPPERCASE.md** — `CAMERA-FILTER-APP.md` (52 KB), `HEXA-FILTER-ALGEBRA.md` (62 KB), `HEXA-MAIN-CHARACTER.md` (66 KB), `HEXA-PARALLEL-SELF.md` (65 KB), `HEXA-VSCO.md` (61 KB). One UPPERCASE.md per app concept — strong adoption. Hyphen-joined `CAMERA-FILTER-APP`, `HEXA-FILTER-ALGEBRA`, etc. are meta-domain-shaped.

## D. Per-run / per-event history

None — boot-hook markers only. These are app *specs* (each 50–66 KB prose), not runtime data; consumer-app event streams (per-photo / per-filter / per-session) would be runtime, in deployed apps not the spec repo.

## E. Promotion candidates

- **`<DOMAIN>.tape`** (MEDIUM): each app-spec UPPERCASE.md is a natural companion-tape site for spec-evolution (`@D` design-decision · `@?` open question · `@R` user-test result · `@H` revision history). Today the 50–66 KB prose carries all evolution inline.
- **`.tape` runtime stream**: deployed apps (camera-filter, parallel-self, main-character) would emit per-session ledgers — but those would live in the runtime, not this spec repo.
- **n6 atoms**: filter-algebra explicitly invokes n=6 (one of the few legit lattice fits in this audit) — `HEXA-FILTER-ALGEBRA.md` is the candidate.
- **hxc**: image-byte filters plausible.

## Verdict

**MEDIUM** — 5 large app-spec UPPERCASE.md files, strong convention adoption, parallel to `lumiere/` (camera-filter app spec). Pre-impl spec-only repo. `HEXA-FILTER-ALGEBRA.md` is the most plausible n6 atom site.
