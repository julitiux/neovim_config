return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		--list of servers for mason to install
		ensure_installed = {
			"ts_ls",
			"html",
			"cssls",
			"tailwindcss",
			"svelte",
			"lua_ls",
			"graphql",
			"emmet_ls",
			"prismals",
			"pyright",
			"eslint",
			"jdtls",
			"gradle_ls",
		},
	},
	dependencies = {
		{
			"williamboman/mason.nvim",
			opts = {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			},
		},

		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			dependencies = {
				"williamboman/mason.nvim",
			},
			opts = {
				ensure_installed = {
					"prettier",
					"stylua",
					"black",
					"isort",
					"pylint",
					"eslint_d",
				},
			},
		},

		"neovim/nvim-lspconfig",
	},
}
