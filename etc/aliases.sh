#!/usr/bin/env bash
# ------------------------------------------------------------------------------
# OraDBA - Oracle Database Infrastructure and Security, 5630 Muri, Switzerland
# ------------------------------------------------------------------------------
# Name.......: aliases.sh
# Author.....: Stefan Oehrli (oes) stefan.oehrli@oradba.ch
# Editor.....: Stefan Oehrli
# Date.......: 2026.02.17
# Revision...: 0.4.0
# Purpose....: Optional extension alias hook
# Notes......: This file is sourced by OraDBA only when BOTH conditions are met:
#              - ORADBA_EXTENSIONS_SOURCE_ETC=true (global switch)
#              - .extension contains: load_aliases: true
# Reference..: https://github.com/oehrlis/oradba_extension
# License....: Apache License Version 2.0, January 2004 as shown
#              at http://www.apache.org/licenses/
# ------------------------------------------------------------------------------

# Example aliases for extension tools
alias exttool='extension_tool.sh'
alias extsql='sqlplus / as sysdba @extension_simple.sql'
