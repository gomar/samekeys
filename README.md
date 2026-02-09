# Keysmith

Stop re-learning shortcuts every time you switch between Figma and Keynote.

One script. Same shortcuts across Figma, Keynote, PowerPoint, Numbers, and Pages. Run once on a new Mac — muscle memory stays intact.

## Install

```bash
./apply.sh
```

Restart your apps. Done.

To start fresh:

```bash
./apply.sh --clean
```

> `--clean` removes **all** custom keyboard shortcuts for the supported apps, not just the ones set by Keysmith. Only use it if you haven't customised shortcuts yourself, or if you're okay resetting them.

## Shortcuts

### Alignment

| Shortcut | Action |
|----------|--------|
| ⌃⌘← | Align left |
| ⌃⌘→ | Align right |
| ⌃⌘↑ | Align top |
| ⌃⌘↓ | Align bottom |
| ⌃⌘↩ | Align horizontal centers |
| ⌃⌘` | Align vertical centers |
| ⌃⌘⇧` | Distribute horizontally |
| ⌃⌘⇧↩ | Distribute vertically |

### Creation

| Shortcut | Action | Notes |
|----------|--------|-------|
| ⌃⌘T | Text box | Figma uses native `T` |
| ⌃⌘R | Rounded rectangle | Figma uses native `R` |
| ⌃⌘O | Oval | Figma uses native `O` |
| ⌃⌘L | Line | Figma uses native `L` |

### View

| Shortcut | Action | Notes |
|----------|--------|-------|
| ⌘1 | Zoom to selection | |
| ⌘2 | Zoom to fit | Not available in Numbers |

### Other

| Shortcut | Action | Notes |
|----------|--------|-------|
| ⌘⇧L | Unlock | Matches Figma's lock toggle |
| ⌥⌘C | Copy style | Native in all apps |
| ⌥⌘V | Paste style | iWork/Figma (PowerPoint uses ⇧⌘V) |

## Supported apps

- Figma
- Keynote
- PowerPoint
- Numbers
- Pages

## How it works

macOS lets you override menu shortcuts via `defaults write`. This script writes the same shortcuts to each app's preferences.

Figma's shortcuts are the mental model. Where Figma has native shortcuts (like `T` for text), we use those. Where it doesn't, we add `⌃⌘` as the modifier.
