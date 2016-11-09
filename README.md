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

# Basic Template

A basic vapor template for starting a new Vapor web application. If you're using vapor toolbox, you can use: `vapor new --template=basic`

## 📖 Documentation

Visit the Vapor web framework's [documentation](http://docs.vapor.codes) for instructions on how to use this package.

## 💧 Community

Join the welcoming community of fellow Vapor developers in [slack](http://vapor.team).

## 🔧 Compatibility

This package has been tested on macOS and Ubuntu.
