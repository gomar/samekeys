#!/bin/bash
# Keysmith - Apply unified shortcuts across design apps
# Run once on new Mac. Restart apps after running.

# Key encoding:
# ^ = Control, @ = Command, ~ = Option, $ = Shift
# @^ order, \U2190-\U2193 for arrows (←↑→↓), \U21a9 = Return
# Full paths use \033 (escape) as separator to avoid conflicts

# =============================================================================
# FIGMA
# =============================================================================
# Note: Creation shortcuts (T, R, O, L) are built-in tools, not menu items

# Alignment
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Left' '@^\U2190'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Right' '@^\U2192'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Top' '@^\U2191'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Bottom' '@^\U2193'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Horizontal Centers' '@^\U21a9'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Vertical Centers' '@^`'

# Lock: uses Figma's native ⌘⇧L

# View
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033View\033Zoom to Selection' '@$1'
defaults write com.figma.Desktop NSUserKeyEquivalents -dict-add $'\033View\033Zoom to Fit' '@$2'

# =============================================================================
# KEYNOTE
# =============================================================================

# Alignment
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

# Creation
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Insert\033Text Box' '@^t'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Rounded Rectangle' '@^r'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Oval' '@^o'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Insert\033Line\033Line' '@^l'

# Lock/Unlock: ⌘⇧L (matches Figma's toggle)
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Lock' '@$l'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033Arrange\033Unlock' '@$l'

# View
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Zoom to Selection' '@$1'
defaults write com.apple.iWork.Keynote NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Fit Slide' '@$2'

# =============================================================================
# POWERPOINT
# =============================================================================

# Alignment
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Left' '@^\U2190'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Right' '@^\U2192'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Top' '@^\U2191'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Bottom' '@^\U2193'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Centre' '@^\U21a9'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Arrange\033Align or Distribute\033Align to Middle' '@^`'

# Creation
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Insert\033Text Box' '@^t'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Rounded Rectangle' '@^r'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Oval' '@^o'
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Line' '@^l'

# View
defaults write com.microsoft.PowerPoint NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Fit to Window' '@$2'

# =============================================================================
# NUMBERS
# =============================================================================

# Alignment
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

# Creation
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Insert\033Text Box' '@^t'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Rounded Rectangle' '@^r'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Oval' '@^o'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Insert\033Line\033Line' '@^l'

# Lock/Unlock: ⌘⇧L (matches Figma's toggle)
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Lock' '@$l'
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033Arrange\033Unlock' '@$l'

# View
defaults write com.apple.iWork.Numbers NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Zoom to Selection' '@$1'

# =============================================================================
# PAGES
# =============================================================================

# Alignment
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Left' '@^\U2190'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Right' '@^\U2192'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Top' '@^\U2191'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Bottom' '@^\U2193'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Centre' '@^\U21a9'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Align Objects\033Middle' '@^`'

# Creation
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Insert\033Text Box' '@^t'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Rounded Rectangle' '@^r'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Insert\033Shape\033Oval' '@^o'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Insert\033Line\033Line' '@^l'

# Lock/Unlock: ⌘⇧L (matches Figma's toggle)
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Lock' '@$l'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033Arrange\033Unlock' '@$l'

# View
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Zoom to Selection' '@$1'
defaults write com.apple.iWork.Pages NSUserKeyEquivalents -dict-add $'\033View\033Zoom\033Fit Page' '@$2'

echo "Done. Restart apps for shortcuts to take effect."
