\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjfu}[2018/02/14 A template for bjfu bachelor thesis]
\LoadClass[UTF8]{ctexart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%协议：MIT协议（http://opensource.org/licenses/MIT）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%对于包的使用
%参考文献

%行距控制
\RequirePackage{setspace}
%超链接
\RequirePackage[colorlinks,linkcolor=black,citecolor=black]{hyperref}
%板式
\RequirePackage{geometry}
%图片
\RequirePackage{graphicx}
%图表标题
\RequirePackage{bicaption}
%子图
% \RequirePackage{subcaption}
%页眉页脚控制
\RequirePackage{fancyhdr}
%非汉字字体设置
\RequirePackage{fontspec}
%控制参考文献格式
% \RequirePackage[square,super, comma, sort&compress, numbers]{natbib}
%计数器控制
\RequirePackage{amsmath}
%表格控制
\RequirePackage{multirow} 
\RequirePackage{array}
% use xifthen
\RequirePackage{xifthen}
%插入代码
% \RequirePackage{listings}
\RequirePackage{minted}
%设置列表格式
\RequirePackage{enumitem}

\RequirePackage{threeparttable}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[sort&compress]{gbt7714}
%论文一律编排并打印在A4幅面白纸上
%上边距为25mm，下边距为25mm，左边距为30mm，右边距为20mm
\geometry{a4paper,left=30mm,right=20mm,top=25mm,bottom=25mm}

%论文行间距为1.5倍（可能需要用\selectfont）
\linespread{1.8}

%页眉页脚开启
\pagestyle{fancy}
%页眉字号字体为小五号宋体，内容为“北京林业大学本科毕业论文(设计)”
\chead{\zihao{-5}\CJKfamily{zhsong}北京林业大学本科毕业论文(设计) } 
%页眉只有中间有内容，左右为空白
\lhead{} 
\rhead{}

%页眉下边的横线宽度：事实上论文规范并没有对此做出规定，但是我们选择遵循常理去除横线。
\renewcommand{\headrulewidth}{0pt}

%论文页码的字号字体为小五号Times New Roman体
%从绪论部分开始，至附录，用阿拉伯数字连续编排
%页码位于页面底端居中
\renewcommand{\footnotesize}{\zihao{-5}}  

%用于表格注释 六号宋体
\renewcommand{\tiny}{\zihao{-6}}  

%论文中出现的所有数字和字母如无特殊要求都用Times New Roman体。
%设置正文非汉字的字体为Times New Roman
\setmainfont{Times New Roman}

%设置英文图为Fig，表格为Tab
\DeclareCaptionOption{english}[]{
\renewcommand\figurename{Fig.}
\renewcommand\tablename{Tab}}
\captionsetup[bi-second]{english}

%一定要在这里声明space，直接声明不好使，小五号
\captionsetup{font={footnotesize,bf},labelsep=space}

%设置图片编号随着章节自动清零
\numberwithin{figure}{section}
%设置表格编号随着章节自动清零
\numberwithin{table}{section}
%设置公式编号随着章节自动清零
\numberwithin{equation}{section}

%定义图的编号为章节号码.序号
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
%定义表的编号为章节号码.序号
\renewcommand{\thetable}{\thesection.\arabic{table}}
%定义公式的编号为章节号码.序号
\renewcommand{\theequation}{\thesection.\arabic{equation}}
%定义条的编号为序号
% \renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\CTEXoptions[contentsname={\zihao{3} \CJKfamily{zhhei} \centering 目录}]

\CTEXoptions[bibname={\zihao{4} \centering 参考文献 \vspace{14pt}}]

%改变figure为图
\renewcommand{\figureautorefname}{图}

%改变equation为式
\renewcommand{\equationautorefname}{式}
\renewcommand{\sectionautorefname}{章}
\renewcommand{\subsectionautorefname}{节}
\renewcommand{\subsubsectionautorefname}{条}

%章标题：四号宋体加粗
%section另起一页，宋体四号加粗居中
\CTEXsetup[beforeskip=7pt,afterskip=7pt,format={\newpage\centering\zihao{4}\CJKfamily{zhsong}\bfseries}]{section}


%节标题：小四号宋体加粗
%subsection宋体小四号加粗
\CTEXsetup[beforeskip=6pt,afterskip=6pt,format={\zihao{-4}\CJKfamily{zhsong}\bfseries}]{subsection}

%subsubsection宋体小四号加粗
\CTEXsetup[beforeskip=5.25pt,afterskip=5.25pt,format={\zihao{5}\CJKfamily{zhsong}\bfseries}]{subsubsection}


\bibliographystyle{gbt7714-numerical}

%代码报lsting格式
%\lstset{numbers=none,
%  numberstyle=\scriptsize,
%  frame=lines,
%  flexiblecolumns=false,
%  language=Python,
%  basicstyle=\ttfamily\small,
%  breaklines=true,
%  extendedchars=true,
%  escapechar=\%,
%  texcl=true,
%  showstringspaces=true,
%  keywordstyle=\bfseries,
%  tabsize=4}

%%%%
%以下内容理工农医类专业请直接注释掉
%设置section计数器为汉字
% \CTEXsetup[number={\chinese{section}}]{section}
% \CTEXsetup[name={（,）}]{subsection}
% \CTEXsetup[number={\chinese{subsection}}]{subsection}


%%%%
% 汉语标题
\newcommand{\bjfuTitle}[1]{\def\bjfuTitleString{#1}}
% 英语标题
\newcommand{\bjfuTitleEn}[1]{\def\bjfuTitleEnString{#1}}
% 汉语作者
\newcommand{\bjfuAuthor}[1]{\def\bjfuAuthorString{#1}}
% 英语作者
\newcommand{\bjfuAuthorEn}[1]{\def\bjfuAuthorEnString{#1}}
% 汉语摘要
\newcommand{\bjfuAbstract}[1]{\def\bjfuAbstractString{#1}}
% 英语摘要
\newcommand{\bjfuAbstractEn}[1]{\def\bjfuAbstractEnString{#1}}
% 汉语关键字
\newcommand{\bjfuKeywords}[1]{\def\bjfuKeywordsString{#1}}
% 英语关键字
\newcommand{\bjfuKeywordsEn}[1]{\def\bjfuKeywordsEnString{#1}}
% 汉语指导教师
\newcommand{\bjfuSupervisor}[1]{\def\bjfuSupervisorString{#1}}
\newcommand{\bjfuSupervisorTitle}[1]{\def\bjfuSupervisorTitleString{#1}}
% 英语指导教师
\newcommand{\bjfuSupervisorEn}[1]{\def\bjfuSupervisorEnString{#1}}
% 汉语班级
\newcommand{\bjfuClass}[1]{\def\bjfuClassString{#1}}
% 英语班级
\newcommand{\bjfuClassEn}[1]{\def\bjfuClassEnString{#1}}
% 学院
\newcommand{\bjfuCollege}[1]{\def\bjfuCollegeString{#1}}
% 专业
\newcommand{\bjfuMajor}[1]{\def\bjfuMajorString{#1}}
% 学号
\newcommand{\bjfuId}[1]{\def\bjfuIdString{#1}}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% 标题页
\newcommand{\makeBjfuTitlePage}{
%扉页，无header和footer
%这一页的页边距和其他页面不一样，为上边距为25.4mm，下边距为25.4mm，左边距为31.75mm，右边距为31.75mm
\newgeometry{left=31.75mm,right=31.75mm,top=25.4mm,bottom=25.4mm}
\thispagestyle{empty}
\begin{spacing}{1.5}
\rightline{\zihao{4} \CJKfamily{zhhei}学校代码：10022}

\hspace{-8mm}\includegraphics[height=38mm]{files/bjfu_title.png} 

\begin{center}
\zihao{0} \CJKfamily{zhkai} \textbf{本科毕业论文（设计）}

\vspace{-40pt}

% 中英文题目
\renewcommand\arraystretch{0.6}

\vspace{2cm}

\begin{tabular}{C{\textwidth}}
    
    \zihao{3} \CJKfamily{zhsong} \textbf{\bjfuTitleString} \\
    \hline
    \zihao{4} \textbf{\bjfuTitleEnString} \\
    \hline
\end{tabular}

\vspace{40pt}

% 作者
\begin{tabular}{C{0.3\textwidth}}
    \zihao{4} \CJKfamily{zhsong} \bjfuAuthorString
    \\\hline
\end{tabular}

\vspace{40pt}

% 信息
\begin{tabular}{rC{0.6\textwidth}}
    \zihao{4} \CJKfamily{zhsong} \textbf{学\ \ \ \ \ \ \ \ 院} & \zihao{4} \CJKfamily{zhsong} \bjfuCollegeString
    \\\cline{2-2}
    \zihao{4} \CJKfamily{zhsong} \textbf{专\ \ \ \ \ \ \ \ 业} & \zihao{4} \CJKfamily{zhsong} \bjfuMajorString
    \\\cline{2-2}
    \zihao{4} \CJKfamily{zhsong} \textbf{指导教师} & \zihao{4} \CJKfamily{zhsong} \bjfuSupervisorString\ \ \ \ \bjfuSupervisorTitleString
    \\\cline{2-2}
\end{tabular}

\vspace{40pt}

\zihao{4} \CJKfamily{zhsong}{2021年 5月 1日}

\renewcommand\arraystretch{1}
\end{center}
\end{spacing}

\pagebreak
%回复页边距和header、footer
\restoregeometry
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%论文摘要和目录用罗马数字单独编页码。
\pagenumbering{Roman}
\begin{titlepage}
\thispagestyle{fancy}
%中文标题
\begin{center}
%论文题目用小三号黑体(中文)或者Times New Roman体(英文)
%分行用双反斜线表示
\zihao{-3}\CJKfamily{zhhei}\textbf{\bjfuTitleString}\\

%作者及指导教师用小四号宋体
%中文作者名，空格用单反斜线或者回车行表示
\zihao{-4}\CJKfamily{zhsong}\bjfuClassString \ \bjfuAuthorString \\
\zihao{-4}\CJKfamily{zhsong}指导老师\ \bjfuSupervisorString \\

%“摘要”字样用四号宋体加粗居中
\zihao{4}\CJKfamily{zhsong}\textbf{摘要}

\end{center}

%摘要正文用楷体五号
\zihao{5}\CJKfamily{zhkai}\bjfuAbstractString \\\\

%“关键词”字样后带冒号，中文关键词为五号宋体加粗
\CTEXnoindent\zihao{5}\CJKfamily{zhsong}\textbf{关键词：\bjfuKeywordsString}
\pagebreak

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%英文题目用小三号Times New Roman体，其他要求同中文
\begin{center}
\zihao{-3}\textbf{\bjfuTitleEnString }\\
\zihao{-4}\bjfuClassEnString\ \bjfuAuthorEnString \\
\zihao{-4}Supervisor\ \bjfuSupervisorEnString \\
\zihao{4}\textbf{Abstract}
\end{center}
%英文摘要正文
\zihao{5} \bjfuAbstractEnString \\\\
%英文关键词为五号Times New Roman体加粗
\zihao{5}\textbf{Key Words: \bjfuKeywordsEnString}
\end{titlepage}
\pagebreak
%自动生成目录页
\setcounter{page}{3}
\tableofcontents
\pagebreak
%自正文开始，使用阿拉伯数字且重新开始页码
%论文页码的字号字体为小五号Times New Roman体，页码位于页面底端居中；
\pagenumbering{arabic}
}

\newcommand{\bjfubib}[1]{\newpage\addcontentsline{toc}{section}{参考文献}\zihao{-5}\bibliography{#1}}

\newcommand{\bjfuack}{\newpage\centerline{\zihao{4}\bfseries{致谢}}\vspace{14pt}\addcontentsline{toc}{section}{致谢}}