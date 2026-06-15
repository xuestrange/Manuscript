# Manuscript Template

A lightweight LaTeX template for drafting academic manuscripts. It provides a
custom `manuscript` document class with common research-paper defaults, including
double spacing, 1-inch margins, APA-style references, author handling, figures,
tables, algorithms, math packages, hyperlinks, and clever cross-references.
## Preview
![Preview](https://raw.githubusercontent.com/xuestrange/picGoUploader/main/img/Screenshot%202026-06-15%20at%2013-07-08.png)

## File Structure

- `main.tex` - main manuscript source and example content.
- `manuscript.cls` - custom document class and layout settings.
- `ref.bib` - BibLaTeX bibliography database.
- `figure/` - place figures and plots here.
- `table/` - place table inputs or exported table files here.

## Core Usage

Edit `main.tex` to write the paper:

Use `anonymous`  mode to hide author information for review:
```tex
\documentclass[anonymous]{manuscript}
```

Use the normal class mode to show authors:
```tex
\documentclass{manuscript}
```

Add citations to `ref.bib`, then cite them with the included natbib-compatible
BibLaTeX commands:

```tex
\citet{key}
\citep{key}
```

Reference figures, tables, sections, and equations with `cleveref`:

```tex
\Cref{fig:example}
```

## Advantages

- Ready for manuscript drafting with sensible defaults for spacing, margins, page
  numbers, references, figures, tables, math, and algorithms.
- Anonymous-review support is built into the document class, so switching between
  review and author-visible versions only requires changing the class option.
- Author metadata is concise and consistent through the `\Author{name}{affiliation}{email}`
  command.
- APA-style bibliography support is already configured with `biblatex`, `biber`,
  and natbib-compatible citation commands.
- Cross-references use `cleveref`, giving readable labels such as "Figure",
  "Section", and "Equation" automatically.
- Build outputs are kept in `build/`, keeping the source directory easy to scan.
