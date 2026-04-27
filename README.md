# PP Beamer Theme

A Beamer theme for the TU/e *Processing & Performance of 
Materials* group: dark-blue title with horizontal accent line,
P&P-of-materials logo top-right, TU/e logo
bottom-left.

## Files

- `beamerthemePP.sty` — the theme
- `main.tex` — example driver showing title page, bullets, columns,
  blocks, tables
- `pp_logo.pdf`, `tue_logo.pdf` — vector logos used by the theme
- `Makefile` — build helpers

## Usage

In your own `.tex`:

```latex
\documentclass[aspectratio=169]{beamer}
\usetheme{PP}
```

Drop `beamerthemePP.sty` and the two logo PDFs in the same folder
as your `.tex` (or anywhere on the `TEXINPUTS` path).

## Build

```sh
make            # builds main.pdf
make clean      # removes LaTeX build artefacts
make allclean   # also removes main.pdf
```

Or by hand:

```sh
pdflatex main.tex
pdflatex main.tex   # second pass for cross-references
```

## Customisation

Inside `beamerthemePP.sty`:

- Brand colours — `ppmblue` (`#0F367F`) and `ppmred` (`#C81919`),
  defined near the top.
- Logo position and size — the two `\node` calls inside
  `\setbeamertemplate{background}` (`xshift`, `yshift`, `height`).
- Accent line endpoints — the two `\draw` calls in the same
  template; both lines share `yshift=-1.20cm` (which equals the
  logo's bottom edge).
- Body-text top margin — `\vspace{0.45cm}` at the end of
  `\setbeamertemplate{frametitle}`.

If you reposition or resize the P&P logo, update the accent line's
`yshift` and the long line's right endpoint so the 1 cm gap before
the logo stays consistent.

## Fonts

Helvetica (`helvet`) is the default for portability. For a closer
match to TU/e branding, uncomment the `lato` or `sourcesanspro` line
at the top of the `.sty`.

