(*
	A script that allows time tracking of OmniFocus tasks in OmniOutliner. It is
	suggested that your OmniOutliner document contains columns for the
	Start Time, End Time, Date, and Project. To place a button for this
	script on your OmniFocus toolbar, place the script in
	~/Library/Scripts/Applications/OmniFocus, and it will show up
	in the Customize Toolbar pane.

	December 22, 2009

	Andrew Berry, andrewberry@sentex.net

The MIT License

Copyright (c) 2009, Andrew Berry

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*)-- Initial Script found here: http://forums.omnigroup.com/showthread.php?t=14838property timeTrackingFile : "Time-Tracking.oo3"property timeTrackingFilePath : "/Users/jafish/Documents/OmniPresence/OmniOutliner"property taskLink : "omnifocus:///task/"tell application "OmniFocus"	tell front document		tell document window 1			set theSelectedItems to selected trees of content			if ((count of theSelectedItems) < 1) then				display alert "You must first select a single task." message "Select a single task before running this script." as warning				return			end if			if ((count of theSelectedItems) > 1) then				display alert "You must select only one task." message "Select a single task before running this script." as warning				return			end if		end tell	end tell		set theSelectedTaskNode to item 1 of theSelectedItems	set theSelectedTask to value of theSelectedTaskNode	set taskProject to (containing project of theSelectedTask)	set taskLink to taskLink & id of theSelectedTask as string		tell application "OmniOutliner Pro"		--try		--	open timeTrackingFilePath & "/" & timeTrackingFile		--end try				--activate		--open timeTrackingFilePath & "/" & timeTrackingFile				try			set timeEntry to my StartNewTimeEntry(theSelectedTask)		on error theError			display dialog "Please open '" & (timeTrackingFile)			return theError		end try			end tellend telltell application "OmniFocus"	display dialog "Finished working on '" & (name of theSelectedTask) & "'?"end telltell application "OmniOutliner Pro"		tell document named timeTrackingFile		set startTime to current date		set endTime to current date		set taskDuration to 0				-- First, get the startTime		repeat with theCell in cells of timeEntry			if name of theCell is "Start Time" then				set startTime to value of theCell			end if		end repeat				repeat with theCell in cells of timeEntry			if name of theCell is "End Time" then				set value of theCell to endTime			end if		end repeat				repeat with theCell in cells of timeEntry			if name of theCell is "Time Worked" then				set taskDuration to (endTime - startTime) / 3600				set value of theCell to taskDuration			end if		end repeat				-- Add a note to the task		-- Prompt for a note		tell application id "sevs"			activate			set workSliceNotePrompt to display dialog (localized string "Please type a note for this work session.") default answer (localized string "")			set workSliceNote to the text returned of workSliceNotePrompt		end tell				-- If one was entered, add it as a note to the work log task; If not, don't do anything with it		if workSliceNote is not "" then			-- Add it to the OmniOutliner task			set note of timeEntry to workSliceNote		end if			end tell		--activateend tellon StartNewTimeEntry(theOFTask)	set rowExists to false	using terms from application "OmniFocus"		set taskProject to (containing project of theOFTask)	end using terms from		tell document named timeTrackingFile of application "OmniOutliner Pro"		-- Does a row with this name already exist?		set allRows to every row		repeat with theRow in allRows			if name of theRow is name of theOFTask then				set theNewTimeRow to make new row at end of children of theRow				set rowExists to true			end if		end repeat				if rowExists is false then			-- Make a row for the task			set theNewTaskRow to make new row			set note of theNewTaskRow to taskLink as string			set text of topic of theNewTaskRow to (name of theOFTask)			repeat with theCell in cells of theNewTaskRow				if name of theCell is "Project" then					set text of theCell to (name of taskProject)				end if			end repeat			-- Make a sub-row for the working period			set theNewTimeRow to make new row at end of children of theNewTaskRow		end if				-- Set the name of the row to the starting time as a string		set text of topic of theNewTimeRow to "Work Slice"				repeat with theCell in cells of theNewTimeRow			if name of theCell is "Start Time" then				set value of theCell to current date			end if			if name of theCell is "Date" then				set value of theCell to current date			end if		end repeat	end tell		return theNewTimeRowend StartNewTimeEntry