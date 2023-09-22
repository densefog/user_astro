-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>n"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    ["<leader>m"] = {
      function()
        if vim.bo.filetype == "neo-tree" then
          vim.cmd.wincmd "p"
        else
          vim.cmd.Neotree "focus"
        end
      end,
      desc = "Toggle Explorer Focus",
    },
    ["<F1>"] = { "<ESC>" },
    ["<F2>"] = { "<cmd>SessionManager! save_current_session<cr>", desc = "Save this session" },
    ["<F3>"] = { "<cmd>SessionManager! load_last_session<cr>", desc = "Load last session" },
    ["<c-w>["] = { ":wincmd _<cr><bar>:wincmd |<cr>" },
    ["<c-w>]"] = { ":wincmd =<cr>" },
    ["<left>"] = { "<c-w><" },
    ["<right>"] = { "<c-w>>" },
    ["<up>"] = { "<c-w>+" },
    ["<down>"] = { "<c-w>-" },
    ["<CR>"] = { ":noh<CR><CR>" },
    ["<leader>d"] = { ":Dash<CR>" },
    ["<leader>fw"] = { ":Ag<CR>" },
    ["<c-p>"] = { require("telescope.builtin").find_files, desc = "Find Files" },
    ["<leader>ht"] = { require("telescope.builtin").help_tags, desc = "Help Tags" },
    ["<leader>e"] = {
      function() require("telescope.builtin").buffers { sort_lastused = true } end,
      desc = "Last Buffers",
    },
    -- testing
    ["<leader>s"] = { ":TestNearest<CR>", desc = "Test Nearest" },
    ["<leader>t"] = { ":TestFile<CR>", desc = "Test File" },
    ["<leader>a"] = { ":TestSuite<CR>", desc = "Test Suite" },
    ["<leader>l"] = { ":TestLast<CR>", desc = "Test Last" },
    ["<leader>v"] = { ":TestVisit<CR>", desc = "Test Visit" },
    ["<leader>h"] = { ":SlimuxShellRun mtf<CR>", desc = "Mix test failed" },
    ["<leader>c"] = { ":SlimuxShellRun mc<CR>", desc = "Mix compile" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- disable keys I keep fat fingering
    ["<S-F1>"] = { "<Nop>" },
    ["<S-F2>"] = { "<Nop>" },
    ["<S-F3>"] = { "<Nop>" },
    ["<S-F4>"] = { "<Nop>" },
    ["<S-F5>"] = { "<Nop>" },
    ["<S-F6>"] = { "<Nop>" },
    ["<S-F7>"] = { "<Nop>" },
    ["<S-F8>"] = { "<Nop>" },
    ["<S-F9>"] = { "<Nop>" },
    ["<S-F10>"] = { "<Nop>" },
    ["<S-F11>"] = { "<Nop>" },
    ["<S-F12>"] = { "<Nop>" },
    ["jj"] = { "<ESC>" },
    ["jk"] = { "<ESC>" },
    ["<F1>"] = { "<ESC>" },
    ["<C-l>"] = { function() require("luasnip").expand() end, desc = "Expand snippet" },
  },
}
