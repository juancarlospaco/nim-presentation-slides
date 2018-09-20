## This simple script walks the sub-folders, collects all ``readme.rst`` files,
## and generates 1 HTML Index page for all the examples.
import ospaths, os, strutils, strformat, packages/docutils/rstgen, strtabs

const html_template = staticRead("template.html")

proc main(): string =
  result = html_template
  var rst_content, html_content, titl, lvl: string
  for it in walkDirRec(getCurrentDir()):
    if it.endsWith("README.rst"):
      rst_content = readFile(it).strip
      if rst_content.countLines >= 1:
        echo it
        lvl = if it.contains("/basico/"): "Easy" else: "Hard"
        html_content = rstToHtml(rst_content, {}, newStringTable(modeStyleInsensitive))
        titl = it.replace("/README.rst").splitPath().tail.replace("_", " ").capitalizeAscii
        result &= fmt"""<br><details title="{titl}"><summary>{titl}</summary>
        {html_content} <br><br> <b>Folder:</b>
        <input type="text" value="./{it.replace("/README.rst").splitPath().tail}/" readonly/>
        <b>Level:</b><i>{lvl}</i> </details>"""
      else:
        echo "File is Empty: " & it
  writeFile("index.html", result)

when is_main_module:
  discard main()
