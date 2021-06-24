//20191250 현소담
import type { NextApiRequest, NextApiResponse } from 'next'
import db from '../../connection'

export default async (req: NextApiRequest, res: NextApiResponse) => {
	try {
		const query: string = 'select LineUp.position, Champion.name as champ, Champion.role, Loltuber.thumbnail, Loltuber.name, Loltuber.description, Loltuber.link, Loltuber.id from LineUp left join Champion on (LineUp.Champion_id = Champion.id) left join Loltuber on (Champion.id = Loltuber.mostChamp_id);'
		
		const [ rows, fields ] = await db.execute(query)

		//console.log(rows)
		res.status(200).json(rows)
	} catch (err) {
		return res.status(500).json(err)
	}
}
