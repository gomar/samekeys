#!/bin/bash
# Keysmith - Apply unified shortcuts across design apps
# Run once on new Mac. Restart apps after running.

# Key encoding:
# ^ = Control, @ = Command, ~ = Option, $ = Shift
# \UF700 = ↑, \UF701 = ↓, \UF702 = ←, \UF703 = →
# \U21a9 = Return

# --- Figma ---
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Left" '^@\UF702'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Right" '^@\UF703'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Top" '^@\UF700'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Bottom" '^@\UF701'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Horizontal Centers" '^@\U21a9'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add "Arrange->Align Vertical Centers" '^@`'

# --- Keynote ---
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Left" '^@\UF702'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Right" '^@\UF703'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Top" '^@\UF700'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Bottom" '^@\UF701'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Centre" '^@\U21a9'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Middle" '^@`'

# --- PowerPoint ---
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Left" '^@\UF702'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Right" '^@\UF703'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Top" '^@\UF700'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Bottom" '^@\UF701'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Centre" '^@\U21a9'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Arrange->Align or Distribute->Align to Middle" '^@`'

# --- Numbers ---
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Left" '^@\UF702'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Right" '^@\UF703'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Top" '^@\UF700'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Bottom" '^@\UF701'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Centre" '^@\U21a9'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Middle" '^@`'

# --- Pages ---
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Left" '^@\UF702'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Right" '^@\UF703'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Top" '^@\UF700'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Bottom" '^@\UF701'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Centre" '^@\U21a9'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Arrange->Align Objects->Middle" '^@`'

echo "Done. Restart apps for shortcuts to take effect."
