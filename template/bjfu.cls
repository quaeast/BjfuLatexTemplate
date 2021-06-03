\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bjfu}[2018/02/14 A template for bjfu bachelor thesis]
\LoadClass[UTF8,cs4size]{ctexart}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%协议：MIT协议（http://opensource.org/licenses/MIT）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titlesec}
% 行距控制
\RequirePackage{setspace}
% 超链接
\RequirePackage[bookmarks,hidelinks]{hyperref}
% 板式
\RequirePackage{geometry}
% 图片
\RequirePackage{graphicx}
% 图表标题
\RequirePackage{bicaption}
% 页眉页脚控制
\RequirePackage{fancyhdr}
% 非汉字字体设置
\RequirePackage{fontspec}
% 计数器控制
\RequirePackage{amsmath}
% 表格控制
\RequirePackage{multirow} 
\RequirePackage{array}
% use xifthen
\RequirePackage{xifthen}
% 插入代码
\RequirePackage{minted}
% 设置列表格式
\RequirePackage{enumitem}
% 表格注释
\RequirePackage{threeparttable}

\RequirePackage[sort&compress]{gbt7714}
% 论文一律编排并打印在A4幅面白纸上
% 上边距为25mm，下边距为25mm，左边距为30mm，右边距为20mm
\geometry{a4paper,left=30mm,right=20mm,top=25mm,bottom=25mm}

% 论文行间距为1.5倍（可能需要用\selectfont）
\linespread{1.8}

% 页眉页脚开启
\pagestyle{fancy}

% 页眉字号字体为小五号宋体，内容为“北京林业大学本科毕业论文(设计)”
\chead{\zihao{-5}\CJKfamily{zhsong}北京林业大学本科毕业论文（设计） } 
% 页眉只有中间有内容，左右为空白
\lhead{} 
\rhead{}

% 页眉下边的横线宽度：事实上论文规范并没有对此做出规定，但是我们选择遵循常理去除横线。
% \renewcommand{\headrulewidth}{0pt}

% 论文页码的字号字体为小五号Times New Roman体
% 从绪论部分开始，至附录，用阿拉伯数字连续编排
% 页码位于页面底端居中
% 用于页码/表格内容/表注/图注的字体大小配置 小五号
\renewcommand{\footnotesize}{\zihao{-5}}  

% 论文中出现的所有数字和字母如无特殊要求都用Times New Roman体。
% 设置正文非汉字的字体为Times New Roman
\setmainfont{Times New Roman}

% 图表注释配置一定要在这里声明space，直接声明不好使，小五号
\captionsetup{font={footnotesize,bf},labelsep=space}

%%% 图片相关配置

% 设置图片编号随着章节自动清零
\numberwithin{figure}{section}
% 定义图的编号为章节号码.序号
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
% 图注
\newcommand{\bjfuFigureCaption}[2]{
    %中文标题begin
    \renewcommand{\figurename}{图}
    \caption{#1} %中文名
    %中文标题end
    \addtocounter{figure}{-1}
    \vspace{-5pt}
    %英文标题begin
    \renewcommand{\figurename}{Figure}
    \caption{#2} %英文名，注意仅首字母和专有名词大写
    %英文标题end
}

%%% 表格相关配置

% 设置表格编号随着章节自动清零
\numberwithin{table}{section}
% 定义表的编号为章节号码.序号
\renewcommand{\thetable}{\thesection.\arabic{table}}
% 表注
\newcommand{\bjfuTableCaption}[2]{
    %中文标题begin
    \renewcommand{\tablename}{表}
    \caption{#1} %中文名
    %中文标题end
    \addtocounter{table}{-1}
    \vspace{-5pt}
    %英文标题begin
    \renewcommand{\tablename}{Table.}
    \caption{#2} %英文名，注意仅首字母和专有名词大写
    %英文标题end
}
% 表格注释标签
\def\TPTnoteLabel#1{\zihao{-6}\CJKfamily{zhsong}\textbf{注#1:}}
% 表格注释字体使用六号宋体
\renewcommand{\tiny}{\zihao{-6}\CJKfamily{zhsong}}  

%%% 公式相关配置
% 设置公式编号随着章节自动清零
\numberwithin{equation}{section}
% 定义公式的编号为章节号码.序号
\renewcommand{\theequation}{\thesection.\arabic{equation}}



%%%x 章节标题相关配置
\renewcommand{\equationautorefname}{式}
\renewcommand{\sectionautorefname}{章}
\renewcommand{\subsectionautorefname}{节}
\renewcommand{\subsubsectionautorefname}{条}

% 目录标题：三号黑体
\CTEXoptions[contentsname={ \zihao{3} \centering 目录 }]

% 参考文献标题：四号宋体加粗
\CTEXoptions[bibname={ \zihao{3} \CJKfamily{zhsong} \centering \textbf{参考文献} \vspace{14pt} }]

% 章标题：四号宋体加粗
% section另起一页，宋体四号加粗居中
\newcommand{\sectionbreak}{\clearpage}
\CTEXsetup[
    beforeskip=7pt,
    afterskip=7pt,
    format={\centering\zihao{3}\CJKfamily{zhsong}\bfseries}
]{section}

% 节标题：小四号宋体加粗
% subsection宋体小四号加粗
\CTEXsetup[
    beforeskip=6pt,
    afterskip=6pt,
    format={\zihao{4}\CJKfamily{zhsong}\bfseries}
]{subsection}

% subsubsection宋体五号加粗
\CTEXsetup[
    beforeskip=5.25pt,
    afterskip=5.25pt,
    format={\zihao{-4}\CJKfamily{zhsong}\bfseries}
]{subsubsection}


\bibliographystyle{gbt7714-numerical}


%%%%
%以下内容理工农医类专业请直接注释掉
%设置section计数器为汉字
% \CTEXsetup[number={\chinese{section}}]{section}
% \CTEXsetup[name={（,）}]{subsection}
% \CTEXsetup[number={\chinese{subsection}}]{subsection}


%%% 论文相关变量配置
% 标题
\newcommand{\bjfuTitle}[2]{
    \def\bjfuTitleString{#1}
    \def\bjfuTitleEnString{#2}
}

% 作者
\newcommand{\bjfuAuthor}[2]{
    \def\bjfuAuthorString{#1}
    \def\bjfuAuthorEnString{#2}
}

% 指导教师
\newcommand{\bjfuSupervisor}[2]{
    \def\bjfuSupervisorString{#1}
    \def\bjfuSupervisorEnString{#2}
}

% 指导教师职称
\newcommand{\bjfuSupervisorTitle}[1]{
    \def\bjfuSupervisorTitleString{#1}
}

% 学院
\newcommand{\bjfuCollege}[1]{
    \def\bjfuCollegeString{#1}
}
% 专业
\newcommand{\bjfuMajor}[1]{
    \def\bjfuMajorString{#1}
}
% 学号
\newcommand{\bjfuId}[1]{
    \def\bjfuIdString{#1}
}

% 汉语班级
\newcommand{\bjfuClass}[2]{
    \def\bjfuClassString{#1}
    \def\bjfuClassEnString{#2}
}

% 汉语摘要
\newcommand{\bjfuAbstract}[1]{
    \def\bjfuAbstractString{#1}
}
% 英语摘要
\newcommand{\bjfuAbstractEn}[1]{
    \def\bjfuAbstractEnString{#1}
}
% 汉语关键字
\newcommand{\bjfuKeywords}[1]{
    \def\bjfuKeywordsString{#1}
}
% 英语关键字
\newcommand{\bjfuKeywordsEn}[1]{
    \def\bjfuKeywordsEnString{#1}
}




% 列表编号设置
\renewcommand{\labelenumi}{（\theenumi）} % 一级为(1)
\renewcommand{\theenumii}{\arabic{enumii}} % 二级设置为数字
\renewcommand{\labelenumii}{
    \large\protect\textcircled{\small{\theenumii}}
} % 二级为圈1

% 致谢 
\newcommand{\bjfuThanks}{
    \clearpage
    \phantomsection
    \centerline{\zihao{3}\CJKfamily{zhsong}\bfseries{致谢}}\vspace{14pt}\addcontentsline{toc}{section}{致谢}
}

% 参考文献 小五号宋体
\newcommand{\bjfubib}[1]{
    \clearpage
    \phantomsection
    \addcontentsline{toc}{section}{参考文献}\zihao{-5}\CJKfamily{zhsong}\bibliography{#1}
}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% 标题&摘要&目录绘制命令
\newcommand{\makeBjfuTitlePage}{
    % 扉页，无header和footer
    % 这一页的页边距和其他页面不一样，为上边距为25.4mm，下边距为25.4mm，左边距为31.75mm，右边距为31.75mm
    \newgeometry{left=31.75mm,right=31.75mm,top=25.4mm,bottom=25.4mm}
    \thispagestyle{empty}
    \begin{spacing}{1.5}
        % 学校代码
        \rightline{\zihao{4} \CJKfamily{zhhei}学校代码：10022}
        % 学校Logo
        \hspace{-8mm}\includegraphics[height=38mm]{files/bjfu_title.png} 
        % 大标题
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
                \zihao{4} \CJKfamily{zhsong} \bjfuAuthorString \\ 
                \hline
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
    % 回复页边距和header、footer
    \restoregeometry
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % 摘要页
    % 论文摘要和目录用罗马数字单独编页码。
    \pagenumbering{Roman}
    \begin{titlepage}
        \thispagestyle{fancy}
        % 中文摘要
        \begin{center}
            % 论文题目用小三号黑体(中文)或者Times New Roman体(英文)
            % 分行用双反斜线表示
            % \zihao{-3}\CJKfamily{zhhei}\textbf{\bjfuTitleString}\\

            % 作者及指导教师用小四号宋体
            % 中文作者名，空格用单反斜线或者回车行表示
            % \zihao{-4}\CJKfamily{zhsong}\bjfuClassString \ \bjfuAuthorString \\
            % \zihao{-4}\CJKfamily{zhsong}指导老师\ \bjfuSupervisorString \\

            % “摘要”字样用四号宋体加粗居中
            \zihao{3}\CJKfamily{zhsong}\textbf{摘要}
        \end{center}

        % 摘要正文用楷体五号
        \zihao{-4}\CJKfamily{zhkai}\bjfuAbstractString \\

        % “关键词”字样后带冒号，中文关键词为五号宋体加粗
        \CTEXnoindent\zihao{-4}\CJKfamily{zhsong}{\bfseries 关键词：}\bjfuKeywordsString
        \pagebreak

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % 英文摘要
        % 英文题目用小三号Times New Roman体，其他要求同中文
        \begin{center}
            % \zihao{-3}\textbf{\bjfuTitleEnString}\\
            % \zihao{-4}\bjfuClassEnString\ \bjfuAuthorEnString \\
            % \zihao{-4}Supervisor\ \bjfuSupervisorEnString \\
            \zihao{3}\textbf{Abstract}
        \end{center}
        %英文摘要正文
        \zihao{-4} \bjfuAbstractEnString \\

        %英文关键词为五号Times New Roman体加粗
        \zihao{-4} {\bfseries Keywords:} \bjfuKeywordsEnString
    \end{titlepage}
    \pagebreak
    % 目录
    \setcounter{page}{3}
    {\zihao{5} \tableofcontents}
    \pagebreak

    %自正文开始，使用阿拉伯数字且重新开始页码
    %论文页码的字号字体为小五号Times New Roman体，页码位于页面底端居中；
    \pagenumbering{arabic}
}

\newcommand{\bjfuitem}[2]{{\CTEXnoindent\bfseries（#1）#2}}

% \setenumerate[1]{label={（\arabic*）}}