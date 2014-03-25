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

*)tell application "OmniFocus"	tell front document		tell document window 1			set theSelectedItems to selected trees of content			if ((count of theSelectedItems) < 1) then				display alert "You must first select a single task." message "Select a single task before running this script." as warning				return			end if			if ((count of theSelectedItems) > 1) then				display alert "You must select only one task." message "Select a single task before running this script." as warning				return			end if		end tell	end tell		set theDoc to document window 1 of document 1		set theSelectedTask to value of item 1 of theSelectedItems	set taskProject to (containing project of theSelectedTask)	set timeEntry to 0	tell front document of application "OmniOutliner Pro"		set timeEntry to make new row		set text of topic of timeEntry to (name of theSelectedTask)		repeat with theCell in cells of timeEntry			if name of theCell is "Project" then				set text of theCell to (name of taskProject)			end if			if name of theCell is "Date" then				set text of theCell to ((current date) as string)			end if			if name of theCell is "Start Time" then				set text of theCell to (time string of (current date))			end if		end repeat	end tellend telldisplay dialog "Finished working on '" & (name of theSelectedTask) & "'?"tell front document of application "OmniOutliner Pro"	repeat with theCell in cells of timeEntry		if name of theCell is "End Time" then			set text of theCell to (time string of (current date))		end if	end repeat	activateend tell