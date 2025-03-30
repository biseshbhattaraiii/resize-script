# Window Positioner Utility

A simple AppleScript utility that allows you to precisely position and resize application windows on macOS with configurable settings.

## Features

- Position windows at predefined locations (Left, Center, Right, Top, Bottom)
- Resize windows to a percentage of your screen size
- Save and load configuration settings
- Works with any macOS application (with special support for apps like VS Code)

## Code

```applescript
-- ====================================
-- Window Positioning Utility with Config Saving
-- ====================================

-- File path for saving settings
property settingsFile : (path to home folder as string) & "Library:Preferences:WindowPositioner.plist"

-- Main script
on run
	-- Check if there are saved settings
	set hasSavedSettings to my checkForSavedSettings()
	
	if hasSavedSettings then
		set useExisting to button returned of (display dialog "Saved window settings found. What would you like to do?" buttons {"Use Saved Settings", "Configure New Settings"} default button "Use Saved Settings")
		
		if useExisting is "Use Saved Settings" then
			set savedSettings to my loadSettings()
			positionAppWindow(savedSettings's targetApp, savedSettings's appProcessName, savedSettings's widthPercent, savedSettings's heightPercent, savedSettings's horizontalPos, savedSettings's verticalPos)
			return
		end if
	end if
	
	-- Get new settings from user
	set targetApp to text returned of (display dialog "Which application do you want to position?" default answer "Visual Studio Code" buttons {"Cancel", "Continue"} default button "Continue")
	
	set appProcessName to text returned of (display dialog "What is the process name? (Often same as app name, but for VS Code it's 'Code')" default answer targetApp buttons {"Cancel", "Continue"} default button "Continue")
	
	set widthPercent to text returned of (display dialog "Window width (percentage of screen):" default answer "60" buttons {"Cancel", "Continue"} default button "Continue")
	
	set heightPercent to text returned of (display dialog "Window height (percentage of screen):" default answer "90" buttons {"Cancel", "Continue"} default button "Continue")
	
	set horizontalChoice to button returned of (display dialog "How do you want to position the window horizontally?" buttons {"Left", "Center", "Right"} default button "Center")
	
	set verticalChoice to button returned of (display dialog "How do you want to position the window vertically?" buttons {"Top", "Center", "Bottom"} default button "Center")
	
	-- Ask user if they want to save these settings
	set shouldSave to button returned of (display dialog "Do you want to save these settings for future use?" buttons {"No", "Yes"} default button "Yes")
	
	if shouldSave is "Yes" then
		-- Save settings
		saveSettings(targetApp, appProcessName, widthPercent as integer, heightPercent as integer, horizontalChoice, verticalChoice)
	end if
	
	-- Position the window with user settings
	positionAppWindow(targetApp, appProcessName, widthPercent as integer, heightPercent as integer, horizontalChoice, verticalChoice)
end run

-- Check if saved settings exist
on checkForSavedSettings()
	tell application "System Events"
		return exists file settingsFile
	end tell
end checkForSavedSettings

-- Save settings to file using property list format
on saveSettings(targetApp, appProcessName, widthPercent, heightPercent, horizontalPos, verticalPos)
	-- Create a property list dictionary with all settings
	set plistDict to {|targetApp|:targetApp, |appProcessName|:appProcessName, |widthPercent|:widthPercent, |heightPercent|:heightPercent, |horizontalPos|:horizontalPos, |verticalPos|:verticalPos}
	
	tell application "System Events"
		-- Create a new property list file
		set thePlist to make new property list file with properties {name:settingsFile}
		
		-- Set the root of the property list to our dictionary
		tell property list items of thePlist
			make new property list item at end with properties {kind:record, name:"WindowSettings", value:plistDict}
		end tell
	end tell
end saveSettings

-- Load settings from property list file
on loadSettings()
	try
		tell application "System Events"
			set thePlist to property list file settingsFile
			set settingsItem to property list item "WindowSettings" of thePlist
			set settingsDict to value of settingsItem
			
			-- Create a record with the loaded settings
			return {|targetApp|:settingsDict's |targetApp|, ¬
				|appProcessName|:settingsDict's |appProcessName|, ¬
				|widthPercent|:settingsDict's |widthPercent|, ¬
				|heightPercent|:settingsDict's |heightPercent|, ¬
				|horizontalPos|:settingsDict's |horizontalPos|, ¬
				|verticalPos|:settingsDict's |verticalPos|}
		end tell
	on error
		-- Return default settings if loading fails
		return {|targetApp|:"Visual Studio Code", |appProcessName|:"Code", |widthPercent|:60, |heightPercent|:90, |horizontalPos|:"Center", |verticalPos|:"Center"}
	end try
end loadSettings

-- Main function to position the window
on positionAppWindow(targetApp, appProcessName, widthPercent, heightPercent, horizontalPos, verticalPos)
	-- Activate the target application
	tell application targetApp
		activate
		delay 2 -- Give app time to activate
	end tell
	
	-- Get screen dimensions
	try
		set {screenWidth, screenHeight} to getScreenDimensions()
	on error
		-- Fallback dimensions
		set screenWidth to 1920
		set screenHeight to 1080
	end try
	
	-- Calculate window dimensions based on percentages
	set windowWidth to (screenWidth * widthPercent) / 100
	set windowHeight to (screenHeight * heightPercent) / 100
	
	-- Calculate horizontal position
	if horizontalPos is "Left" then
		set xPosition to 0
	else if horizontalPos is "Right" then
		set xPosition to screenWidth - windowWidth
	else -- Center
		set xPosition to (screenWidth - windowWidth) / 2
	end if
	
	-- Calculate vertical position
	if verticalPos is "Top" then
		set yPosition to 0
	else if verticalPos is "Bottom" then
		set yPosition to screenHeight - windowHeight
	else -- Center
		set yPosition to (screenHeight - windowHeight) / 2
	end if
	
	-- Apply settings to window
	try
		tell application "System Events"
			tell process appProcessName
				if (count of windows) > 0 then
					tell window 1
						set position to {xPosition, yPosition}
						set size to {windowWidth, windowHeight}
					end tell
					
					-- Show success message
					display dialog "Window positioned successfully!" buttons {"OK"} default button "OK"
				else
					display dialog "No open windows found in " & targetApp & ". Open a file or folder first!" buttons {"OK"} default button "OK"
				end if
			end tell
		end tell
	on error errorMsg
		display dialog "Error positioning window: " & errorMsg buttons {"OK"} default button "OK"
	end try
end positionAppWindow

-- Helper function to get screen dimensions
on getScreenDimensions()
	tell application "Finder"
		set _bounds to bounds of window of desktop
		return {item 3 of _bounds, item 4 of _bounds}
	end tell
end getScreenDimensions
```

## Installation & Usage

1. Create a new AppleScript document in Script Editor (Applications > Utilities > Script Editor)
2. Copy and paste the code above
3. Save as an application (.app) for easier access
4. Run the script and follow the prompts to configure window settings

## How It Works

1. When run, the script checks if you have saved settings
2. You can choose to use saved settings or create new ones
3. If creating new settings, you'll specify:
   - Target application
   - Process name (usually the same as app name)
   - Window width (as percentage of screen)
   - Window height (as percentage of screen)
   - Horizontal position (Left, Center, Right)
   - Vertical position (Top, Center, Bottom)
4. The script will position the active window accordingly
5. Settings are saved to `~/Library/Preferences/WindowPositioner.plist`

## Common Process Names

Some applications have process names that differ from their application names:

- Visual Studio Code: "Code"
- Google Chrome: "Google Chrome"
- Safari: "Safari"
- Terminal: "Terminal"

## Troubleshooting

If you encounter issues:

1. Make sure the application is running before executing the script
2. For some applications, you may need to check the exact process name in Activity Monitor
3. If permissions errors occur, make sure Script Editor has necessary permissions in System Preferences > Security & Privacy > Privacy > Automation

## License

Feel free to modify and distribute this script as needed.