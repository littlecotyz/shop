# Shop database

This project contains a small SQLite example database. `shop.sql` creates
customers, products, and orders tables, inserts sample data, and selects Ana's
orders with their totals.

## Run

With the SQLite command-line tool installed, run the script against a new
database file:

```sh
sqlite3 shop.db < shop.sql
```

The query results are printed to the terminal. The script creates the tables
and inserts the sample rows, so run it once with a new database file.
