%Created by Qi Tang in 2021
%Contact info: qitang@bjtu.edu.cn
%Version 0.1


\NeedsTeXFormat{LaTeX2e}[2021/12/14]
\ProvidesClass{vip-thesis}[2022/5/30]
\LoadClass[14px]{article}

% 加载需要的包
% 定义纸张大小和边界
\RequirePackage[a4paper,marginparwidth={2.5cm},vmargin={2.5cm}]{geometry}
\RequirePackage{fontspec}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\RequirePackage{caption,subcaption}
\RequirePackage{amsmath,amsthm,amscd,amssymb}
\RequirePackage{mathtools}

\RequirePackage{subcaption}
% 边注
\RequirePackage{marginnote}
\RequirePackage{multirow}
\RequirePackage[table,xcdraw]{xcolor}
\RequirePackage{tabularx}
\RequirePackage{tabularx,booktabs}
% 代码
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{fancyhdr,manfnt}
\RequirePackage{footmisc}

% 纸张样式
\pagestyle{fancy} \columnsep=10mm
% 页眉页脚
\fancyhead[L]{\href{https://www.tang5618.com/posts/DSR/PMBANet/}{\includegraphics[scale=0.2]{../../resources/img/logo.png}}} 
\fancyhead[R]{\thepage} 
\fancyfoot[C]{\href{https://www.tang5618.com/}{\includegraphics[scale=0.07]{../../resources/img/qtang.png}}}

% title 和 author 左对齐
\makeatletter
\renewcommand{\maketitle}{\bgroup\setlength{\parindent}{0pt}
\Huge\@title\\[0.5em]
\large\textit{\@author}
\egroup}
\makeatother

\captionsetup[figure]{labelfont={},name={图},labelsep=period}
\captionsetup[table]{labelfont={},name={表},labelsep=period}

% 定义算法伪代码样式
\makeatletter
\makeatother
\let\algorithm\relax
\let\endalgorithm\relax
\RequirePackage[linesnumbered,ruled,vlined]{algorithm2e}%[ruled,vlined]{
\RequirePackage{algpseudocode}
\RequirePackage{amsmath}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}

% 定义代码样式
\definecolor{gray}{rgb}{0.96,0.96,0.96}
\definecolor{vipblue}{RGB}{41,98,255}

\lstset{ %
  language=python,                % the language of the code
  basicstyle=\footnotesize,           % the size of the fonts that are used for the code
  numbers=left,                   % where to put the line-numbers
  columns=fixed, 
  numberstyle=\tiny\color{black},  % the style that is used for the line-numbers
  stepnumber=1,                   % the step between two line-numbers. If it's 1, each line 
                                  % will be numbered
  numbersep=5pt,                  % how far the line-numbers are from the code
  backgroundcolor=\color{gray},      % choose the background color. You must add \RequirePackage{color}
  showspaces=false,               % show spaces adding particular underscores
  showstringspaces=false,         % underline spaces within strings
  showtabs=false,                 % show tabs within strings adding particular underscores
  frame=single,,                 % adds a frame around the code
  frameround = tttt,
  framexleftmargin=3mm, 
  rulecolor=\color[RGB]{158,193,243},        % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. commens (green here))
%  aboveskip=1em,
  tabsize=2,                      % sets default tabsize to 2 spaces
  captionpos=b,                   % sets the caption-position to bottom
  breaklines=true,                % sets automatic line breaking
  extendedchars=false,   
  breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
  title=\lstname,                   % show the filename of files included with \lstinputlisting;
                                  % also try caption instead of title
  keywordstyle=\color[RGB]{0,51,179},          % keyword style
  commentstyle=\color[RGB]{140,140,140},       % comment style
  stringstyle=\color[RGB]{6,125,23},         % string literal style
  identifierstyle=\color{black},
  escapeinside={\%*}{*)},            % if you want to add LaTeX within your code
  morekeywords={*,...}               % if you want to add more keywords to the set
}