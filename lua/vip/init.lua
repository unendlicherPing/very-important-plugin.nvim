local M = {}

M._opt = ""

M.setup = function(opt)
    M._opt = opt   

    vim.api.nvim_command([[
        augroup PrintOnSave
            autocmd!
            autocmd BufWrite * :lua print(require('vip')._opt)
        augroup END
    ]])
end

return M
