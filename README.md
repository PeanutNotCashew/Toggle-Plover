# Toggle-Plover
Windows script for toggling Plover on-and-off.

Created to allow toggling Plover via a keyboard shortcut.
1. Download `toggle_plover.cmd`.
2. Edit the `file_path` variable in the file to point to Plover's folder.
3. Create shortcut to `toggle_plover.cmd`.
4. Right-click shortcut and select Properties. Go to Shortcut tab.
5. Enter desired shortcut in shortcut box. Note: Windows automatically prepends `Ctrl + Alt`
6. Set Run dropdown to `Minimized` to prevent Command Prompt from displaying.

Works even when Plover is not running. Does not actually turn Plover off; instead suspends Plover.

To prevent Plover window from popping up when starting, either tick `Start Minimized` in Plover configuration window via GUI, or add the following to Plover configuration file:
```
[Startup]
start minimized = True
```

Note: may not work correctly if another Python script other than Plover is running. This program detects if a pythonw.exe task is running in Windows File Manager in order to verify that Plover is running. If a different pythonw.exe file is running and Plover is not on, the script will not turn Plover on.