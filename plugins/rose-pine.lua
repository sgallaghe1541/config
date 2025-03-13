-- lua/plugins/rose-pine.lua
return { 
	"rose-pine/neovim", 
	name = "rose-pine",
	enabled = false,
	config = function()
		require("rose-pine").setup({
		        disable_background = true,
			styles = {
				italic = false,
			},
		})
		vim.cmd("colorscheme rose-pine-moon")
	end
}
