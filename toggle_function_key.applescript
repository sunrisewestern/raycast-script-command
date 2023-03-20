#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Toggle Function Key
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon ⌨️
# @raycast.packageName Raycast Scripts

open location "x-apple.systempreferences:com.apple.Keyboard-Settings.extension"

tell application "System Events" to tell process "System Settings"
	repeat until window "Keyboard" exists
	end repeat
	
	tell window "Keyboard"
		# "Keyboard Shortcuts..." Button
		click button 1 of group 2 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1
		
		repeat until sheet 1 exists
		end repeat
		
		keystroke "f"
		
		repeat until checkbox "Use F1, F2, etc. keys as standard function keys" of group 1 of scroll area 1 of group 2 of splitter group 1 of group 1 of sheet 1 exists
		end repeat
		
		click checkbox "Use F1, F2, etc. keys as standard function keys" of group 1 of scroll area 1 of group 2 of splitter group 1 of group 1 of sheet 1
		
		# "Do[Ine" Button - Close the sheet so the application can quit
		click button 1 of group 2 of splitter group 1 of group 1 of sheet 1
		
		# Attempting to check the sheet at a certain point while closing will throw an error
		# In that case, the outer repeat will try again
		repeat
			try
				repeat while sheet 1 exists
				end repeat
				exit repeat
			end try
		end repeat
		
	end tell
end tell

tell application "System Settings" to quit
