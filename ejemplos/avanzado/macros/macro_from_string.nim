import macros

macro generate_hello(): typed =
  parseStmt """proc hello() = echo "hi" """

generate_hello()  # Generate a proc via Macros.
hello()
