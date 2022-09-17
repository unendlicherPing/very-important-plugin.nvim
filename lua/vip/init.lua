local M = {}

M._opt = ""

M.setup = function(opt)
    M._opt = opt

    local cmd = "echo '"..M._opt.."'"
    print(opt)

    local group = vim.api.nvim_create_augroup("vip_save", { clear = true })
    vim.api.nvim_create_autocmd(
        "BufWrite",
        {
            command = cmd,
            group = group,
        }
    )
end

return M
