\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{optima}[2009/07/10 
^^JLaTeX document class for OPTIMA]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% please send problems/feedback to <optima@m0x45.de>                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
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
%--------------------------------------------------------------------------------
\LoadClass[10pt,oneside]{book}
\RequirePackage[a4paper,%
                heightrounded,%
                top=2cm,%
                left=5cm,%
                right=6cm,%
                bottom=1cm,%
                ]{geometry}
                \RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\lhead{\bfseries\footnotesize OPTIMA -- Draft}
\rhead{\bfseries\footnotesize Column \thepage}
\pagestyle{fancy}
\setlength{\parskip}{0pt}
\setlength{\parindent}{1em}

\renewcommand{\familydefault}{cmss}

\RequirePackage{amsmath,amsthm,amssymb}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\definecolor{othercolor}{rgb}{1,0,0}
%
\RequirePackage[font=small,%
  labelfont=rm,%
  textfont=it,%
  labelsep=period,%
  singlelinecheck=false,%
  aboveskip=3pt,%
  justification=raggedright]{caption} 
%  
\RequirePackage{titlesec}
\renewcommand{\thesection}{\arabic{section}}
\titleformat{\section}
      {\color{othercolor}\normalfont\bfseries\raggedright}
      {\makebox[8mm][l]{\thesection}}
      {0em}
      {}
\titlespacing*{\section}
      {0pt}{2\baselineskip plus 0.5\baselineskip minus 0.5\baselineskip}{0\baselineskip}
\titleformat{\subsection}
      {\color{othercolor}\normalsize\itshape\raggedright}
      {\makebox[8mm][l]{\thesubsection}}
      {0em}
      {}
\titlespacing*{\subsection}
      {0pt}{1\baselineskip}{0\baselineskip}
   
\newcommand{\refname}{References}
\renewenvironment{thebibliography}[1]
     {\section*{\refname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \setlength{\itemsep}{0pt}
            \setlength{\parsep}{.5ex plus .5ex}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \footnotesize
      \sloppy 
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
      
\renewenvironment{quote}
               {\list{}{%
                   \rightmargin0em%
                   \leftmargin2em%
                   \topsep0pt%
                   \parsep0pt}%
                \item 
                  \relax}
               {\endlist}
               
\newcommand{\head}[2]{%
   %\reset
      \noindent
      \begin{minipage}{\linewidth}
      \color{othercolor}
      \raggedright
      \normalsize
      #1\par
      \fontsize{13pt}{18pt}\selectfont
      \textbf{#2}\par

    \end{minipage}
   
  \vspace{1\baselineskip}

  }
  
\newenvironment{info}
               {\vspace{\baselineskip}\par \footnotesize\RaggedRight}
               {}
               
\newenvironment{jinfo}
               {\setlength{\parindent}{0pt}%
               \vspace{\baselineskip}\par \small}
               {}          
  
\RequirePackage{paralist}


\RequirePackage[bookmarks=false,colorlinks=true,breaklinks=true,
   linkcolor=black,citecolor=black,urlcolor=black]{hyperref}
\RequirePackage{breakurl}
  