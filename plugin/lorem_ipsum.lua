local ok, cmp = pcall(require, "cmp")
if ok then
  local source = require("lorem_ipsum.source")
  cmp.register_source("lorem_ipsum", source.new())
end

