import json

let jotason = parse_json("""{ "foo": 1, "bar": [10, "apples"] }""")

echo jotason["foo"]
echo jotason["bar"]
