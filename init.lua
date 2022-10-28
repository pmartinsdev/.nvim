require('martins20.base')
require('martins20.highlights')
require('martins20.maps')
require('martins20.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_linux = has "unix"

-- Run setup for macos system
if is_mac then
  require('martins20.macos')
end

-- Run setup for linux system
if is_linux then
  require('martins20.linux')
end
