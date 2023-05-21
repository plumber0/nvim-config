-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- 
--
--
--
--
--
--[[The line vim.cmd [[packadd packer.nvim\]\] is an example of using Neovim's Lua API to execute a Vim command. 
--The vim.cmd function is provided by Neovim's Lua API and allows you to run Vim commands from within Lua. 
--The line return require('packer').startup(function(use) ... end) is pure Lua 
--and is using Packer's Lua API to configure plugins.]]
--
vim.cmd [[packadd packer.nvim]]


--[[
In the context of this Lua script, 
return is being used to make the value of the require('packer').startup(function(use) ... end) 
expression available to any Lua code that requires this module.

In Lua, return is used to specify the result of a function. 
However, Lua also allows return to be used in a chunk (a file or a string of Lua code), 
where it signifies the result of that chunk.

For example, if you have a Lua file foo.lua with the contents return 42, 
you can load that file with require in another Lua script and get the value 42:]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
end)