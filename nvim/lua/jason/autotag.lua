local status_ok, configs = pcall(require, "nvim-ts-autotag")
if not status_ok then
	return
end

configs.setup({})
