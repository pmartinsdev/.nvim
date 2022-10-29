local status, nvim_comment = pcall(require, "nvim_comment")

if (not status) then return end

nvim_comment.setup({
  comment_empty = false,
  comment_empty_trim_whitespace = false,
  line_mapping = ";c",
  operator_mapping = ";;c"
})
