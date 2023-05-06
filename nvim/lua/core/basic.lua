local opt = vim.opt

-- utf8
opt.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
opt.scrolloff = 10
opt.sidescrolloff = 10
-- 使用相对行号
opt.number = true
opt.relativenumber = true
-- 高亮所在行
opt.cursorline = true
-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
-- >> << 时移动长度
opt.shiftwidth = 2
-- 空格替代tab
opt.expandtab = true
-- 搜索大小写不敏感，除非包含大写
opt.ignorecase = true
opt.smartcase = true
-- 边输入边搜索
opt.incsearch = true
-- 命令行高为2，提供足够的显示空间
opt.cmdheight = 1
-- 当文件被外部程序修改时，自动加载
opt.autoread = true
-- 允许隐藏被修改过的buffer
opt.hidden = true
-- 鼠标支持
opt.mouse = "a"
-- 禁止创建备份文件
opt.backup = false
opt.writebackup = false
opt.swapfile = false
-- smaller updatetime
opt.updatetime = 300
-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true
-- 样式
opt.termguicolors = true
opt.signcolumn = "yes"
-- 配置剪切板
opt.clipboard = "unnamedplus"
