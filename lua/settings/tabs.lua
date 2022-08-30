require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          local project_name = ''
          for dir in string.gmatch(vim.fn.getcwd(), "([^/]+)") do
            project_name = dir
          end
          return string.upper(project_name)
        end,
        highlight = "PanelHeading",
        padding = 1,
      },
    },
    always_show_bufferline = true,
    show_close_icon = false,
    show_buffer_close_icons = false,
  }
}
