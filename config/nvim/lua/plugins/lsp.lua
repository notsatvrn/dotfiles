local lspkind = require([[lspkind]])
local cmp = require([[cmp]])

cmp.setup{
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = {
    { name = [[nvim_lsp]] },
		{ name = [[cmp_tabnine]] },
    { name = [[buffer]] },
    { name = [[vsnip]] },
    { name = [[tags]] },
    { name = [[calc]] },
    { name = [[treesitter]] },
    { name = [[nuspell]] },
    { name = [[omni]] },
  },
  formatting = {
    format = lspkind.cmp_format{with_text = false, maxwidth = 50}
  },
  mapping = {
    ["<C-n>"] = cmp.mapping.select_next_item{ behavior = cmp.SelectBehavior.Insert },
    ["<C-p>"] = cmp.mapping.select_prev_item{ behavior = cmp.SelectBehavior.Insert },
    ["<Down>"] = cmp.mapping.select_next_item{ behavior = cmp.SelectBehavior.Select },
    ["<Up>"] = cmp.mapping.select_prev_item{ behavior = cmp.SelectBehavior.Select },
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  }
}

local tabnine = require([[cmp_tabnine.config]])
tabnine:setup({
        max_lines = 1000;
        max_num_results = 20;
        sort = true;
	run_on_every_keystroke = true;
	snippet_placeholder = [[..]];
})

local lsp = require([[lspconfig]])

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require([[cmp_nvim_lsp]]).update_capabilities(capabilities)

lsp.bashls.setup{capabilities = capabilities}

lsp.pylsp.setup{capabilities = capabilities}

lsp.nimls.setup{capabilities = capabilities}

lsp.pyright.setup{capabilities = capabilities}

lsp.jedi_language_server.setup{capabilities = capabilities}

lsp.vimls.setup{capabilities = capabilities}

lsp.texlab.setup{capabilities = capabilities}

lsp.tailwindcss.setup{capabilities = capabilities}

lsp.csharp_ls.setup{capabilities = capabilities}

lsp.diagnosticls.setup{capabilities = capabilities}

capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.cssls.setup{capabilities = capabilities}

lsp.html.setup {capabilities = capabilities}
