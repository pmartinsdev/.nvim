function executeCommandIntoCurrentBufferPath()
  local directoryPath, _ = vim.fn.expand('%:p'):gsub('%' .. vim.fn.expand('%:t'), '')
  local command = vim.fn.input("Insert the command to execute on this buffer path: ", "")
  local commandToExecute = '!cd ' .. directoryPath .. ' && ' .. command

  vim.cmd(commandToExecute)
end
