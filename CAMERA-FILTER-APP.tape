#!/usr/bin/env tape

@V := "tape" :: spec [active]
  version = "1.2"

@I id001 := "camera_filter_app" :: identity-claim [d=2026-05-14 active]
  kind = "HEXA-CAMERA-FILTER-APP mk1 — physical-limit-anchored consumer mobile camera filter"
  brief = "Camera-filter apps (VSCO / Lightroom Mobile / Snapseed / Apple-Photos"
  parent = "dancinlab/hexa-apps"
  sibling-md = "CAMERA-FILTER-APP.md"

# ─── §Log (append @A / @D events here, chronological) ────────────────
# 
# Pre-existing log entries live in CAMERA-FILTER-APP.md.
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
