-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
	"cssls",
	"pyright",
	"tailwindcss",
	"intelephense",
	"tsserver",
	"gopls",
}

local vue_typescript_plugin = "/Users/livghit/.nvm/versions/node/v18.16.0"
	.. "/lib/node_modules"
	.. "/@vue/language-server/node_modules"
	.. "@vue/typescript-plugin"

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	}
end


lspconfig.html.setup{
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes= {
    "html",
    "blade"
  }
}

-- typescript
lspconfig.tsserver.setup {
	on_attach = on_attach,
	on_init = on_init,
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"typescript",
		"vue",
	},
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vue_typescript_plugin,
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
}

-- php lsp
lspconfig.intelephense.setup {
	cmd = { "intelephense", "--stdio" },
	filetypes = { "php" },
	root_pattern = { "composer.json", ".git" },
}
-- Elixir lsp
lspconfig.elixirls.setup {
	cmd = { "/Users/livghit/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" },
}

lspconfig.solargraph.setup{
  filetypes = {"ruby"},
  root_pattern = {"Gemfile", ".git", "Rakefile", ".solargraph.yml"}
}
