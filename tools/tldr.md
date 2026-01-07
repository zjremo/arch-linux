# tldr

tldr可以快捷地查看Linux各种终端命令的使用用法

## 安装命令

```bash
yay -S tlrc
```

## 使用样例

```bash
~ via  v25.2.1
$ tldr zip

  zip

  将文件打包并压缩（存档）为 zip 文件。
  另请参阅：unzip。
  更多信息：https://manned.org/zip。

  将文件/目录添加到指定存档中：

    zip --recurse-paths 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ...

  从指定存档中删除文件/目录：

    zip --delete 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ...

  存档文件/目录，排除指定的文件/目录：

    zip --recurse-paths 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ... --exclude 路径/到/排除的文件或目录

  以指定的压缩级别存档文件/目录（0 - 最低，9 - 最高）：

    zip --recurse-paths -0..9 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ...

  创建一个加密的存档：

    zip --recurse-paths --encrypt 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ...

  将文件/目录存档为多段分割的 zip 存档（例如每部分 3 GB）：

    zip --recurse-paths --split-size 3g 路径/到/压缩文件.zip 路径/到/文件或目录1 路径/到/文件或目录2 ...

  打印指定存档的内容：

    zip --split-size --freshen 路径/到/压缩文件.zip

~ via  v25.2.1
$ tldr dig

  dig

  DNS lookup utility.
  More information: https://manned.org/dig.

  Lookup the IP(s) associated with a hostname (A records):

    dig +short example.com

  Get a detailed answer for a given domain (A records):

    dig +noall +answer example.com

  Query a specific DNS record type associated with a given domain name:

    dig +short example.com A|MX|TXT|CNAME|NS

  Specify an alternate DNS server to query and optionally use DNS over TLS (DoT):

    dig +tls @1.1.1.1|8.8.8.8|9.9.9.9|... example.com

  Perform a reverse DNS lookup on an IP address (PTR record):

    dig -x 8.8.8.8

  Find authoritative name servers for the zone and display SOA records:

    dig +nssearch example.com

  Perform iterative queries and display the entire trace path to resolve a domain name:

    dig +trace example.com

  Query a DNS server over a non-standard [p]ort using the TCP protocol:

    dig +tcp -p port @dns_server_ip example.com
```
