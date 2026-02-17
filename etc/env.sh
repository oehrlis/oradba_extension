#!/usr/bin/env bash
# ------------------------------------------------------------------------------
# OraDBA - Oracle Database Infrastructure and Security, 5630 Muri, Switzerland
# ------------------------------------------------------------------------------
# Name.......: env.sh
# Author.....: Stefan Oehrli (oes) stefan.oehrli@oradba.ch
# Editor.....: Stefan Oehrli
# Date.......: 2026.02.17
# Revision...: 0.4.0
# Purpose....: Optional extension environment hook
# Notes......: This file is sourced by OraDBA only when BOTH conditions are met:
#              - ORADBA_EXTENSIONS_SOURCE_ETC=true (global switch)
#              - .extension contains: load_env: true
#              Keep this file idempotent (safe when sourced multiple times).
# Reference..: https://github.com/oehrlis/oradba_extension
# License....: Apache License Version 2.0, January 2004 as shown
#              at http://www.apache.org/licenses/
# ------------------------------------------------------------------------------

# Extension-local defaults (only set when not already defined)
export EXTENSION_TEMPLATE_FEATURE_FLAG="${EXTENSION_TEMPLATE_FEATURE_FLAG:-true}"
export EXTENSION_TEMPLATE_TIMEOUT="${EXTENSION_TEMPLATE_TIMEOUT:-30}"

# Optional helper path (only prepend if directory exists)
if [[ -d "${EXTENSION_TEMPLATE_BASE:-}/bin" ]]; then
    PATH="${EXTENSION_TEMPLATE_BASE}/bin:${PATH}"
fi
