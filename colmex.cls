% ______________________________________________________________________________
%
% Proyecto:       Clase para Notas. 
%                 
% Nombre:         colmex.cls
%
% Autor:          Daniel Kelly
% Email:          djsanchez@colmex.mx
% 
% ______________________________________________________________________________

\LoadClass[12pt]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colmex}[2024/09/15 El Colegio de México]

% Required Packages
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage[utf8]{inputenc}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{multicol}
\RequirePackage{marginnote}
\RequirePackage{stackengine}
\RequirePackage{graphicx}
\RequirePackage{tcolorbox}
\RequirePackage{lipsum}
\RequirePackage{titlesec}
\RequirePackage{fncychap}
\RequirePackage{fancyhdr}
\RequirePackage{blindtext}
\RequirePackage{color}
\RequirePackage[T1]{fontenc}
\RequirePackage{caption}
\RequirePackage{titlesec}

% Uncoment this line if you want Times New Roman
%\RequirePackage{mathptmx}

% Default Settings
\textheight=22cm
\textwidth=17.5cm
\topmargin=-1cm
\oddsidemargin=-0.5cm
\setlength\parindent{0pt}

% ______________________________________________________________________________
% Conditional Definitions
\newif\ifeng
\newif\ifesp

% Language Options
\DeclareOption{eng}{
  \engtrue
}

\DeclareOption{esp}{
  \esptrue
}

% Apply Options
\ProcessOptions\relax

% Access Title, Author, Subtitle, Date, Institute
\def\title#1{\gdef\@title{#1}\gdef\THETITLE{#1}}
\def\author#1{\gdef\@author{#1}\gdef\THEAUTHOR{#1}}
\def\subtitle#1{\gdef\@subtitle{#1}\gdef\THESUBTITLE{#1}}
\def\date#1{\gdef\@date{#1}\gdef\THEDATE{#1}}
\def\institute#1{\gdef\@institute{#1}\gdef\THEINSTITUTE{#1}}
\def\mail#1{\gdef\@mail{#1}\gdef\THEMAIL{#1}}

% ______________________________________________________________________________
% Header and Footer Settings
\pagestyle{fancy}
\fancyhf{} 
\fancyhead[R]{\textbf{\leftmark}}
\fancyfoot[C]{\thepage}

\ifesp
\fancyhead[L]{\textbf{\THETITLE \hspace{0.05cm} - \THEINSTITUTE}}
\fi

\ifeng
\fancyhead[L]{\textbf{\THETITLE \hspace{0.05cm} - \THEINSTITUTE}}
\fi

\renewcommand{\chaptermark}[1]{%
  \markboth{\thechapter.\space#1}{}%
}

\newcommand{\hsp}{\hspace{10pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{gray75}{|}\hsp}{0pt}{\Huge\bfseries}


% ______________________________________________________________________________
% First Page and Contents:
\ifesp
\renewcommand{\contentsname}{Contenido}
\fi

\ifeng
\renewcommand{\contentsname}{Contents}
\fi

\ifesp
\renewcommand\maketitle{
\begin{titlepage}
\centering
{\bfseries\Large \THEINSTITUTE \par}
\vspace{6cm}
{\Huge \textbf{\THETITLE} \par}
\vspace{1cm}
{\Large \THESUBTITLE \par}
\vfill
{\large Por: \textbf{\THEAUTHOR} \par}
\vspace{0.25cm}
{\large \THEMAIL \par}
\vfill
{\Large \THEDATE \par}
\end{titlepage}
}
\fi

\ifeng
\renewcommand\maketitle{
\begin{titlepage}
\centering
{\bfseries\Large \THEINSTITUTE \par}
\vspace{6cm}
{\Huge \THETITLE \par}
\vspace{1cm}
{\Large \THESUBTITLE \par}
\vfill
{\large By: \textbf{\THEAUTHOR} \par}
\vspace{0.25cm}
{\large \THEMAIL \par}
\vfill
{\Large \THEDATE \par}
\end{titlepage}
}
\fi

% ______________________________________________________________________________
% Color Definitions
\definecolor{ejemplo}{RGB}{194, 31, 48}
\definecolor{definicion}{RGB}{21, 67, 174}
\definecolor{block}{HTML}{378518}
\definecolor{background}{RGB}{255, 255, 255}
\definecolor{azul}{HTML}{2264EA}
\definecolor{gray75}{gray}{0.75}

% ______________________________________________________________________________
% Environment Definitions
\tcbuselibrary{breakable}
\tcbuselibrary{skins,breakable}

\ifesp
% Spanish Environments
\newtcolorbox[auto counter,number within=chapter]{ejemplo}[2][]{colback=ejemplo!5!white,colframe=ejemplo!75!black,fonttitle=\bfseries, title=Ejemplo~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{definicion}[2][]{colback=definición!5!white,colframe=definicion!75!black,fonttitle=\bfseries, title=Definición~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{teorema}[2][]{colback=block!5!white,colframe=block!75!black,fonttitle=\bfseries, title=Teorema~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{supuesto}[2][]{colback=yellow!5!white,colframe=yellow!75!black,fonttitle=\bfseries, title=Supuesto~\thetcbcounter: #2,#1,breakable}

\newtcolorbox{demostracion}{colback=black!5!white, colframe=gray!75!black}

\renewcommand\proof[1]{
\begin{demostracion}
    \textbf{Demostración:} #1 \blacksquare
\end{demostracion}
}
\fi

\ifeng
% English Environments
\newtcolorbox[auto counter,number within=chapter]{ejemplo}[2][]{colback=ejemplo!5!white,colframe=ejemplo!75!black,fonttitle=\bfseries, title=Example~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{definicion}[2][]{colback=definición!5!white,colframe=definición!75!black,fonttitle=\bfseries, title=Definition~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{teorema}[2][]{colback=block!5!white,colframe=block!75!black,fonttitle=\bfseries, title=Theorem~\thetcbcounter: #2,#1,breakable}

\newtcolorbox[auto counter,number within=chapter]{supuesto}[2][]{colback=yellow!5!white,colframe=yellow!75!black,fonttitle=\bfseries, title=Supposition~\thetcbcounter: #2,#1,breakable}

\newtcolorbox{demostracion}{colback=black!5!white, colframe=gray!75!black}

\renewcommand\proof[1]{
\begin{demostracion}
    \textbf{Proof:} #1 \blacksquare
\end{demostracion}
}
\fi



% ______________________________________________________________________________
% New Commands

% Color Text
\newcommand\blue[1]{{\color{NavyBlue}{#1}}}
\newcommand\orange[1]{{\color{RedOrange}{#1}}}
\newcommand\green[1]{{\color{ForestGreen}{#1}}}

% Math Commands
\newcommand\pd[2]{\dfrac{\partial #1}{\partial #2}}
\newcommand\dsum[2]{\displaystyle\sum_{#1}^{#2}}
\newcommand\dprod[2]{\displaystyle\prod_{#1}^{#2}}
\newcommand\plim[1]{\text{plim}\left[#1\right]}
\newcommand\E[1]{\text{E}\left[#1\right]}
\newcommand\var[1]{\text{Var}\left[ #1 \right]}
\newcommand\eq[1]{\begin{equation} #1 \end{equation}}
\newcommand\un[2]{\underset{#2}{#1}}
\newcommand\mn[1]{\mathbf{#1}}

% Variable Commands
\newcommand\D[0]{\Delta}
\renewcommand{\d}[0]{\delta}
\renewcommand{\a}[0]{\alpha}
\renewcommand{\b}[0]{\beta}
\newcommand{\g}[0]{\gamma}
\newcommand{\G}[0]{\Gamma}
\renewcommand{\t}[0]{\theta}
\newcommand{\T}[0]{\Theta}
\renewcommand{\L}[0]{\mathcal{L}}
\renewcommand{\l}{\lambda}
\newcommand\R[0]{\mathbb{R}}

% Vectors and Matrices
\newcommand\X[0]{\mn{X}}
\newcommand\x[0]{\mn{x}}
\newcommand\Y[0]{\mn{Y}}
\newcommand\y[0]{\mn{y}}
\newcommand\Z[0]{\mn{Z}}
\newcommand\z[0]{\mn{z}}
\newcommand\W[0]{\mn{W}}
\newcommand\w[0]{\mn{w}}

% Parentheses and Brackets
\renewcommand{\(}[0]{\left(}
\renewcommand{\)}[0]{\right)}
\renewcommand{\[}[0]{\left[}
\renewcommand{\]}[0]{\right]}
\renewcommand{\{}[0]{\left\{}
\renewcommand{\}}[0]{\right\}}

% ______________________________________________________________________________
% Figuras

\ifesp
  \renewcommand{\figurename}{\textbf{Figura}}
  \renewcommand{\thefigure}{\textbf{\thechapter.\arabic{figure}}}
\fi

\ifeng
  \renewcommand{\figurename}{\textbf{Figure}}
  \renewcommand{\thefigure}{\textbf{\thechapter.\arabic{figure}}}
\fi

% Define a custom figure environment
\renewenvironment{figure}[1][h]
               {\@float{figure}[#1]\begin{center}}
               {\end{center}\end@float}

% Define figure notes environment
\ifesp
  \newenvironment{figurenotes}[1][Nota]{%
    \begin{minipage}[t]{0.75\textwidth}%
    \small\itshape\textbf{#1:} \hspace{0.5em}%
  }{%
    \end{minipage}%
  }
\fi

\ifeng
  \newenvironment{figurenotes}[1][Note]{%
    \begin{minipage}[t]{0.75\textwidth}%
    \small\itshape\textbf{#1:} \hspace{0.5em}%
  }{%
    \end{minipage}%
  }
\fi


% ______________________________________________________________________________
% Comands for Simplyfing Environments
\newcommand\ej[2]{
	\begin{ejemplo}{#1}
		#2
	\end{ejemplo}
}

\newcommand\defi[2]{
	\begin{definicion}{#1}
		#2
	\end{definicion}
}

\newcommand\teo[2]{
	\begin{teorema}{#1}
		#2
	\end{teorema}
}

\newcommand\supo[2]{
	\begin{supuesto}{#1}
		#2
	\end{supuesto}
}

\ifesp
\renewcommand\proof[1]{
	\begin{demostracion}
		\textbf{Demostración:} #1
	\end{demostracion}
}
\fi

\ifeng
\renewcommand\proof[1]{
	\begin{demostracion}
		\textbf{Proof:} #1
	\end{demostracion}
}





