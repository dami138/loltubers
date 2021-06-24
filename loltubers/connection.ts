import mysql from 'mysql2'

function connect() {
    try {
        const pool = mysql.createPool({
            host: 'localhost',
			user: 'root',
			password: 'damuchan',
			database: 'Loltubers_db',
			port: 3306,
        })

        return pool.promise()
    } catch (err) {
        console.log(err)
        return err
    }
}

const db = connect()
export default db