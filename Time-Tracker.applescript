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
Updated Version Copyright (c) 2014, Joshua Fishburn

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

*)-- Original Script URL: http://forums.omnigroup.com/showthread.php?t=14838property timeTrackingFile : "Time-Tracking.oo3"property timeTrackingFilePath : "/Users/jafish/Documents/OmniPresence/OmniOutliner"property ofTaskAndProjectLinkPrefix : "omnifocus:///task/"-- OmniOutliner Document Columns - set these if you have them in your documentproperty pStartColumnName : "Start Time"property pEndColumnName : "End Time"property pEstimateColumnName : "Estimated Time"property pDurationColumnName : "Time Spent"-- First, get the OmniFocus task-- FIX - OmniOutliner document should be checked first, so separate the below check into a handler for easier re-orderingtell application "OmniFocus"	tell front document		tell document window 1			set theSelectedItems to selected trees of content			if ((count of theSelectedItems) < 1) then				display alert "You must first select a single task." message "Select a single task before running this script." as warning				return			end if			if ((count of theSelectedItems) > 1) then				display alert "You must select only one task." message "Select a single task before running this script." as warning				return			end if		end tell	end tell		set theSelectedTaskNode to item 1 of theSelectedItems	set theSelectedTask to value of theSelectedTaskNode	set taskProject to (containing project of theSelectedTask)	set selecteOFTaskLink to ofTaskAndProjectLinkPrefix & id of theSelectedTask as string	set selecteOFProjectLink to ofTaskAndProjectLinkPrefix & id of taskProject as string		tell application "OmniOutliner Pro"		-- Second, look in the OmniOutliner document for a task that might already be started with this name		-- If there is a task with this name, look in its work slices for an already running work slice		-- If one is found, end it and notify the user.				--if endRunningTaskAutomatically then		-- Check all tasks for running Work Slices		set taskWasRunning to my EndAllTimeEntries()		--end if				-- Only start a new task if there wasn't already one running		if not taskWasRunning then			set currentTask to my CheckExistingTimeEntry(theSelectedTask, taskProject, selecteOFTaskLink, selecteOFProjectLink)		end if		--try		--	set timeEntry to my StartNewTimeEntry(theSelectedTask)		--on error theError		--	display dialog "Please open '" & (timeTrackingFile)		--	return theError		--end try	end tellend tell-- CheckExistingTimeEntry-- Checks for an existing active entry for the given OmniFocus task and-- 1. Ends it if it's running-- 2. Starts a new work slice if it isn't-- Returns: on CheckExistingTimeEntry(theOFTask, theOFProject, theOFTaskLink, theOFProjectLink)	-- If a work slice for the task is found, end it and notify the user		tell document named timeTrackingFile of application "OmniOutliner Pro"		-- Does a row with this name already exist?		try			-- Put this in a try block in case the task is not already there			set taskRow to first row where topic is name of theOFTask		on error theError			set taskRow to missing value		end try				if taskRow is not missing value then			-- Look for a child row with pEndColumnName cell empty			set unfinishedTasks to children of taskRow where value of cell pEndColumnName is missing value						if unfinishedTasks is not {} then				-- Finish those tasks				my EndSpecifiedTimeEntries(unfinishedTasks)								set notificationMessage to "Finished task " & name of theOFTask								--return true -- task was ended			else				-- No tasks were unfinished, so start a new one here				set theNewTimeRow to make new row at end of children of taskRow				set text of topic of theNewTimeRow to "Work Slice"				if exists cell pStartColumnName of theNewTimeRow then set value of cell pStartColumnName of theNewTimeRow to current date				set notificationMessage to "Started working on task " & name of theOFTask				--return false -- new task was started			end if					else			-- Create the project row, task row, and work slice row for this new task and start it			-- First, check to see if the project row already exists			try				-- Put this in a try block in case the task is not already there				set theProjectRow to first row where topic is name of theOFProject			on error theError				set theProjectRow to make new row			end try						set text of topic of theProjectRow to name of theOFProject			set note of theProjectRow to theOFProjectLink as string			set theNewTaskRow to make new row at end of children of theProjectRow			set note of theNewTaskRow to theOFTaskLink as string			set text of topic of theNewTaskRow to (name of theOFTask)									using terms from application "OmniFocus"				set estimatedMinutes to (estimated minutes of theOFTask)			end using terms from						if estimatedMinutes is not missing value then				if exists cell pEstimateColumnName of theNewTaskRow then set value of cell pEstimateColumnName of theNewTaskRow to ((estimatedMinutes) / 60)			end if						-- Make a sub-row for the working period			set theNewTimeRow to make new row at end of children of theNewTaskRow			set text of topic of theNewTimeRow to "Work Slice"			if exists cell pStartColumnName of theNewTimeRow then set value of cell pStartColumnName of theNewTimeRow to current date			set notificationMessage to "Started working on task " & name of theOFTask			--return false -- new task was started		end if		display notification notificationMessage	end tellend CheckExistingTimeEntryon EndAllTimeEntries()	set wasTaskRunning to false	tell document named timeTrackingFile of application "OmniOutliner Pro"		set unfinishedTasks to rows where value of cell pEndColumnName is missing value and name is "Work Slice"		if unfinishedTasks is not {} then			-- Finish those tasks			my EndSpecifiedTimeEntries(unfinishedTasks)			set wasTaskRunning to true		end if	end tell	return wasTaskRunningend EndAllTimeEntrieson EndSpecifiedTimeEntries(theEntriesToEnd)	tell document named timeTrackingFile of application "OmniOutliner Pro"		repeat with workSliceRow in theEntriesToEnd			set endTime to current date			set startTime to current date			if exists cell pStartColumnName of workSliceRow then set startTime to value of cell pStartColumnName of workSliceRow			if exists cell pEndColumnName of workSliceRow then set value of cell pEndColumnName of workSliceRow to endTime			if exists cell pDurationColumnName of workSliceRow then set value of cell pDurationColumnName of workSliceRow to (endTime - startTime) / 3600			my AddNoteToRow(workSliceRow)		end repeat	end tellend EndSpecifiedTimeEntrieson AddNoteToRow(theRow)	-- Add a note to the task	-- Prompt for a note		tell document named timeTrackingFile of application "OmniOutliner Pro"				set theTaskName to name of parent of theRow as string				tell application id "sevs"			activate			set workSliceNotePrompt to display dialog (localized string "Please type a note for this work session of " & "\"" & theTaskName & "\".") default answer (localized string "")			set workSliceNote to the text returned of workSliceNotePrompt		end tell				-- If one was entered, add it as a note to the work log task; If not, don't do anything with it				if workSliceNote is not "" then			-- Add it to the OmniOutliner task			set note of theRow to workSliceNote		end if	end tellend AddNoteToRow