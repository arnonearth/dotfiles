lua <<EOF
require('go').setup({
  goimport='goimport', -- goimport command
  gofmt = 'gofumpt', -- gofmt cmd,
  max_line_len = 120, -- max line length in goline fmt
  tag_transform = false, -- tag_transfer check gomodifytags for detail
  verbose = true, -- output loginf in messages
  log_path = vim.fn.expand("$HOME") .. "/tmp/gonvim.log",
  lsp_cfg = true, -- true: apply go.nvim non-default gopls setup
  lsp_gofumpt = false, -- true: set default gofmt in gopls format to gofumpt
  lsp_on_attach = true, -- if a on_attach function provided: attach on_attach function to gopls
                        -- true: will use go.nvim on_attach if true while false do nothing

  lsp_codelens = true,
  -- gopls_remote_auto = true, -- set to false is you do not want to pass -remote=auto to gopls(enable share)
  -- gopls_cmd = nil, -- if you need to specify gopls path and gopls_cmd
  lsp_diag_hdlr = true, -- hook lsp diagnostic handler
  dap_debug = true, -- set to true to enable dap
  dap_debug_keymap = true, -- set keymaps for debugger
  dap_debug_gui = true, -- set to true to enable dap gui
  dap_debug_vt = true, -- set to true to enable dap virtual text

  test_runner = 'richgo', -- richgo, go test, dlv, ginkgo
  verbose_tests = true, -- set to add verbose flag to verbose_tests
  run_in_floaterm = true -- set to true to run in float window.
})
EOF
