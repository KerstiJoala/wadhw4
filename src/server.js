var express = require('express');
var app = express();

const Pool = require('pg').Pool
const pool = new Pool({
    user: 'wadhw4user',
    host: 'localhost',
    database: 'wadhw4',
    password: 'password',
    port: 6432,
});

// set the view engine to ejs
app.set('view engine', 'ejs');

// use res.render to load up an ejs view file

// index page
app.get('/', function (req, res) {
    queryFromDb();
    res.render('index');
});

// // about page
// app.get('/about', function(req, res) {
//     res.render('pages/about');
// });

app.listen(8080);
console.log('Server is listening on port 8080');


async function queryFromDb() {
    pool.query('SELECT * FROM posts;', (err, res) => {
        if (err) {
            console.error(err);
            return;
        }
        for (let row of res.rows) {
            console.log(row);
        }
    });
}