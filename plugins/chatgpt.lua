return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function(_, _opts)
    require("chatgpt").setup {
      api_key_cmd = "op read op://Private/OpenAI_API_Key/password --no-newline",
      openai_params = {
        model = "gpt-3.5-turbo",
        --model = "gpt-4-1106-preview",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 800,
        temperature = 0,
        top_p = 1,
        n = 1,
      },
      openai_edit_params = {
        model = "gpt-3.5-turbo",
        -- model = "gpt-4-1106-preview",
        temperature = 0,
        top_p = 1,
        n = 1,
      },
    }
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    { "<leader>xc", ":ChatGPT<CR>", desc = "ChatGPT", mode = { "n" } },
    { "<leader>xe", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction", mode = { "n", "v" } },
    { "<leader>xg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction", mode = { "n", "v" } },
    { "<leader>xt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
    { "<leader>xk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords", mode = { "n", "v" } },
    { "<leader>xd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring", mode = { "n", "v" } },
    { "<leader>xa", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests", mode = { "n", "v" } },
    { "<leader>xo", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code", mode = { "n", "v" } },
    { "<leader>xs", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
    { "<leader>xf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs", mode = { "n", "v" } },
    { "<leader>xx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code", mode = { "n", "v" } },
    { "<leader>xr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit", mode = { "n", "v" } },
    {
      "<leader>xl",
      "<cmd>ChatGPTRun code_readability_analysis<CR>",
      desc = "Code Readability Analysis",
      mode = { "n", "v" },
    },
  },
}
