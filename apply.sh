#!/bin/bash
# Keysmith - Apply unified shortcuts across design apps
# Run once on new Mac. Restart apps after running.

# Key encoding:
# ^ = Control, @ = Command, ~ = Option, $ = Shift
# All apps use: @^ order, leaf menu name, \U2190-\U2193 for arrows (←↑→↓)
# \U21a9 = Return

# --- Figma ---
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Left' '@^\U2190'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Right' '@^\U2192'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Top' '@^\U2191'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Bottom' '@^\U2193'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Horizontal Centers' '@^\U21a9'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add 'Align Vertical Centers' '@^`'

# --- Keynote ---
# Uses leaf menu name only, @^ order (like Numbers/Pages/PowerPoint)
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Left" '@^\U2190'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Right" '@^\U2192'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Top" '@^\U2191'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Bottom" '@^\U2193'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Centre" '@^\U21a9'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add "Middle" '@^`'

# --- PowerPoint ---
# Uses standard domain (not sandboxed container), leaf menu name only, @^ order
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Left" '@^\U2190'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Right" '@^\U2192'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Top" '@^\U2191'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Bottom" '@^\U2193'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Centre" '@^\U21a9'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add "Align to Middle" '@^`'

# --- Numbers ---
# Uses leaf menu name only, @^ order (like PowerPoint)
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Left" '@^\U2190'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Right" '@^\U2192'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Top" '@^\U2191'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Bottom" '@^\U2193'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Centre" '@^\U21a9'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add "Middle" '@^`'

# --- Pages ---
# Uses leaf menu name only, @^ order (like Numbers/PowerPoint)
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Left" '@^\U2190'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Right" '@^\U2192'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Top" '@^\U2191'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Bottom" '@^\U2193'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Centre" '@^\U21a9'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add "Middle" '@^`'

echo "Done. Restart apps for shortcuts to take effect."
