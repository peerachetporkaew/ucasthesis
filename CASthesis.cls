
%% This is file `CASthesis.cls',
%% generated with the docstrip utility.
%% The original source files were:
%% CASthesis.dtx  (with options: `cls')
%% This is a generated file.
%% Copyright 2004-2006
%% CTEX.ORG and any individual authors listed elsewhere in this file.
%% This file was generated from file(s) of the CASthesis package project.
%% ----------------------------------------------------------------------
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{CASthesis}
  [2011/04/06 v0.2 CASthesis
   document class]
\newif\ifCAST@typeinfo \CAST@typeinfotrue
\DeclareOption{notypeinfo}{\CAST@typeinfofalse}
\newif\ifCAST@dvips \CAST@dvipsfalse
\DeclareOption{dvips}{\CAST@dvipstrue}
\DeclareOption{dvipdfm}{\CAST@dvipsfalse}
\DeclareOption{pdftex}{\CAST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[cs4size,a4paper,nocap,fancyhdr,fntef]{ctexbook}[2005/11/25]
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% graphics packages
\RequirePackage{graphicx}
\RequirePackage{subfigure}
%% sort and compress citations
%\RequirePackage[sort&compress,numbers]{natbib}
%\RequirePackage[super,authoryear,sort&compress,square]{natbib}
%\RequirePackage[superscript]{cite}
\RequirePackage{multirow}
\RequirePackage{setspace} %参考文献垂直行距
\RequirePackage[adjust,compress,sort,space]{cite}
\RequirePackage{setspace}
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{booktabs}
\RequirePackage{changepage}
\RequirePackage[font=small,labelsep=quad]{caption} %改图、表标题的字体大小，编号后分隔符
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}} %修改图标题编号格式为 1-1, 1-2,...，默认为 1.1, 1.2,...
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}} %修改表标题编号格式为 1-1, 1-2,...，默认为 1.1, 1.2,...
\renewcommand{\p@subfigure}{\thefigure} % 子图引用格式与母图引用格式一致
\newcommand{\ucite}[1]{\textsuperscript{\cite{#1}}}
\renewcommand{\figurename}{Figure}
\renewcommand{\tablename}{Table}
\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
\newenvironment{myp1}{\begin{adjustwidth}{1cm}{}}{\end{adjustwidth}}
\newenvironment{myp2}{\begin{adjustwidth}{5mm}{}}{\end{adjustwidth}}
%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCAST@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks=true,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=blue,%
               citecolor=blue,%
              plainpages=false,%
            pdfstartview=FitH}
\AtEndOfPackage{\makeatletter\input{CASthesis.cfg}\makeatother}
\oddsidemargin 1.5 true cm
\if@twoside
  \evensidemargin 0 true cm
\else
  \evensidemargin 1.5 true cm
\fi
\textheight 21 true cm
\textwidth 14.5 true cm
\headheight 15pt
\parskip 0.5ex plus 0.25ex minus 0.25ex
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \thispagestyle{empty}%
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\floatpagefraction}{0.80}
%\bibliographystyle{plain}
%\bibliographystyle{acm}
\newcommand\CASTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}
\def\CAST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CASTfiledate{#1}%
  \def\CASTfileversion{#2}%
  \def\CASTfileinfo{#3}}%
\expandafter\ifx\csname ver@CASthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_CASthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@CASthesis.cls\endcsname}
\fi
\expandafter\CAST@getfileinfo\reserved@a\relax? ? \relax\relax
\def\CAST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CASTunderline{\@ifnextchar[\CAST@underline\CTEXunderline}
\newcommand\classification[1]{\def\CAST@value@classification{#1}}
\newcommand\confidential[1]{\def\CAST@value@confidential{#1}}
\newcommand\UDC[1]{\def\CAST@value@UDC{#1}}
\newcommand\serialnumber[1]{\def\CAST@value@serialnumber{#1}}
\newcommand\school[1]{\def\CAST@value@school{#1}}
\newcommand\degree[1]{\def\CAST@value@degree{#1}}
\renewcommand\title[2][\CAST@value@englishtitle]{%
  \def\CAST@value@englishtitle{#2}
  \def\CAST@value@titlemark{{#1}}}
\renewcommand\author[1]{\def\CAST@value@author{#1}}
\newcommand\advisor[1]{\def\CAST@value@advisor{#1}}
\newcommand\advisorinstitute[1]{\def\CAST@value@advisorinstitute{#1}}
\newcommand\major[1]{\def\CAST@value@major{#1}}
\newcommand\majordegree[1]{\def\CAST@value@majordegree{#1}}
\newcommand\submitdate[1]{\def\CAST@value@submitdate{#1}}
\newcommand\defenddate[1]{\def\CAST@value@defenddate{#1}}
\newcommand\institute[1]{\def\CAST@value@institute{#1}}
\newcommand\chairman[1]{\def\CAST@value@chairman{#1}}
\renewcommand\maketitle{%中文标题页
  \oddsidemargin 0.65 true cm   % 封面居中
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \bf\songti\zihao{-4}
        \hfill
      \CAST@label@confidential~
      \CASTunderline[100pt]{\CAST@value@confidential}
    \vskip \stretch{2}
      \includegraphics[width=0.8\textwidth]{ucas.png}
    \vskip 10pt
      \bf\heiti\zihao{-1} \CAST@value@degree\CAST@label@thesis
    \vskip \stretch{2}
      \bf\songti\zihao{3} \CASTunderline{~\CAST@value@title~}
    \vskip \stretch{2}
    \bf\songti\zihao{4}
    \def\tabcolsep{1pt}
    \def\arraystretch{1.5}
    \begin{tabular}{lc}
        \CAST@label@author    & \CASTunderline[299pt]{\CAST@value@author} \\
        \CAST@label@advisor   & \CASTunderline[299pt]{\CAST@value@advisor} \\
                            & \CASTunderline[299pt]{\CAST@value@advisorinstitute}\\
         \CAST@label@majordegree & \CASTunderline[299pt]{\CAST@value@majordegree} %& \hspace{5pt} &
        \\
        \CAST@label@major & \CASTunderline[299pt]{\CAST@value@major} \\
        \CAST@label@institute & \CASTunderline[299pt]{\CAST@value@institute} \\
        \\[15pt]
       \multicolumn{2}{c}{\CAST@value@submitdate}
    \end{tabular}
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \ifCAST@typeinfo
      \vspace*{\stretch{1}}
      \begin{footnotesize}
        \noindent
        Typeset by \LaTeXe{} at \CTEX@todayold \\
        With package \texttt{CASthesis} \CASTfileversion{} of C\TeX{}.ORG
      \end{footnotesize}
    \fi
    \cleardoublepage
  \fi
  \oddsidemargin 1.5 true cm
}
\newcommand\englishtitle[1]{\def\CAST@value@englishtitle{#1}}
\newcommand\englishauthor[1]{\def\CAST@value@englishauthor{#1}}
\newcommand\englishadvisor[1]{\def\CAST@value@englishadvisor{#1}}
\newcommand\englishinstitute[1]{\def\CAST@value@englishinstitute{#1}}
\newcommand\englishdate[1]{\def\CAST@value@englishdate{#1}}
\newcommand\englishdegree[1]{\def\CAST@value@englishdegree{#1}}
\newcommand\englishmajor[1]{\def\CAST@value@englishmajor{#1}}
\newcommand\englishmajordegree[1]{\def\CAST@value@englishmajordegree{#1}}
\newcommand\makeenglishtitle{%英文标题页
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    \vspace*{20pt}
      \bf\zihao{3} \CAST@value@englishtitle
    \vskip \stretch{3}
      \normalfont\zihao{4}\bf By  \\
      \bf\zihao{3} \CAST@value@englishauthor
    \vskip \stretch{2}
      \normalfont\zihao{4}\bf \CAST@label@englishstatement
    \vskip \stretch{2}
      \normalfont\zihao{4}\bf \CAST@value@englishinstitute
    \vskip 20pt
      \normalfont\zihao{4}\bf \CAST@value@englishdate
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\makedeclaration{% 独创性声明及授权说明
  \cleardoublepage
  \thispagestyle{empty}
%   \vspace*{0pt}
   \begin{center}
      \bf\songti\zihao{2} \CAST@label@declarationtitle
   \end{center}
   \vspace*{5pt}

   \begin{spacing}{1.5}
        \hspace{2pt}\CAST@label@declaration
   \end{spacing}

   \begin{center}
        \CAST@label@declarationsignature~\CASTunderline[80pt]{}~~~\CAST@label@declarationsignaturedate~\CASTunderline[80pt]{}
   \end{center}
   \vspace*{90pt}

   \begin{center}
        \bf\songti\zihao{2} \CAST@label@warranttitle
   \end{center}

   \vspace*{5pt}
   \begin{spacing}{1.5}
        \hspace{2pt}\CAST@label@warrant\\
        \hspace*{20pt}{\bf\songti\zihao{-4}\CAST@label@warrantconfidential}
   \end{spacing}

   \begin{center}
        \CAST@label@warrantsignature~\CASTunderline[80pt]{}~~~
        \CAST@label@warrantadvisorsignature~\CASTunderline[80pt]{}~~~
        \CAST@label@declarationsignaturedate~\CASTunderline[80pt]{}
   \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
% 页眉页脚
\fancypagestyle{plain}{%
  \fancyhf{}%
  \renewcommand{\headrulewidth}{0pt}%
  \renewcommand{\footrulewidth}{0pt}%
}
\pagestyle{fancy}
  \renewcommand{\chaptername}{Chapter}
  \renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}}
  \fancyhf{}
  \fancyhead[RE]{\small \CAST@value@titlemark}
  \fancyhead[LO]{\small \leftmark}
  \fancyhead[LE,RO]{\small ~\thepage~}

\newenvironment{abstract}
  {\Nchapter{\CAST@label@abstract}}
  {}
\newcommand\keywords[1]{%
  \vspace{2ex}\noindent{\heiti \CAST@label@keywords} #1}
\newenvironment{englishabstract}
  {\Nchapter{\CAST@label@englishabstract}}
  {}
\newcommand\englishkeywords[1]{%
  \vspace{2ex}\noindent{\bf \CAST@label@englishkeywords} #1}
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \Nchapter{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\newenvironment{publications}[1]
     {\Nchapter{\CAST@label@publications}%
      \@mkboth{\MakeUppercase\CAST@label@publications}
              {\MakeUppercase\CAST@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}

\newenvironment{resume}
  {\Nchapter{\CAST@label@resume}}
  {}
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@ %
           \leftmargin\z@
           \itemindent 2\ccwd       % 每个条目首行缩进宽度
           \listparindent\itemindent}   % 每个条目从第二段起每段首行缩进宽度
   \item\relax}
  {\endlist}

\newenvironment{resumelist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin\z@
           \itemindent 2\ccwd
           \listparindent\itemindent}
   \item\relax}
  {\endlist}

\newcounter{ProjNum}
\newenvironment{projectlist}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{\arabic{ProjNum}.}
        {\usecounter{ProjNum}%
         \labelwidth=2\ccwd%
         \leftmargin=1.5\ccwd
         \itemindent\z@
         \listparindent\itemindent
         }}
  {\endlist}

\newenvironment{publicationlist}[2]
     {{\noindent\normalfont\bfseries #1}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#2}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}

\renewenvironment{thanks}
  {\Nchapter{\CAST@label@thanks}}
  {}
\setcounter{secnumdepth}{4} % 设置标题层级数
\setcounter{tocdepth}{3}    % 设置目录层级数
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `CASthesis.cls'.
