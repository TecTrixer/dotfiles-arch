-- to use text from visual selection copied with '<TAB>'
local gv = function(args, parent)
  if (#parent.snippet.env.SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else  -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {
  s('texdoc', fmta(
    [[
      \documentclass[11pt]{article}
      \usepackage{enumerate}
      \usepackage{amsfonts}
      \usepackage{amsmath}
      \usepackage{hyperref}
      \usepackage{geometry}
      
      \geometry{
        a4paper,
        left=18mm,
        right=18mm,
        top=15mm,
      }

      \newcommand{\blankline}{\vspace{\baselineskip}\\}

      
      \begin{document}
      \title{<>}
      \author{<>}
      \date{<>}
      \maketitle

      \section*{<>}
      <>

      \end{document}
    ]],
    {i(1), i(2), i(3), i(4), i(0)}, nil)
   ),
  s('href', fmta(
    [[
      \href{<>}{<>}
    ]],
    {i(1, "url"), i(2, "placeholder")}, nil)
   ),
  s('bf', fmta(
    [[
      \textbf{<>}
    ]],
    {d(1, gv)}, nil)
   ),
  s('ul', fmta(
    [[
      \underline{<>}
    ]],
    {d(1, gv)}, nil)
   ),
  s('enum', fmta(
    [[
      \begin{enumerate}[<>]
      \item
      <>

      \end{enumerate}
    ]],
    {i(1), i(0)}, nil)
   ),
  s('item', fmta(
    [[
      \begin{itemize}
      \item
      <>

      \end{itemize}
    ]],
    {i(0)}, nil)
   ),
  s('sec', fmta(
    [[
      \section*{<>}
      <>
    ]],
    {i(1), i(0)}, nil)
   ),
  s('ssec', fmta(
    [[
      \subsection*{<>}
      <>
    ]],
    {i(1), i(0)}, nil)
   ),
  s('sssec', fmta(
    [[
      \subsubsection*{<>}
      <>
    ]],
    {i(1), i(0)}, nil)
   ),
  s('bg', fmta(
    [[
      \begin{<>}
      <>
      \end{<>}
    ]],
    {i(1), i(0), rep(1)}, nil)
   ),
  s('eq', fmta(
    [[
      \begin{equation}
      <>
      \end{equation}
    ]],
    {i(0)}, nil)
   ),
  s('align', fmta(
    [[
      \begin{align*}
      <>
      \end{align*}
    ]],
    {i(0)}, nil)
   ),
  s('ff', fmta(
    [[
      \frac{<>}{<>}
    ]],
    {i(1), i(2)}, nil)
   ),
   

  -- simple one liners
  s('it', t({'\\item', ''})),
  s('bl', t({'\\blankline', ''})),

  -- simple replacers
  s('la', t('\\langle')),
  s('ra', t('\\rangle')),
  s({trig='mbN', snippetType='autosnippet'}, t('\\mathbb{N}')),
  s({trig='mbZ', snippetType='autosnippet'}, t('\\mathbb{Z}')),
  s({trig='mbQ', snippetType='autosnippet'}, t('\\mathbb{Q}')),
  s({trig='mbR', snippetType='autosnippet'}, t('\\mathbb{R}')),
  s({trig='mbC', snippetType='autosnippet'}, t('\\mathbb{C}')),
  s({trig='<=>', snippetType='autosnippet'}, t('\\Leftrightarrow')),
  s({trig='=>', snippetType='autosnippet'}, t('\\Rightarrow')),
  s({trig='==>', snippetType='autosnippet'}, t('\\Longrightarrow')),
  s({trig='lor', snippetType='autosnippet'}, t('\\lor')),
  s({trig='land', snippetType='autosnippet'}, t('\\land')),
  s({trig='lxor', snippetType='autosnippet'}, t('\\lxor')),
}



