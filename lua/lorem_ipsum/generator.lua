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

function M.generate(word_count)
  local result = {}
  for _ = 1, word_count do
    local random_index = math.random(1, #lorem_ipsum_words)
    table.insert(result, lorem_ipsum_words[random_index])
  end
  return table.concat(result, " ")
end

return M

