CORE_ENABLED = true
LAZY_ENABLED = true


local function setupCore()
    require("config.options")
    require("config.keymaps")
end

local function loadPlugins()
    local options = {}
    local plugins = {
        "folke/tokyonight.nvim",
        "williamboman/mason.nvim",
    }
    require("lazy").setup(plugins, options)
end

local function setupPlugins()
    require("plugins.tokyonight")
    require("plugins.mason")
end

local function checkLazy()
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not (vim.uv or vim.loop).fs_stat(lazypath) then
        vim.fn.system({
            "git",
            "clone",
            "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable",
            lazypath,
        })
    end
    vim.opt.rtp:prepend(lazypath)
end

local function main()
    if CORE_ENABLED then
        setupCore()
    end
    if LAZY_ENABLED then
        checkLazy()
        loadPlugins()
        setupPlugins()
    end
end

main()
