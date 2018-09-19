import packages/docutils/rstgen, packages/docutils/rst

var
  option: bool
  rst2latex: RstGenerator
  latext = ""

rst2latex.initRstGenerator(outLatex, defaultConfig(), "", {})
rst2latex.renderRstToOut(rstParse("*Hello* **world**", "", 1, 1, option, {}), latext)
echo latext
