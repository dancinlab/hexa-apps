#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_main_character" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-MAIN-CHARACTER mk1 — physical-limit-anchored cinematic-look video filter app"
  brief = "HEXA-MAIN-CHARACTER per-domain ledger · sibling of HEXA-MAIN-CHARACTER.md"
  parent = "dancinlab/hexa-apps"
  sibling-md = "HEXA-MAIN-CHARACTER.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-MAIN-CHARACTER.md.
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
