return {
  s('for', fmta(
    [[
      for $% in $% {
          $%
      }
    ]],
    {i(1), i(2), i(3)}, { delimiters = "$%" })
   ),
  s('fn', fmta(
    [[
      fn $%($%) -> $% {
          $%
      }
    ]],
    {i(1), i(2), i(3), i(4)}, { delimiters = "$%" })
   ),
  s('match', fmta(
    [[
      match $% {
          $% => $%
      }
    ]],
    {i(1), i(2), i(3)}, { delimiters = "$%" })
   ),
  s('lt', fmta(
    [[
      let $%: $% = $%;
      $%
    ]],
    {i(1), i(2), i(3), i(4)}, { delimiters = "$%" })
   ),
  s('lm', fmta(
    [[
      let mut $%: $% = $%;
      $%
    ]],
    {i(1), i(2), i(3), i(4)}, { delimiters = "$%" })
   ),
}
