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

## Git

Provided by `gitsigns.nvim` and the snacks.nvim git pickers (both LazyVim
defaults). `,gg` and `,gG` only exist if the `lazygit` binary is installed
(`brew install lazygit`).

| Key   | Action                    |
| ----- | ------------------------- |
| `,gg` | Lazygit (root dir)        |
| `,gG` | Lazygit (cwd)             |
| `,gb` | Git blame line            |
| `,gf` | Current file history      |
| `,gl` | Git log (root dir)        |
| `,gL` | Git log (cwd)             |
| `,gB` | Git browse (open in host) |
| `,gY` | Git browse (copy URL)     |

### Hunks

| Key       | Action                        |
| --------- | ----------------------------- |
| `]h`/`[h` | Next / prev hunk              |
| `]H`/`[H` | Last / first hunk             |
| `,ghs`    | Stage hunk (normal + visual)  |
| `,ghr`    | Reset hunk (normal + visual)  |
| `,ghu`    | Undo stage hunk               |
| `,ghS`    | Stage buffer                  |
| `,ghR`    | Reset buffer                  |
| `,ghp`    | Preview hunk inline           |
| `,ghb`    | Blame line (full)             |
| `,ghB`    | Blame buffer                  |
| `,ghd`    | Diff this                     |
| `,ghD`    | Diff this against `~`         |
| `ih`      | Hunk text object (e.g. `vih`) |

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

## Surround

Each key takes the surrounding character(s) as an argument, e.g. `gsr'"` turns
`'abc'` into `"abc"`.

| Key   | Action                            |
| ----- | --------------------------------- |
| `gsa` | Add surrounding (normal + visual) |
| `gsd` | Delete surrounding                |
| `gsr` | Replace surrounding               |
| `gsf` | Find surrounding (to the right)   |
| `gsF` | Find surrounding (to the left)    |
| `gsh` | Highlight surrounding             |

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
| `,ca`   | Code action          |
| `,cr`   | Rename symbol        |
| `,cR`   | Rename file          |

### Ruby

`ruby-lsp` does not advertise `declaration`, `typeDefinition` or
`implementation`, so `gD`, `gy` and `gI` will error in Ruby buffers. Ruby has no
declaration/definition split and no static types, so `gd` already covers
constants, methods and `require` paths. `gr` and `K` work as normal.

#### Refactoring

| Key   | Action                                    |
| ----- | ----------------------------------------- |
| `,cr` | Rename constant (classes, modules, consts) |
| `,ca` | Extract / attribute code actions           |
| `,sr` | Project-wide find & replace (grug-far)     |

`,cr` only renames **constants** — `ruby-lsp` matches just constant nodes, so
putting the cursor on a method name does nothing. When it does fire it updates
every reference in the workspace and renames the defining file plus its test
file to match, and it refuses if the new name is already taken.

`,ca` offers, depending on cursor/selection:

- Refactor: Extract Variable
- Refactor: Extract Method
- Refactor: Toggle block style (`{ }` ↔ `do end`)
- Create `attr_reader` / `attr_writer` / `attr_accessor` (on an ivar)

For **renaming a method** there is no Ruby-aware tool — dynamic dispatch makes
it undecidable in general, which is why `ruby-lsp` limits rename to constants.
Use `gr` to review the call sites, then `,sr` (grug-far) with a word-boundary
pattern like `\bold_name\b` and check the preview before applying.

If the project has Sorbet, `ruby-lsp` disables `rename`, `references` and
workspace symbols entirely and defers to the type checker.
