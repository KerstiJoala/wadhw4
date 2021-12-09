const Pool = require('pg').Pool
const pool = new Pool({
    user: 'wadhw4user',
    host: 'localhost',
    database: 'wadhw4',
    password: 'password',
    port: 6432,
});

module.exports = pool;
