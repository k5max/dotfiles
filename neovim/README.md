# 使用说明

## 前置条件

neovim 使用的插件管理器 packer，需要先安装。这里以 Unix, Linux 安装为例，具体其他系统安装或者使用手册见repository  

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

repository地址：https://github.com/wbthomason/packer.nvim 


## 使用步骤

- 将 nvim 整个文件夹复制到~/.config目录下
- 进入 neovim 界面执行`:PackerSync`命令安装好所需插件
- 完成以上步骤后即可自由玩耍


## 目录结构
~/.config/nvim


## 自定义配置

根据目录见名知义
着重提一下 keybindings、 nvim-treesitter 和 lsp 配置

### keybindings

键盘映射使用好了大大提供效率，配置主要分为两大块

第一部分是为 vim 的操作提供的快捷键映射
 
第二部分是为一些插件提供的快捷键映射


### nvim-treesitter

nvim-treesitter 做代码高亮，需要支持哪种语言就需要安装对应的 Language parser

查看已安装的 Language parser

```
:TSInstallInfo

```

手动安装 Language parser 

```
:TSInstall <language_to_install>
```

安装后调用 :TSBufToggle highlight 可显示高亮。

但在本配置中其实不必手动安装，可以在 nvim-treesitter.lua 配置文件中指定，自动安装

```lua
require'nvim-treesitter.configs'.setup {
    ...
    ensure_installed = ['此处指明需要安装的语言']
    ...
}

```

### lsp

