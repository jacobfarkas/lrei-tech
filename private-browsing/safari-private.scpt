# Safari (Mac) - Start in Private Browsing Mode
# Apple Script Editor script
tell application "Safari"
    activate
end tell
tell application "System Events"
    tell process "Safari"
        tell menu bar 1
            tell menu bar item "Safari"
                tell menu "Safari"
                    click menu item "Private Browsing"
                end tell
            end tell
        end tell
    end tell
end tell
