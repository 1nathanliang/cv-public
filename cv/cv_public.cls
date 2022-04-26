%----------------------------%
%  CLASS OPTIONS + PACKAGES  %
%----------------------------%
\ProvidesClass{cv_public}[2020/02/20 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\PassOptionsToPackage{usenames, dvipsnames}{xcolor}


\usepackage[hmargin=1in, vmargin=1in]{geometry}
\usepackage{hyperref}
\usepackage{fontspec}
\usepackage{fontawesome}
\usepackage{academicons}
\usepackage{mathabx}
\let\Asterisk=\undefined
\usepackage{bbding}
\usepackage{tabularx}
\usepackage{array}
\usepackage{multirow}
\usepackage{dashrule}
\usepackage{tikz}
\renewcommand{\arraystretch}{1.2}

\usepackage{datetime}
\usepackage{advdate}
\usepackage{fancyhdr}
\newcommand{\yesterday}{{\AdvanceDate[-1]\today}}


%---------%
%  FONTS  %
%---------%
\usepackage{fontspec}
\setmainfont[Path = ../fonts/JosefinSans/, SlantedFont=JosefinSans-Light, BoldItalicFont=JosefinSans-BoldItalic, BoldFont=JosefinSans-Bold, ItalicFont=JosefinSans-LightItalic]{JosefinSans-Medium} % The primary font for content text; defines bold, italic and bold-italic as well

%----------%
%  IMAGES  %
%----------%
\usepackage{graphicx}
\graphicspath{ {./img/} }
\usepackage{wrapfig}
\usepackage{float}

%----------%
%  COLORS  %
%----------%
\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{000000} % The primary document color for content text
\definecolor{section_color}{HTML}{393939} % The color of the large sections
\definecolor{subsection_color}{HTML}{6c6c6c} % The color of subsections and places worked/studied

\definecolor{grid_green}{HTML}{55DD35}
\definecolor{grid_lightgreen}{HTML}{B4F75E}
\definecolor{grid_blue}{HTML}{5A9FE0}
\definecolor{grid_orange}{HTML}{F3874C}
\definecolor{grid_yellow}{HTML}{F8D872}
\definecolor{grid_purple}{HTML}{A296F4}
\definecolor{grid_pink}{HTML}{FDC7D9}
\definecolor{grid_red}{HTML}{F95D59}

%-------------------%
%  DOCUMENT HEADER  %
%-------------------%
\newcommand{\header}[2]{
    \centering{\color{section_color}\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Regular}\fontsize{24pt}{28pt}\selectfont #1} \\[5pt]
    \centering{\color{subsection_color}\fontspec[Path = ../fonts/CrimsonText/]{CrimsonText-Regular}\fontsize{14pt}{16pt}\selectfont #2}
    \vspace{-5pt}
}

%-------------------------------------%
%  SECTION TITLE STYLING AND SPACING  %
%-------------------------------------%
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionspace}{\vspace{8pt}}
\usepackage[first=1, last=3]{lcg}
\newcommand{\random}{\rand\arabic{rand}}

\usepackage{pgffor}
\newcommand{\dynamicbullet}{\foreach \i in {1}{
    \pgfmathrandom{1,14}
    \ifnum\pgfmathresult=1
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=2
        \begin{tikzpicture}
            \fill [grid_blue] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (.2pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (3.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=3
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (0.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=4
        \begin{tikzpicture}
            \fill [grid_orange] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (0.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=5
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (0pt,9pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=6
        \begin{tikzpicture}
            \fill [section_color] (.25pt,0.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue](3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green!] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=7
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=8
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=9
        \begin{tikzpicture}
            \fill [grid_purple] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=10
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [pink] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture} 
    \fi
    \ifnum\pgfmathresult=11
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (6.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture}
    \fi
    \ifnum\pgfmathresult=12
        \begin{tikzpicture}
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_lightgreen] (6.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [yellow!50!pink!95!] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (9.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture} 
    \fi
        \ifnum\pgfmathresult=13
         \begin{tikzpicture} 
            \fill [section_color] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_green] (3.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_red] (3.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_yellow] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture} 
    \fi
    \ifnum\pgfmathresult=14
        \begin{tikzpicture}
            \fill [grid_green] (.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (3.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_purple] (3.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (6.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_pink] (6.25pt,6.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_orange] (9.25pt,.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [section_color] (9.25pt,3.25pt) rectangle ++ (2.5pt,2.5pt);
            \fill [grid_blue] (9.25pt,9.25pt) rectangle ++ (2.5pt,2.5pt);
        \end{tikzpicture} 
    \fi
    \par
    }
}

\titleformat{\section}{\color{section_color}\scshape\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{16pt}{36pt}\selectfont\raggedright\uppercase}{\dynamicbullet}{-5pt}{}
    
\titleformat{\subsection}{\color{subsection_color}\scshape\fontspec[Path = ../fonts/JosefinSans/]{JosefinSans-Bold}\fontsize{12pt}{14pt}\selectfont\centering\uppercase}{}{0em}{}

%-----------%
%  SYMBOLS  % Defining symbols for legibility in monospace font instead of serif font
%-----------%

\def\Plus{\texttt{+}}
\def\Pound{\texttt{\#}}
\def\Minus{\texttt{-}}
\def\Dollar{\texttt{\$}}

\newenvironment{tightitemize}