# samekeys

Learn your shortcuts once. Use them everywhere.

One script gives you the same keyboard shortcuts across Figma, Keynote, PowerPoint, Word, Numbers, Pages and Excel. Run it on a new Mac — you're done.

## Get started

```bash
./apply.sh
```

Restart your apps. That's it.

Want a clean slate? This removes all custom shortcuts for the supported apps, then re-applies samekeys's.

```bash
./apply.sh --clean
```

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

> **Word & Excel**: creation shortcuts work. Alignment, distribute, and unlock are ribbon-only in these apps and cannot be bound to keyboard shortcuts.

### View

| Shortcut | Action | Notes |
|----------|--------|-------|
| ⌘1 | Zoom to selection | |
| ⌘2 | Zoom to fit | Not available in Numbers |

### Other

| Shortcut | Action | Notes |
|----------|--------|-------|
| ⌃⌘C | Comment | Figma uses native `C` |
| ⌘⇧L | Unlock | Matches Figma |
| ⌥⌘C | Copy style | Native in all apps |
| ⌥⌘V | Paste style | PowerPoint uses ⇧⌘V |

## Supported apps

Figma, Keynote, PowerPoint, Word, Numbers, Pages and Excel.

## How it works

macOS lets you override any menu shortcut with `defaults write`. samekeys writes the same set of shortcuts to each app's preferences.

Figma is the mental model. Where Figma already has a shortcut — like `T` for text — we keep it. Where it doesn't, we use `⌃⌘` as the modifier.
