local M = {}

local lorem_ipsum_words = {
	"lorem",
	"ipsum",
	"dolor",
	"sit",
	"amet",
	"consectetur",
	"adipiscing",
	"elit",
	"sed",
	"do",
	"eiusmod",
	"tempor",
	"incididunt",
	"ut",
	"labore",
	"et",
	"dolore",
	"magna",
	"aliqua",
}

function M.generate_lorem_ipsum(word_count)
	local result = {}
	for i = 1, word_count do
		local random_index = math.random(1, #lorem_ipsum_words)
		table.insert(result, lorem_ipsum_words[random_index])
	end
	return table.concat(result, " ")
end

local source = {}

source.new = function()
	return setmetatable({}, { __index = source })
end

source.get_trigger_characters = function()
	return { "l" }
end

source.get_keyword_pattern = function()
	return [[\k\+]]
end

function source:is_available()
	return true
end

function source:get_debug_name()
	return "lorem_ipsum"
end

function source:complete(params, callback)
	local cursor_before_line = params.context.cursor_before_line
	local items = {}

	if string.match(cursor_before_line:lower(), "lorem$") or string.match(cursor_before_line:lower(), "lorem%s+$") then
		items = {
			{
				label = "lorem ipsum (10 words)",
				kind = 1,
				documentation = "Generates a lorem ipsum text with 10 words",
				insertText = M.generate_lorem_ipsum(10),
			},
			{
				label = "lorem ipsum (50 words)",
				kind = 1,
				documentation = "Generates a lorem ipsum text with 50 words",
				insertText = M.generate_lorem_ipsum(50),
			},
			{
				label = "lorem ipsum (100 words)",
				kind = 1,
				documentation = "Generates a lorem ipsum text with 100 words",
				insertText = M.generate_lorem_ipsum(100),
			},
		}
	end

	callback({ items = items, isIncomplete = true })
end

function M.setup()
	local cmp = require("cmp")
	cmp.register_source("lorem_ipsum", source.new())
end

M.setup()

return M
