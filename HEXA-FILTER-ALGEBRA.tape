#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_filter_algebra" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-FILTER-ALGEBRA mk1 — physical-limit-anchored filter authoring + composition framework"
  brief = "HEXA-FILTER-ALGEBRA per-domain ledger · sibling of HEXA-FILTER-ALGEBRA.md"
  parent = "dancinlab/hexa-apps"
  sibling-md = "HEXA-FILTER-ALGEBRA.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-FILTER-ALGEBRA.md.
# New per-domain history entries land here as typed events:
#
#   @A commit_<hash> :: <domain> [d=<YYYY-MM-DD> ok]
#     <- <prev-id>
#     => "<one-line description>"
#
#   @D <id> := "<decision-name>" :: <domain> [<grades>]
#     <- <evidence-id>
#     |> <verifier>
#
# See ~/core/tape/spec/tape.md for full grammar.
