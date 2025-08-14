# Required macOS Settings for yabai

## Mission Control Settings
To prevent desktop reordering issues, configure the following in **System Preferences > Mission Control**:

1. **Uncheck** "Automatically rearrange Spaces based on most recent use"
2. **Check** "When switching to an application, switch to a Space with open windows for the application"
3. **Uncheck** "Group windows by application" (optional, for better window management)

## System Integrity Protection (SIP)
yabai requires partial SIP disable for the scripting addition to work properly:

1. Boot into Recovery Mode (hold Cmd+R during startup)
2. Open Terminal from Utilities menu
3. Run: `csrutil enable --without fs --without debug --without nvram`
4. Reboot normally
5. Install scripting addition: `sudo yabai --install-sa`

## Accessibility Permissions
Grant accessibility permissions to:
- yabai (`/opt/homebrew/bin/yabai`)
- skhd (`/opt/homebrew/bin/skhd`)
- Your terminal application

## Dock Settings
For optimal experience:
- Set Dock to auto-hide
- Disable "Show recent applications in Dock"

## Notes
- Restart yabai after making these changes: `yabai --restart-service`
- Some changes require logging out and back in to take effect