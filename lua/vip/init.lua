local M = {}


M.setup = function(opt)
    local group = vim.api.nvim_create_augroup("vip_save", { clear = true })
    vim.api.nvim_create_autocmd(
        "BufWritePost",
        {
            callback = function()
                print(opt)
            end,
            group = group,
        }
    )
end

return M
