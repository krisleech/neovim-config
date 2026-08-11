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
