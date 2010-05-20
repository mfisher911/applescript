tell application "System Preferences"
	activate
	set current pane to pane id "com.apple.preference.keyboard"
end tell

tell application "System Events"
	tell application process "System Preferences"
		get properties
                -- click the "Modifier Keys..." button (ellipsis is Opt-;)
		click button "Modifier Keys…" of tab group 1 of window "Keyboard"
		-- top menu with choice between Apple Internal Keyboard / Trackpad and Keyboard
		click pop up button 5 of sheet 1 of window "Keyboard"
		-- choose the Keyboard option
		click menu item 2 of menu 1 of pop up button 5 of sheet 1 of window "Keyboard"
		-- defaults are right; they just need to be re-sourced
		click button "OK" of sheet 1 of window "Keyboard"
	end tell
end tell

tell application "System Preferences" to quit
