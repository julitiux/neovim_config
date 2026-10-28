return {
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePost", {
      patter = {"*.js", "*.ts"},
      callback = function(ctx)
        -- Here use ctx.match instead of ctx.file 
        client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
      end,
    })
  end,
}
