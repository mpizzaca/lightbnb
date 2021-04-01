const { Pool } = require('pg');

// setup node-postgres connection
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

module.exports = {
  query: (queryString, queryParams) => {
    return pool.query(queryString, queryParams);
  }
}