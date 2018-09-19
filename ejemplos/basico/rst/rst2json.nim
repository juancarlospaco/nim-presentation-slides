import packages/docutils/rst, packages/docutils/rstast
var option: bool
echo renderRstToJson(rstParse("*Hello* **world**", "", 1, 1, option, {}))
