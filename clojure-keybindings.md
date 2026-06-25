# Clojure Keybindings

`<localleader>` is `,`

## Evaluation (Conjure)

| Key   | Action                     |
| ----- | -------------------------- |
| `,ee` | Eval inner form            |
| `,er` | Eval root (outermost) form |
| `,e!` | Eval and replace with result |
| `,ew` | Eval word under cursor     |
| `,ef` | Eval file                  |
| `,eb` | Eval buffer                |
| `,E`  | Eval visual selection      |
| `,ei` | Interrupt evaluation       |

## REPL Log (Conjure)

| Key   | Action                      |
| ----- | --------------------------- |
| `,ls` | Open log in horizontal split |
| `,lv` | Open log in vertical split  |
| `,lq` | Close log                   |
| `,lr` | Reset/clear log             |

## Documentation

| Key   | Action                          |
| ----- | ------------------------------- |
| `K`   | Doc for word under cursor (LSP) |
| `gd`  | Go to definition (LSP)          |
| `,K`  | Doc for word under cursor (Conjure) |
| `,gd` | Go to definition (Conjure)      |

## Tests (Conjure)

| Key   | Action                     |
| ----- | -------------------------- |
| `,tt` | Run test under cursor      |
| `,ta` | Run all tests in namespace |

## Structural Editing (paredit)

| Key   | Action               |
| ----- | -------------------- |
| `>)`  | Slurp forward        |
| `>(`  | Barf forward         |
| `<)`  | Slurp backward       |
| `<(`  | Barf backward        |
| `>e`  | Drag element forward |
| `<e`  | Drag element backward |
| `>f`  | Drag form forward    |
| `<f`  | Drag form backward   |
| `,o`  | Raise form           |
| `,O`  | Raise element        |

## Navigation (paredit)

| Key  | Action                 |
| ---- | ---------------------- |
| `W`  | Next element start     |
| `E`  | Next element end       |
| `B`  | Previous element start |
| `ge` | Previous element end   |

## Refresh Namespaces (Conjure)

| Key   | Action                     |
| ----- | -------------------------- |
| `,rr` | Refresh changed namespaces |
| `,ra` | Refresh all namespaces     |
