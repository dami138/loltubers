//20191250 현소담
import type { NextApiRequest, NextApiResponse } from 'next'
import db from '../../connection'

export default async (req: NextApiRequest, res: NextApiResponse) => {
	try {
		const query: string = 'select Champion.name as champ, Loltuber.thumbnail, Loltuber.name, Loltuber.subscribers, Loltuber.description, Loltuber.link, Loltuber.id from Loltuber left join Champion on (Loltuber.mostChamp_id = Champion.id);'
		
		const [ rows, fields ] = await db.execute(query)

		//console.log(rows)
		res.status(200).json(rows)
	} catch (err) {
		return res.status(500).json(err)
	}
}