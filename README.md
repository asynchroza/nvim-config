# Misho's Neovim Configuration

[Cheatsheet](./CHEATSHEET.md)

| Command         | Description                                              |
| --------------- | -------------------------------------------------------- |
| `<leader>f`     | Open telescope - find files                              |
| `<leader>s`     | Open telescope - grep for string                         |
| `<leader>rr`    | Grep first then open in telescope                        |
| `<leader>gt`    | Open telescope - help tags                               |
| `<leader>gb`    | Open telescope - git branches                            |
| `<leader>gb`    | Open telescope - git commits                             |
| `<leader>gs`    | Open telescope - treesitter symbols                      |
| `<leader>df`    | Open telescope - diff this                               |
| `<leader>gd`    | LSP - go to definition                                   |
| `K`             | LSP - hover                                              |
| `<leader>ca`    | LSP - code actions                                       |
| `<leader>gr`    | LSP - references                                         |
| `<leader>vrn`   | LSP - rename                                             |
| `<leader>[d`    | LSP - next diagnostic                                    |
| `<leader>]d`    | LSP - previous diagnostic                                |
| `<leader>ws`    | LSP - search for symbol in workspace                     |
| `<leader>e`     | Neotree - opn in float mode                              |
| `<leader><tab>` | Neotree - open to the left                               |
| `P`             | Neotree - preview file                                   |
| `<leader>hh`    | Harpoon - open UI                                        |
| `<leader>a`     | Harpoon - add mark                                       |
| `<leader>1`     | Harpoon - mark 1                                         |
| `<leader>2`     | Harpoon - mark 2                                         |
| `<leader>3`     | Harpoon - mark 3                                         |
| `<leader>4`     | Harpoon - mark 4                                         |
| `<C-[>`         | (TO BE FIXED - Not active) Harpoon - Go to previous mark |
| `<C-]>`         | (TO BE FIXED - Not active) Harpoon - Go to next mark     |
| `gc`            | Comment - Comment line or visually selected block        |
| `gb`            | Comment - Comment block                                  |
| `tt`            | Trouble - Toggle                                         |
| `tw`            | Trouble - Workspace Diagnostics                          |
| `td`            | Trouble - Document Diagnostics                           |
| `tf`            | Trouble - Quickfix (idk what this does)                  |
| `tl`            | Trouble - Loclist (idk what this does)                   |
| `tr`            | Trouble - LSP References                                 |

# Additional Commands

## NoNeckPain

`:NoNeckPain` - Place a buffer in the middle of the screen.
`:NoNeckPainResize` - Resize the buffer (arg INT).

## git

`:Git blame` - if you want to check difference between different commits.
`<leader>df` - if you want to check difference between current file and the last commit.

# Tips & Tricks

Pressing K once again in a hover window would lead to corresponding manpage (if any). [JavaScript manpages](https://github.com/mohd-akram/mdnpages).
