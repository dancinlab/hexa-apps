#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "hexa_parallel_self" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-PARALLEL-SELF mk1 — physical-limit-anchored mobile alternate-self generation"
  brief = "HEXA-PARALLEL-SELF per-domain ledger · sibling of HEXA-PARALLEL-SELF.md"
  parent = "dancinlab/hexa-apps"
  sibling-md = "HEXA-PARALLEL-SELF.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in HEXA-PARALLEL-SELF.md.
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
