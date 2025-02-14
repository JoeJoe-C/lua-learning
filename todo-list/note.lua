-- Defining the notes object attributes
Note = {
	id = "",
	title = "",
	description = "",
}

-- Defining the class methods
function Note:setTitle(s)
	self.title = s;
end

function Note:getTitle(s)
	return self.title;
end

function Note:setDescription(s)
	self.description = s;
end

function Note:getDescription(s)
	return self.description;
end

function Note:setId(s)
	self.id = s;
end

function Note:getId(s)
	self.id = s;
end

-- Define the constructor
function Note:new(t)
	t = t or {}
	setmetatable(t, self)
	self.__index = self
	return t
end
