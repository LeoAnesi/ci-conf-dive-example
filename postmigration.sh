# check if a file migration.js exists and if so delete file and then throw error

RED='\033[0;31m'

if [ -e *-migrations.js ]; then
    rm *-migrations.js
    echo "${RED}You forgot to give your migration file a name. Please run the command again with a --name flag."
    exit 1
fi

# Format migrations file to use es modules format

sed -i 's/const { MigrationInterface, QueryRunner } = require(\"typeorm\");/import typeorm from \"typeorm\";\n\nconst { MigrationInterface, QueryRunner } = typeorm;/g' migrations/*
sed -i 's/module.exports = class/export default class/g' migrations/*