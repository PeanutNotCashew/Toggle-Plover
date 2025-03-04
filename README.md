# Toggle-Plover
Windows script for toggling Plover on-and-off.

Created to allow toggling Plover via a keyboard shortcut.
1. Download `toggle_plover.cmd`.
2. Edit the `file_path` variable to point to Plover's folder.
3. Create shortcut to file.
4. Right-click shortcut and select Properties. Go to Shortcut tab.
5. Enter desired shortcut in shortcut box. Note: Windows automatically prepends `Ctrl + Alt`
6. Set Run dropdown to `Minimized` to prevent Command Prompt from displaying.

Works when Plover is not running. Does not actually turn Plover off; instead suspends Plover.

To prevent Plover window from popping up, either tick `Start Minimized` in Plover configuration window via GUI, or add the following to Plover configuration file:
```
[Startup]
start minimized = True
```