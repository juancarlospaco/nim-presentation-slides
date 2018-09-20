import db_sqlite
var db = open(":memory:", "", "", "")
echo db.getAllRows(sql"Drop table if exists ExampleTable")
db.close()
