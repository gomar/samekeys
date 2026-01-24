#!/usr/bin/env python3
"""keysmith - Discover menu items from macOS apps."""

import subprocess, json, sys, os

TARGET_APPS = {
    "figma": "com.figma.Desktop",
    "keynote": "com.apple.iWork.Keynote",
    "powerpoint": "com.microsoft.PowerPoint",
    "numbers": "com.apple.iWork.Numbers",
    "pages": "com.apple.iWork.Pages",
}

APPLESCRIPT = '''
tell application "System Events"
    set appProcess to first process whose bundle identifier is "{bundle_id}"
    set outputList to {}
    repeat with menuBarItem in menu bar items of menu bar 1 of appProcess
        set menuName to name of menuBarItem
        if menuName is not missing value then
            try
                my traverseMenu(menu 1 of menuBarItem, menuName, outputList)
            end try
        end if
    end repeat
    set output to ""
    repeat with item_ in outputList
        set output to output & item_ & linefeed
    end repeat
    return output
end tell

on traverseMenu(theMenu, parentPath, outputList)
    tell application "System Events"
        repeat with menuItem in menu items of theMenu
            set itemName to name of menuItem
            if itemName is not missing value and itemName is not "" then
                set fullPath to parentPath & " > " & itemName
                set hasSubmenu to false
                try
                    set subMenu to menu 1 of menuItem
                    set hasSubmenu to true
                end try
                if hasSubmenu then
                    my traverseMenu(subMenu, fullPath, outputList)
                else
                    set end of outputList to fullPath
                end if
            end if
        end repeat
    end tell
end traverseMenu
'''

def discover(bundle_id: str) -> list[str] | None:
    script = APPLESCRIPT.replace("{bundle_id}", bundle_id)
    result = subprocess.run(["osascript", "-e", script], capture_output=True, text=True)

    if "not allowed assistive access" in result.stderr.lower():
        print("Error: Grant Accessibility permission to Terminal in System Settings → Privacy & Security → Accessibility")
        return None
    if not result.stdout.strip():
        print(f"Error: No menus found. Is the app running?")
        return None

    return [line for line in result.stdout.strip().split("\n") if line]

def main():
    if len(sys.argv) < 2 or sys.argv[1] not in ["discover"]:
        print("Usage: python keysmith.py discover [figma|keynote|powerpoint|numbers|pages|all]")
        sys.exit(1)

    app = sys.argv[2].lower() if len(sys.argv) > 2 else "all"
    apps = TARGET_APPS if app == "all" else {app: TARGET_APPS.get(app)}

    if None in apps.values():
        print(f"Unknown app: {app}")
        sys.exit(1)

    script_dir = os.path.dirname(os.path.abspath(__file__))
    discovery_dir = os.path.join(script_dir, "discovery")
    os.makedirs(discovery_dir, exist_ok=True)

    for name, bundle_id in apps.items():
        print(f"→ {name}...", end=" ", flush=True)
        paths = discover(bundle_id)
        if paths:
            out_file = os.path.join(discovery_dir, f"{name}.json")
            with open(out_file, "w") as f:
                json.dump({"app": bundle_id, "menus": paths}, f, indent=2)
            print(f"{len(paths)} items → {out_file}")
        else:
            print("skipped")

if __name__ == "__main__":
    main()
