% Intro Options
\ProvidesClass{sanchagrin-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.8cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage{fontspec,xltxtra,xunicode}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{2D5D7B}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{11pt}\selectfont 
Last Updated on
\today
\end{textblock}}

\newcommand{\leftdetails}[1]{\begin{textblock}{60}(170,5)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{12pt}{12pt}\selectfont 
#1
\end{textblock}}


% Name command
\newcommand{\namesection}[3]{
	\centering{
		\color{headings}
		\sffamily
		\fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{12cm}\selectfont #1 
		\fontspec{Helvetica Neue Light}\selectfont #2
	} \\
	\vspace{5pt}
	\centering{ \color{primary}\fontspec{Heiti TC Medium}\fontsize{11pt}{15pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-20pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Helvetica}\fontsize{14pt}{20pt}\selectfont\bfseries \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Helvetica}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{primary}
\fontspec{Helvetica}\fontsize{12pt}{12pt}\selectfont\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{primary}\raggedright\scshape\fontspec{Heiti SC Medium}\fontsize{10pt}{12pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{primary}\raggedright\scshape\fontspec{Heiti TC Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}


