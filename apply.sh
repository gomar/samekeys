#!/bin/bash
# Keysmith - Apply unified shortcuts across design apps
# Run once on new Mac. Restart apps after running.

# Key encoding:
# ^ = Control, @ = Command, ~ = Option, $ = Shift
# @^ order, \U2190-\U2193 for arrows (←↑→↓), \U21a9 = Return
# Full paths use \033 (escape) as separator to avoid conflicts

# --- Figma ---
# Menu: Arrange > Align Left/Right/Top/Bottom/Horizontal Centers/Vertical Centers
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Left' '@^\U2190'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Right' '@^\U2192'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Top' '@^\U2191'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Bottom' '@^\U2193'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Horizontal Centers' '@^\U21a9'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Vertical Centers' '@^`'

# --- Keynote ---
# Menu: Arrange > Align Objects > Left/Centre/Right/Top/Middle/Bottom
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

# --- PowerPoint ---
# Menu: Arrange > Align or Distribute > Align to Left/Centre/Right/Top/Middle/Bottom
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Left' '@^\U2190'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Right' '@^\U2192'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Top' '@^\U2191'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Bottom' '@^\U2193'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Centre' '@^\U21a9'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Middle' '@^`'

# --- Numbers ---
# Menu: Arrange > Align Objects > Left/Centre/Right/Top/Middle/Bottom
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

# --- Pages ---
# Menu: Arrange > Align Objects > Left/Centre/Right/Top/Middle/Bottom
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

echo "Done. Restart apps for shortcuts to take effect."
