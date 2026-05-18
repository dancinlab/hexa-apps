#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_vsco" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-VSCO mk1 — physical-limit-anchored consumer mobile pro photo editor"
  brief = "HEXA-VSCO per-domain ledger · sibling of HEXA-VSCO.md"
  parent = "dancinlab/hexa-apps"
  sibling-md = "HEXA-VSCO.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-VSCO.md.
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
