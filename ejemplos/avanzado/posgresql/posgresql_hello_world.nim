import db_postgres
let db = open("localhost", "user", "password", "dbname")
echo db.getAllRows(sql"SELECT ?::text as message", "Hello world")
db.close()
