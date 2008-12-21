(*
"Play Album Next In Party Shuffle" for iTunes
written by Doug Adams
dougadams@mac.com

modified by claytron
robots@claytron.com

v1.2 october 4 2008
- modified to add multiple albums from selection [claytron]

v1.1 july 16 2006
- fixes error with a variable name

v1.0 may 19 2006
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html
*)

-- Choose to bring the party shuffle to the front after adding tracks to it.
property show_party_shuffle : true

tell application "iTunes"
	if player state is playing and special kind of current playlist is Party Shuffle then
		
		if selection is not {} then
			-- in case a lot of items are selected use a reference
			set sel to a reference to selection
			-- get a list of all the albums in the selection
			set album_list to {}
			repeat with this_track in sel
				set selected_album to get album of this_track
				-- only add to the list if the album is not present
				if selected_album is not in album_list then
					copy selected_album to the end of album_list
				end if
			end repeat
			
			repeat with chosen_album in album_list
				-- get all tracks of the Album
				set these_album_tracks to (get every track of library playlist 1 whose album is chosen_album)
				
				-- put the tracks into Party Shuffle
				-- first delete tracks if they are already in Party Shuffle...otherwise they will not be re-added
				delete (every track of current playlist whose album is chosen_album and index > (get index of current track))
				
				-- now the business
				set dbid to (get database ID of current track)
				repeat with this_track in reverse of my tracks_sorted_by_track_number(these_album_tracks)
					if (get database ID of this_track) is not dbid then my play_next_in_ps(this_track) -- don't re-add if a track is the current track
				end repeat
			end repeat
			
			if show_party_shuffle then
				set view of front browser window to playlist "Party Shuffle"
			end if
		else
			display dialog "No tracks selected, select track(s) and try again"
		end if
		
	else
		try
			-- XXX i wish this wasn't necessary - claytron
			display dialog "The Party Shuffle playlist must be playing before adding new tracks to it..." buttons {"Cancel"} default button 1 with icon 2 giving up after 15
		end try
	end if
end tell


-- sort the tracks by track number
-- routine based on Apple's "ASCII_Sort"
-- http://www.apple.com/applescript/guidebook/sbrt/pgs/sbrt.05.htm
on tracks_sorted_by_track_number(these_tracks)
	tell application "iTunes"
		set sorted_list to {}
		set index_list to {}
		set count_of_tracks to (count these_tracks)
		repeat count_of_tracks times
			set the low_item to ""
			repeat with i from 1 to count_of_tracks
				if i is not in the index_list then
					set this_track to item i of these_tracks
					set this_item to item i of these_tracks
					if the low_item is "" then
						set the low_item to this_item
						set the low_item_index to i
					else if (get this_item's track number) < (get low_item's track number) then
						set the low_item to this_item
						set the low_item_index to i
					end if
				end if
			end repeat
			set the end of sorted_list to the low_item
			set the end of the index_list to the low_item_index
		end repeat
	end tell
	return sorted_list
end tracks_sorted_by_track_number


-- based on routine written by J Nicholas Jitkoff, Blacktree.com, also
-- http://www.macosxhints.com/article.php?story=20040830035448525
on play_next_in_ps(t)
	tell application "iTunes"
		set p to some playlist whose special kind is Party Shuffle
		set i to index of current track
		tell p
			set ts to a reference to (every track whose index > i and index is less than or equal to (count tracks))
			duplicate t to p
			duplicate ts
			delete ts
		end tell
	end tell
end play_next_in_ps
