-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/luis/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/luis/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/luis/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/luis/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/luis/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  indentline = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/indentline",
    url = "https://github.com/yggdroot/indentline"
  },
  ["lightline-ale"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/lightline-ale",
    url = "https://github.com/maximbaz/lightline-ale"
  },
  ["lightline-onedark"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/lightline-onedark",
    url = "https://github.com/NovaDev94/lightline-onedark"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["spelunker.vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/spelunker.vim",
    url = "https://github.com/kamykn/spelunker.vim"
  },
  ["tagalong.vim"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/tagalong.vim",
    url = "https://github.com/AndrewRadev/tagalong.vim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-http"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-http",
    url = "https://github.com/nicwest/vim-http"
  },
  ["vim-lightline-coc"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-lightline-coc",
    url = "https://github.com/josa42/vim-lightline-coc"
  },
  ["vim-matchit"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-matchit",
    url = "https://github.com/adelarsq/vim-matchit"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-polyglot",
    url = "https://github.com/sheerun/vim-polyglot"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-session"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-session",
    url = "https://github.com/xolox/vim-session"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-signify",
    url = "https://github.com/mhinz/vim-signify"
  },
  ["vim-stylus"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-stylus",
    url = "https://github.com/wavded/vim-stylus"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vimux-jest-test"] = {
    loaded = true,
    path = "/home/luis/.local/share/nvim/site/pack/packer/start/vimux-jest-test",
    url = "https://github.com/tyewang/vimux-jest-test"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
