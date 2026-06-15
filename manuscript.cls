% Author: Junzhi Xue
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manuscript}[2023/07/02 Manuscript template]

\newif\ifmanuscript@anonymous
\manuscript@anonymousfalse
\DeclareOption{anonymous}{\manuscript@anonymoustrue}
\DeclareOption{submission}{\manuscript@anonymoustrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[letterpaper,11pt]{article}
\RequirePackage{amsmath,amssymb,amsthm,bm,fixdif,bbm}
\RequirePackage{algorithm,algorithmicx,algpseudocode}
\RequirePackage{authblk}
\RequirePackage{csquotes}
\RequirePackage{xcolor,float, tikz,graphics,graphicx,caption}
\RequirePackage[toc,page]{appendix}
\RequirePackage{booktabs}
\RequirePackage{tablefootnote}
\RequirePackage{setspace}
\doublespacing
\RequirePackage{geometry}
\geometry{top=1in,bottom=1in,left=1in,right=1in}

\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
	\fancyhf{} 
	\fancyfoot[C]{\thepage{}/\pageref*{LastPage}} 
	\renewcommand{\headrulewidth}{0pt} 
	\renewcommand{\footrulewidth}{0pt}   
}
\pagestyle{plain}

\RequirePackage[flushleft]{threeparttable}
% ===================== Font Setting ===================== %
% \RequirePackage{newtxtext} % text font
% \RequirePackage{newtxmath} % math font

% \RequirePackage{newpxtext} % text font
% \RequirePackage{newpxmath} % math font

% \RequirePackage{fourier}     % text font
% \RequirePackage{fouriernc}   % math font
% ======================================================== %
\RequirePackage{refcount}
\renewcommand{\arraystretch}{1.0}  

\RequirePackage{hyperref}
\RequirePackage[noabbrev]{cleveref}
\def\mycolor{blue}
\hypersetup{colorlinks=true,linkcolor=\mycolor,citecolor=\mycolor,urlcolor=\mycolor}
\newcommand{\mailto}[1]{\href{mailto:#1}{#1}}

% ===================== Author Setting ===================== %
\makeatletter
\newif\ifmanuscript@hasauthors
\manuscript@hasauthorsfalse
\newcommand{\manuscript@authorblock}{}

\newcommand{\Author}[3]{%
	\manuscript@hasauthorstrue
	\g@addto@macro\manuscript@authorblock{%
		{\large #1\par}%
		\vspace{0.18em}%
		{\normalsize #2, \mailto{#3}\par}%
		\vspace{0.85em}%
	}%
}

\newcommand{\ManuscriptAuthorBlockOr}[1]{%
	\ifmanuscript@anonymous
	\else
		\ifmanuscript@hasauthors
			\vspace{0.85em}%
			\manuscript@authorblock
		\else
			#1%
		\fi
	\fi
}
\makeatother
% ========================================================== %
\RequirePackage[style=apa, backend=biber, natbib=true]{biblatex}

\makeatletter
\def\@maketitle{%
	\begin{center}%
		\singlespacing
		\let \footnote \thanks
			{\LARGE\bfseries \@title \par}%
		\ManuscriptAuthorBlockOr{%
			\vspace{0.75em}%
			{\normalsize \@author \par}%
		}%
	\end{center}%
	\par\vspace{1em}
}
\makeatother


\renewenvironment{abstract}[1]
{\small
	\begin{center}
		\bfseries \large \abstractname\vspace{0pt}\vspace{0pt}
	\end{center}}{}

\newcommand{\red}[1]{\textcolor{red}{#1}}
\newcommand{\green}[1]{\textcolor{PineGreen}{#1}}
