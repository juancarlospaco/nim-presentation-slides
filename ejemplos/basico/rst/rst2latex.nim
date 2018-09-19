import packages/docutils/rstgen, packages/docutils/rst

var
  option: bool
  rst2latex: RstGenerator
  generatedHTML = ""

rst2latex.initRstGenerator(outLatex, defaultConfig(), "", {})
rst2latex.renderRstToOut(rstParse("*Hello* **world**", "", 1, 1, option, {}), generatedHTML)
echo generatedHTML
