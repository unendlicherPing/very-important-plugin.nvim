local M = {}

M._opt = ""

M.setup = function(opt)
    M._opt = opt   

    local group = vim.api.nvim_create_augroup("vip_save")
    vim.api.nvim_create_autocmd(
        "BufWrite",
        {
            command = print(M._opt),
        }
    )

    vim.api.nvim_command([[
        augroup PrintOnSave
            autocmd!
            autocmd BufWrite * lua print(require('vip')._opt)
        augroup END
    ]])
end

return M
