local M = {}

M._opt = ""

M.setup = function(opt)
    M._opt = opt   

    local group = vim.api.nvim_create_augroup("vip_save", { clear = true })
    vim.api.nvim_create_autocmd(
        "BufWrite",
        {
            command = print(M._opt),
            group = group,
        }
    )
end

return M
