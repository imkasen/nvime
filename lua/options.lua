-- 基础配置
local options = {
    autochdir = true,                               -- 自定切换当前目录为当前文件所在的目录
    autoread = true,                                -- 当前文件被外部程序修改时自动加载
    autowrite = true,                               -- 自动写回
    clipboard = "unnamedplus",                      -- 与系统共用剪切板
    cmdheight = 2,                                  -- 设定命令行行数
    colorcolumn = "120",                             -- 右侧参考线
    completeopt = "menu,menuone,noselect,noinsert", -- 自动补全不自动选中
    conceallevel = 0,                               -- so that `` is visible in markdown files
    confirm = true,                                 -- 在处理未保存或只读文件时，弹出确认提示
    cursorline = true,                              -- 突出显示光标当前行
    cursorcolumn = false,                           -- 突出显示光标当前列
    errorbells = false,                             -- 有错误信息时不响铃
    fileformats = "unix,dos,mac",                   -- 文件换行符，默认使用 unix 换行符
    hidden = true,                                  -- 允许隐藏被修改过的 buffer
    history = 50,                                   -- 历史记录条数
    laststatus = 2,                                 -- 总是显示状态栏
    lazyredraw = true,                              -- 延迟绘制，提升性能
    -- list = true,
    -- listchars = "space:·,tab:-->",                  -- 不可见字符的显示，这里只把空格显示为一个点
    mouse = "n",                                    -- 允许使用鼠标
    pumheight = 10,                                 -- 补全最多显示 10 行
    ruler = true,                                   -- 显示光标的位置
    showcmd = true,                                 -- 在屏幕最后一行显示命令
    showmatch = true,                               -- 显示括号匹配
    showmode = true,                                -- 显示模式提示
    showtabline = 2,                                -- 永远显示 tabline
    signcolumn = "yes",                             -- 显示左侧图标指示列
    textwidth = 120,                                -- 设置行宽
    termguicolors = true,                           -- 开启真彩色
    undofile = false,                               -- 保持撤销历史
    wildmenu = true,                                -- 补全增强，Vim 自身命令行模式智能补全

    -- 窗口
    splitbelow = true,                              -- 强制所有的横向拆分到当前窗口以下
    splitright = true,                              -- 强制所有的垂直分割到当前窗口的右边

    -- 时间延迟
    timeoutlen = 500,                               -- 等待键盘快捷键连击时间 (ms)
    updatetime = 500,                               -- 更快的写入 (默认为 4000ms)

    -- 文件备份
    backup = false,                                 -- 不创建备份文件
    swapfile = false,                               -- 不创建临时交换文件
    writebackup = false,                            -- 编辑时不创建备份文件

    -- 搜索
    hlsearch = true,                                -- 高亮显示搜索结果
    incsearch = true,                               -- 增量搜索
    ignorecase = true,                              -- 搜索时忽略大小写
    smartcase = true,                               -- 智能搜索

    -- 缩进
    autoindent = true,                              -- 新增行与前一行具有相同缩进形式
    expandtab = true,                               -- tab 转换为空格
    shiftwidth = 4,                                 -- 自动缩进长度为 4
    shiftround = true,                              -- 缩进列数对齐到 shiftwidth 的整数倍
    softtabstop = 4,                                -- 使得按退格键时可以一次删掉 4 个空格
    smarttab = true,
    smartindent = true,                             -- 类似 cindent
    tabstop = 4,                                    -- 一个 tab 等于四个空格

    -- 行号
    number = true,
    numberwidth = 4,                                -- 数字宽度 {默认为 4 列}
    relativenumber = false,

    -- jkhl 移动时光标周围保留 8 行
    scrolloff = 8,
    sidescrolloff = 8,
    linebreak = true,                               -- 在合适的地方折行
    wrap = false,                                   -- 禁止折行

    -- 编码
    encoding = "utf-8",
    fileencoding = "utf-8",
    fileencodings = "ucs-bom,utf-8,gb18030,cp936,latin1",
    termencoding = "utf-8",

    -- 代码折叠
    foldenable = false,                             -- 启动 Vim 时关闭折叠代码
    foldmethod = "syntax",                          -- 基于语法进行代码折叠
}

for k, v in pairs(options) do
    vim.opt[k] = v
end        


vim.cmd "set shortmess+=c"                          -- Dont' pass messages to |ins-completin menu|
vim.cmd "set whichwrap+=<,>,[,],h,l"                -- 光标在行首尾时 <Left><Right> 可以跳到下一行
vim.cmd [[syntax on]]                               -- 语法高亮
vim.cmd [[filetype plugin indent on]]               -- 打开文件类型检测，打开加载文件类型插件，为不同类型文件定义不同缩进格式
