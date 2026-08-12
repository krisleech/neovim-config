# Common Keybindings

`<leader>` is `,`

## Buffer

| Key        | Action                      |
| ---------- | --------------------------- |
| `,bb`      | Switch to Other Buffer      |
| `,bd`      | Delete Buffer               |
| `,bD`      | Delete Buffer and Window    |
| `,bo`      | Delete Other Buffers        |
| `[b`       | Prev Buffer                 |
| `]b`       | Next Buffer                 |
| `Shift+H`  | Prev Buffer                 |
| `Shift+L`  | Next Buffer                 |
| `,,`       | Switch to Last Buffer       |
| `,d`       | Delete Buffer                |
| `,D`       | Delete All Buffers           |

## File / Find

| Key        | Action                |
| ---------- | --------------------- |
| `,f`       | File/Find group menu  |
| `,ff`      | Find Files (Root Dir) |
| `,fF`      | Find Files (cwd)      |
| `,fg`      | Find Files (git)      |
| `,fb`      | Buffers               |
| `,fc`      | Find Config File      |
| `,fe`      | Explorer NeoTree (Root Dir) |
| `,fE`      | Explorer NeoTree (cwd)      |
| `,fn`      | New File              |
| `,fr`      | Recent                |
| `,fR`      | Recent (cwd)          |
| `,fp`      | Projects              |
| `,ft`      | Terminal (Root Dir)   |
| `,fT`      | Terminal (cwd)        |
| `,fy`      | Yank History          |

## AI

| Key   | Action                                           |
| ----- | ------------------------------------------------ |
| `,ai` | Type current file and line in an iTerm LLM session |

## Testing

| Key   | Action                  |
| ----- | ----------------------- |
| `,tr` | Run nearest test        |
| `,tt` | Run file tests          |
| `,tT` | Run all test files      |
| `,tl` | Run last test           |
| `,ts` | Toggle test summary     |
| `,to` | Show test output        |
| `,tS` | Stop test               |

## Yank / Paste

| Key     | Action                             |
| ------- | ----------------------------------- |
| `y`     | Yank                                |
| `p`     | Put after cursor                    |
| `P`     | Put before cursor                   |
| `gp`    | Put after selection                 |
| `gP`    | Put before selection                |
| `<c-n>` | Cycle forward through yank history  |
| `<c-p>` | Cycle backward through yank history |

## Commenting

| Key        | Action                        |
| ---------- | ----------------------------- |
| `gcc`      | Toggle comment (current line) |
| `gc`       | Toggle comment (visual)       |

## LSP / Code Navigation

Requires an LSP server attached to the buffer. Each key also needs the server to
implement that method — if it doesn't, you get
`vim.lsp: method "..." is not supported`.

| Key     | Action               |
| ------- | -------------------- |
| `gd`    | Goto Definition      |
| `gD`    | Goto Declaration     |
| `gr`    | References (usages)  |
| `gI`    | Goto Implementation  |
| `gy`    | Goto Type Definition |
| `K`     | Hover docs           |
| `gK`    | Signature help       |
| `<c-o>` | Jump back            |
| `<c-i>` | Jump forward         |

### Ruby

`ruby-lsp` implements only `definition`, `references` and `hover`, so in Ruby
buffers just `gd`, `gr` and `K` work. `gD`, `gy` and `gI` will error — Ruby has no
declaration/definition split and no static types, so `gd` already covers
constants, methods and `require` paths.
