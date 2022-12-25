# dotfiles

## 更新

重新修改了一下nvim配置和polybar文件，增加了rofi-geenclip剪切板，很完美。

*nvim截圖*
![](https://s2.loli.net/2022/12/25/UDQJvsELPm9rwNF.png)

*polybar*
![Screenshot_2022-12-25-14-38-04_2560x1440.png](https://s2.loli.net/2022/12/25/vUnNq9fFo27lKMw.png)

**全屏截圖**
![Screenshot_2022-12-25-14-49-24_2560x1440.png](https://s2.loli.net/2022/12/25/uwEpRYjlDLKScUF.png)

---

这是我个人在使用的配置文件，基于archcraft发行版的bspwm tiing winwows manager,稍微修改了一些配置的桌面颜色，使用的文件是 **[decaycs](https://github.com/decaycs/decaycs)** ，颜色位于`bspwm\theme\current.bash`
文件中，如果需要修改或者需要不需要theme文件下，自行修改即可。

其次对于polybar增加了一些模块，显示的结果我个人也非常满意，按照archcraft大佬的设置，bspwm桌面颜色也是通用的。    

对于nvim我使用了packer插件安装方式，使用体验也很好，使用的插件有：    

- **[lualine](https://github.com/nvim-lualine/lualine.nvim)** ，nvim的底部状态栏；

- **[barbar](https://github.com/romgrk/barbar.nvim)** ，nvim的bar；

- **[nvim-tree](https://github.com/nvim-tree/nvim-tree.lu)**  ，nvim的树形文件管理器；

- **[rnvimr](https://github.com/kevinhwang91/rnvimr)** ，nvim的ranger插件，个人觉得tree有一个问题就是root文件夹不能自由切换，所以就使用了这一块软件体验也很好；

- **[telescope](https://github.com/nvim-telescope/telescope.nvim)** ，nvim的查找和切换软件，和上面几个插件一样，配合[telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) 和[telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) 两个扩张，可以很轻易的对nvim文件项目等进行管理；
![image.png](https://s2.loli.net/2022/10/26/dpYTUlyN6uDwjOI.png)

- **[alpha-nvim](https://github.com/goolord/alpha-nvim)** ，nvim的dashboard，做起来比较方便；

- 我使用的配色和桌面一样，是[decay.nvim]([GitHub - decaycs/decay.nvim: A port of decay colorscheme for neovim using lua :3](https://github.com/decaycs/decay.nvim))，搭配起来也蛮不错的； 

- **[lsp-config](https://github.com/neovim/nvim-lspconfig)** ，我使用的是[luan]([GitHub - luan/ale: Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration](https://github.com/luan/ale))的配置文件，[GitHub - luan/ale: Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration](https://github.com/luan/ale)

关于mpv的配置我个人使用的插件比较多，自己挑选自己用得到的使用就好

![Screenshot_2022-10-26-13-46-32_2560x1440.png](https://s2.loli.net/2022/10/26/tNIZTxydo8rzwBS.png)

- **[mpv-assrt](https://github.com/AssrtOSS/mpv-assrt)** ，字幕自动下载插件；

- **[autoload]([mpv/autoload.lua at master · mpv-player/mpv · GitHub](https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua))** ，自动加载工具，播放完之后自动播放下一个视频；

- **[file-bowser](https://github.com/CogentRedTester/mpv-file-browser)** ，mpv的文件浏览器，可以快速查看浏览媒体文件，非常棒的功能；

- **[gallery](https://github.com/CogentRedTester/mpv-file-browser)** ，mpv的播放列表和视频缩略图总揽；

- **[mpv_crop_srript](https://github.com/TheAMM/mpv_crop_script)** ，mpv截图增强工具；

- **[GitHub - marzzzello/mpv_thumbnail_script: A Lua script to show preview thumbnails in mpv&#39;s OSC seekbar, sans external dependencies (fork)](https://github.com/marzzzello/mpv_thumbnail_script)** ，mpv的播放条缩略图预览功能。  

最后结果：

- **firefox**
![image.png](https://s2.loli.net/2022/10/26/mBiHbEQsuUG1x8z.png)

- **mpv**
![image.png](https://s2.loli.net/2022/10/26/p4tyoTMwsfG6YP3.png)
# dotfile
