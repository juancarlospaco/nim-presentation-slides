import packages/docutils/rstgen, packages/docutils/rst

var
  rst2latex: RstGenerator
  generatedHTML = ""
  option: bool

rst2latex.initRstGenerator(outLatex, defaultConfig(), "", {})
renderRstToOut(rst2latex, rstParse("*Hello* **world**", "", 1, 1, option, {}), generatedHTML)
echo generatedHTML
