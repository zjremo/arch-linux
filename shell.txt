# Shell

## File Commands for Linux Shell


| commands                           | function                                                     |
|------------------------------------|--------------------------------------------------------------|
| rm -i [filename]                   | 删除文件，加上-i之后会强制询问是否确定删除                   |
| ls -FR [dirname]                   | 递归遍历dir，-F代表展示的时候会区分dir和file，-R代表递归向下 |
| ln file ln_file                    | 创建file的硬链接文件ln_file                                  |
| ln -s file sln_file                | 创建file的软连接(符号链接)                                   |
| mkdir -p New_Dir/Sub_Dir/Under_Dir | 加入-p参数会递归创建父目录和子目录                           |
| file [filename]                    | 查看file相关信息，比如你可以知道file的类型信息               |
| cat -n [filename]                  | -n参数会显示行号，查看文件内容                               |
| cat -b [filename]                  | -b参数会只在有文本的地方显示行号，查看文件内容               |

