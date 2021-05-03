# 北京林业大学本科生毕业论文Latex模板

根据《北京林业大学论文撰写规范及模板》编写。

## 简介

本工作力求用LaTeX实现[《北京林业大学论文撰写规范及模板》](bjfu_request.md)一文中提出的论文格式要求。为了实现最好的效果，我们推荐使用跨平台而且对中文支持良好的Tex Live系列编译器。

## Quick Start

```bash
cd template
# 渲染
./make.sh
# 清理
./clean.sh
# 字数统计
texcount *.tex 
```

## 使用教程

`bjfu_template.tex`和`bjfu_template.pdf`中包含了各种可能用到的写法示例，配置好TextLive环境后，即可使用。

`.vscode/latex.code-snippets`文件夹中包含了VsCode可读取的Code Snippets片段，可以使用快捷命令，快速生成例如图片/表格/列表等结构。

## FAQ

## 作者列表与鸣谢

1. 马起园先生作为ApTex的作者在2015年本模板的早期编写阶段给出了宝贵建议， 给予了极大的帮助。

2. 王政先生维护了2015-2018年的LaTeX模板，其工作是本Repo的基础。

## License

[The MIT License (MIT)](http://opensource.org/licenses/MIT)

Copyrighted fonts are not subjected to this License.
