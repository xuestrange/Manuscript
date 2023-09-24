\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ssrn}[2023/07/02 Template for SSRN]

\LoadClass[a4paper,12pt]{article}

\RequirePackage{amsmath,amssymb,amsthm,bm,fixdif}
\RequirePackage{xcolor,float,graphics,graphicx,caption,setspace}
\onehalfspacing
\RequirePackage{geometry}
\geometry{top=3cm,bottom=3cm,left=2.5cm,right=2.5cm}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\fancypagestyle{plain}{%
	\fancyhf{} % 清空所有预设样式
	\fancyfoot[C]{\thepage{}/\pageref*{LastPage}} % 设置页脚中心位置
	\renewcommand{\headrulewidth}{0.4pt} % 页眉横线的宽度
	\renewcommand{\footrulewidth}{0pt}   % 页脚横线的宽度
}
\pagestyle{plain}
\renewcommand{\arraystretch}{1.2}  % 普通表格的行高

\RequirePackage[toc,page]{appendix}
\RequirePackage{hyperref}
\RequirePackage[noabbrev]{cleveref}
\def\mycolor{blue}
\hypersetup{colorlinks=true,linkcolor=\mycolor,citecolor=\mycolor,urlcolor=\mycolor}
\RequirePackage[style=apa, backend=biber, natbib=true]{biblatex}

\makeatletter
\renewcommand\@date{{%
			\vspace{-\baselineskip}%
			\large\centering
			\begin{tabular}{@{}c@{}}
				Author 1                           \\
				\normalsize first.author@email.com \\
				School of Management               \\
				University of Science and Technology of China
			\end{tabular}%
			\quad
			\begin{tabular}{@{}c@{}}
				Author 2                            \\
				\normalsize second.author@email.com \\
				School of Management                \\
				University of Science and Technology of China
			\end{tabular}%
			\quad
			\begin{tabular}{@{}c@{}}
				Author 3                           \\
				\normalsize third.author@email.com \\
				School of Management               \\
				University of Science and Technology of China
			\end{tabular}%
			\bigskip

			\today
		}}
\makeatother

\makeatletter
\def\@maketitle{%
	\newpage

	\setcounter{page}{0}
	\thispagestyle{empty}
	\null
	\vskip 2em%
	\begin{center}%
		\let \footnote \thanks
		{\LARGE \@title \par}%
		\vskip 2cm%
		\@date
	\end{center}%
	\par
	\vskip 1.5em
	\newpage}
\makeatother


\renewenvironment{abstract}
{\small
	\setcounter{page}{0}
	\thispagestyle{empty}
	\begin{center}
		\Large \bfseries \abstractname
	\end{center}\quotation\noindent}
{\endquotation}

\newenvironment{myappendix}
{\begin{appendices}
	\counterwithin{equation}{section}
	\counterwithin{table}{section}
	\counterwithin{figure}{section}
	\setcounter{equation}{0}
	\setcounter{table}{0}
	\setcounter{figure}{0}}
{\end{appendices}}

