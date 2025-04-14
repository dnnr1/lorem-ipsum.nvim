local generator = require("lorem_ipsum.generator")

local source = {}

source.new = function()
  return setmetatable({}, { __index = source })
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
        insertText = generator.generate(10),
      },
      {
        label = "lorem ipsum (50 words)",
        kind = 1,
        documentation = "Generates a lorem ipsum text with 50 words",
        insertText = generator.generate(50),
      },
      {
        label = "lorem ipsum (100 words)",
        kind = 1,
        documentation = "Generates a lorem ipsum text with 100 words",
        insertText = generator.generate(100),
      },
    }
  end
  callback({ items = items, isIncomplete = true })
end

return source

