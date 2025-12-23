# Shell

## Commands for Linux Shell


| commands                            | function                                                               |
|-------------------------------------|------------------------------------------------------------------------|
| rm -i [filename]                    | 删除文件，加上-i之后会强制询问是否确定删除                             |
| ls -FR [dirname]                    | 递归遍历dir，-F代表展示的时候会区分dir和file，-R代表递归向下           |
| ln file ln_file                     | 创建file的硬链接文件ln_file                                            |
| ln -s file sln_file                 | 创建file的软连接(符号链接)                                             |
| mkdir -p New_Dir/Sub_Dir/Under_Dir  | 加入-p参数会递归创建父目录和子目录                                     |
| file [filename]                     | 查看file相关信息，比如你可以知道file的类型信息                         |
| cat -n [filename]                   | -n参数会显示行号，查看文件内容                                         |
| cat -b [filename]                   | -b参数会只在有文本的地方显示行号，查看文件内容                         |
| ps -f                               | 监控进程                                                               |
| ps --forest                         | 以连接树状图的方式展示进程关系                                         |
| kill [PID]                          | 发送终止进程信号                                                       |
| kill -s HUP [PID]                   | 强制终止进程                                                           |
| df -h                               | 展示设备使用磁盘情况                                                   |
| du                                  | 一个强大的命令，可以监控当前目录下所有文件、目录和子目录的磁盘使用情况 |
| which [command]                     | 找寻命令的来源                                                         |
| type -a [command]                   | 与which功能类似                                                        |
| history                             | 查询最近使用过的命令列表，与cat ~/.bash_history的功能类似              |
| alias                               | 展示所有使用别名的命令                                                 |
| alias [command_alias]="old command" | 将old command 用command_alias进行代替                                  |
| unalias command_alias             | 去除这个别名                                                                       |
| printenv                            | 显示全局变量                                                           |
| my_variable = "I am global now"     | 创建局部变量                                                           |


shell脚本编写过程中，第一行可以写上指定用什么bash：
``sh
#!/usr/bin/env zsh
``
或者
``sh
#/!usr/bin/zsh
``
其中第一个表示直接从系统path里面找，更具实用性；第二个直接写死使用zsh

输出重定向：
who > 1.txt	将命令who的输出内容输出到1.txt中，会覆写文本里面的内容
who >> 1.txt 将命令who的输出内容追加到1.txt中

输入重定向:
wc < 1.txt 其中<符号用于文件输入
wc << EOF
test String 1
test String 2
test String 3
EOF

<<内联输入重定向符号，可以无需使用文件进行重定向，只需在命令行中指定用于输入重定向的数据就可以了

STDIN 标准输入 0
STDOUT 标准输出 1
STDERR 标准错误 2
