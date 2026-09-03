#!/usr/bin/env bash
#
# which-claude.sh
#
# A quick interactive helper that recommends which Claude tool to use
# based on what you're trying to do.

set -euo pipefail

echo "What do you need to do?"
echo "  a) Explore data or ask questions"
echo "  b) Write code or build something"
echo "  c) Organize files or automate tasks"
echo
read -r -p "Enter a, b, or c: " choice

# Normalize input: trim whitespace and lowercase it
choice="$(echo "$choice" | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]')"

echo
case "$choice" in
  a)
    echo "Recommendation: Claude.ai"
    echo "Best for uploading files, asking questions, and generating Artifacts."
    echo
    echo "Quick tip: Head to claude.ai, start a new chat, and drag in a file"
    echo "or dataset to start exploring it right away."
    ;;
  b)
    echo "Recommendation: Claude Code"
    echo "Best for writing code, reading files, and building projects."
    echo
    echo "Quick tip: Run 'claude' from your project directory in the terminal"
    echo "to start an interactive coding session."
    ;;
  c)
    echo "Recommendation: Cowork"
    echo "Best for organizing folders, renaming files, and hands-off tasks."
    echo
    echo "Quick tip: Point Cowork at the folder you want managed and describe"
    echo "the task in plain language — it'll handle the busywork for you."
    ;;
  *)
    echo "Sorry, '$choice' isn't a valid option. Please run the script again"
    echo "and choose a, b, or c."
    exit 1
    ;;
esac
