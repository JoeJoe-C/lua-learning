-- A note manager manages the notes
require('note.lua')
NotesManager = {
	notes = {},
	counter = 1,
}

-- desired methods for NotesManager

function NotesManager:addNote(note)
	table.insert(self.notes, Note:new({
		title = "",
		description = ""
	}))
end

function NotesManager:removeNote(note)
	-- removes first instant of a note if found
	local i = self.getNote(note);
	if i ~= -1 then
		table.remove(self.notes, i);
	end
end

local private
function NotesManager:getNote(note)
	-- searches for a note that has a matching title and descriptiona and returns an index
	local found = -1;
	for k, v in ipairs(self.notes) do
		if v.description == note.description and v.title == note.title then
			found = k;
			break;
		end
	end
	return found;
end

function NotesManager:getAllNotes()
	return self.notes;
end

-- constructor for NotesManager
function NotesManager:new(t)
	t = t or {};
	setmetatable(t, self);
	self.__index = self;
	return t;
end
