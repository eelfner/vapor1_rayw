# EjE from the Basic Template connect to postgres DB

This required database setup. See:

- Ray Wenderlich: https://videos.raywenderlich.com/screencasts/server-side-swift-with-vapor-configuring-a-database
- Additional steps
○ brew install postgres
○ (Start DB, In separate terminal) postgres -D /usr/local/var/postgres
○ (create postgres user) /usr/local/Cellar/postgresql/9.5.5/bin/createuser -s postgres
○ Now can reun pgAdmin3 and connect as postgres (also have eelfner as superuser)
○ (create DB eelfner) createdb `whoami`
○ Added Config/secrets/postgresql.json with connect info

For MySQL:
- Added VaporMySQL
- Use MySQL Workbench App
- create schema eelfner

