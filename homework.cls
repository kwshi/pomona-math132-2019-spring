\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2018/12/26 Math 132 homework class]

\LoadClass[twoside]{article}

% load packages
%% basic packages
\RequirePackage[ascii]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}

%% for document setup
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titling}

%% fonts and text styles
\RequirePackage{lmodern}
\RequirePackage{dsfont}
\RequirePackage{parskip}

%% math
\RequirePackage{
  amsmath,
  amsthm,
  amssymb,
  amsfonts,
}
\RequirePackage{mathtools, thmtools}

%%% symbols
\RequirePackage{stmaryrd}

%% utility packages
\RequirePackage{
  mdframed,
  stackrel,
  cancel,
  lastpage,
  multicol,
  color,
  tikz,
  pgfplots,
  hyperref,
  marginnote,
  isomath,
  centernot,
  caption,
  subcaption,
  enumitem
}

% document setup
%% page dimensions
\geometry{
  top=.5in,
  bottom=.75in,
  right=1in,
  left=1in,
  headheight=3em,
  headsep=1em,
  marginparwidth=1.125in,
  marginparsep=.125in,
  includeheadfoot,
}

%% document metadata
\newcommand{\thecourse}{Math 132}
\newcommand{\theterm}{Spring 2019}
\newcommand{\thecoauthor}{}
\newcommand{\coauthor}[1]{\renewcommand{\thecoauthor}{#1}}
\newcommand{\homework}[1]{\newcommand{\thehomework}{#1}}
\newcommand{\thedue}{the beginning of class on \underline{\thedate}}
\newcommand{\due}[1]{\renewcommand{\thedue}{#1}}

%% page decoration
\fancypagestyle{first}{
  \fancyhf{}
  \chead{
    \textbf{Homework \thehomework}\\
    {\small\textsc{\thecourse{} -- \theterm}}\\
    {\small\textsc{due at \thedue}}
  }
  \rhead{\mbox{\small\theauthor}\\\mbox{\small\thecoauthor}\\}
  \lhead{{\small\textsc{\thepage\ of \pageref{LastPage}}}\\\mbox{}\\}
  \renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{rest}{
  \fancyhf{}
  \chead{\small\textsc{\thecourse{} -- \theterm}}
  \rhead{\small\theauthor}
  \lhead{\small\textsc{\thepage{} of \pageref{LastPage}}}
  \renewcommand{\headrulewidth}{0pt}
}

\pagestyle{rest}
\thispagestyle{first}

%% list styles
\setlist[enumerate, 1]{label=(\roman*)}

%% hyperlink styles
\hypersetup{
  colorlinks=true,
  urlcolor=blue!50!green,
  linkcolor=blue!50!green,
}

% pset-related environments & commands
\declaretheoremstyle[
  bodyfont=\normalfont,
  spaceabove=1em,
]{exercise}

\declaretheorem[style=exercise]{exercise}
\declaretheorem[style=exercise]{Exercise}

\declaretheoremstyle[
  spaceabove=0em,
  numbered=no,
  bodyfont=\normalfont,
  headfont=\bfseries,
]{theorem}

\declaretheoremstyle[
  style=theorem,
  numbered=yes,
]{ntheorem}

\declaretheoremstyle[
  spaceabove=1em,
  numbered=no,
  bodyfont=\normalfont,
  headfont=\scshape,
]{minitheorem}

\declaretheorem[style=theorem]{claim}
\declaretheorem[style=theorem]{lemma}
\declaretheorem[style=theorem]{corollary}
\declaretheorem[style=ntheorem, title=Claim]{nclaim}
\declaretheorem[style=ntheorem, title=Lemma]{nlemma}
\declaretheorem[style=ntheorem, title=Corollary]{ncorollary}
\declaretheorem[style=minitheorem, title=Base case]{basecase}
\declaretheorem[style=minitheorem, title=Inductive step]{inductivestep}

\newenvironment{preface}{\itshape}{\par\hrulefill}
\newcommand{\comment}[1]{\marginnote{\scriptsize\textcolor{gray}{#1}}}

% mdframed setup
\mdfdefinestyle{solution}{
  skipabove=.5em,
}
\mdfdefinestyle{quote}{
  hidealllines=true,
  leftline=true,
  linecolor=lightgray!50,
  linewidth=.25em,
  innerrightmargin=0pt,
  rightmargin=0pt,
  skipabove=.5em,
  skipbelow=.5em,
}

\newmdenv[style=solution]{solution}
\renewmdenv[style=quote]{quote}

% tikz libraries
\usetikzlibrary{calc}
\usetikzlibrary{math}
\usetikzlibrary{decorations}
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{decorations.text}
\usetikzlibrary{intersections}
\usetikzlibrary{arrows.meta}

% math commands

%% use cooler mathds black-board math font
\renewcommand{\mathbb}{\mathds}

%% miscellaneous operators
\newcommand{\defeq}{\stackrel{\mathrm{def}}{=}}
\newcommand{\toto}{\rightrightarrows}
\newcommand{\uniformto}{\toto}
\DeclareMathOperator*{\lspan}{span}
\DeclareMathOperator*{\vecspan}{span}
\DeclareMathOperator*{\tr}{tr}

%% vector bold-italic
\renewcommand{\vec}{\mathbfit}
\newcommand{\mat}{\mathbf}

%% common blackboard-bold symbols
\newcommand{\Z}{\mathbb Z}
\newcommand{\R}{\mathbb R}
\newcommand{\Q}{\mathbb Q}
\newcommand{\C}{\mathbb C}
\newcommand{\K}{\mathbb K}
\newcommand{\T}{\mathbb T}
\newcommand{\N}{\mathbb N}

\newcommand{\M}{\mathsf M}
\newcommand{\h}{\mathcal H}
\newcommand{\A}{\mathcal A}
\newcommand{\W}{\mathcal W}
\newcommand{\V}{\mathcal V}

% transpose and complement
\newcommand{\transpose}{\mathsf{T}}
\renewcommand{\complement}{\mathsf{C}}

%% differential operators
\newcommand{\odif}{\mathop{}\! \mathrm d}
\newcommand{\dif}{\odif}
\newcommand{\pdif}{\mathop{}\! \partial}

\newcommand{\od}[3][]{\frac{\odif^{#1} {#2}}{\odif {#3}^{#1}}}
\newcommand{\pd}[3][]{\frac{\pdif^{#1} {#2}}{\pdif {#3}^{#1}}}

%% analysis operators
\newcommand{\tto}{\rightrightarrows}

%% brackets & delimiters
\newcommand{\abs}[1]{\lvert {#1} \rvert}
\newcommand{\norm}[1]{\lVert {#1} \rVert}
\newcommand{\abracket}[1]{\langle {#1} \rangle}
\newcommand{\inner}{\abracket}
\newcommand{\floor}[1]{\lfloor {#1} \rfloor}
\newcommand{\ceil}[1]{\lceil {#1} \rceil}
\newcommand{\paren}[1]{( {#1} )}
\newcommand{\bracket}[1]{[ {#1} ]}
\newcommand{\curly}[1]{\{ {#1} \}}
\newcommand{\set}{\curly}
\newcommand{\setst}[2]{\set{{#1} \; : \; {#2}}}


\newcommand{\Abs}[1]{\left\lvert {#1} \right\rvert}
\newcommand{\Norm}[1]{\left\lVert {#1} \right\rVert}
\newcommand{\Abracket}[1]{\left\langle {#1} \right\rangle}
\newcommand{\Inner}{\Abracket}
\newcommand{\Floor}[1]{\left\lfloor {#1} \right\rfloor}
\newcommand{\Ceil}[1]{\left\lceil {#1} \right\rceil}
\newcommand{\Paren}[1]{\left( {#1} \right)}
\newcommand{\Bracket}[1]{\left[ {#1} \right]}
\newcommand{\Curly}[1]{\left\{ {#1} \right\}}
\newcommand{\Set}{\Curly}
\newcommand{\Setst}[2]{\Set{{#1} \; : \; {#2}}}

\newcommand{\eval}{\bigg\rvert}
