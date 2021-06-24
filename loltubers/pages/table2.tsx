import { useState, useEffect } from 'react';
import axios from 'axios';

export default function table() {
	return (
		<div>
			<LoltuberHeader />
			<LoltuberTable />
		</div>
	)
}

const LoltuberHeader = () => {
	return (
		<div  className='tableC'>
			<div style={{"textAlign": "right"}} >
				<a href='/'>뒤로가기</a> 
			</div>
			<h1>롤 유튜버 소개</h1>
			<a>20191250 현소담</a>
		</div>
	)
}


const LoltuberTable = () => {
	const [units, setUnits] = useState([])
	
	const fetchLoltuber = async () => {
		try {
			const res = await axios.get('https://loltubers-vcgub.run.goorm.io/api/loltubers2')
			setUnits(res.data)
		} catch (err) {
			console.log(err)
		}
	}
	
	useEffect(() => {
		fetchLoltuber()
	}, [])
	
	return (
		<div className='tableC'>
			<table>
				<tr>
					<th colSpan="2" >유튜버</th> {/*열을 두개로 합치기*/}	
					<th>구독자 수</th>
					<th>주 챔피언</th>
					<th>소개</th>
				</tr>
				{units.map((unit, index) => 
					<tr key={index}>
						<td style={{"textAlign": "center"}}> <a href={unit.link}>{ unit.name && <img src={`https://loltubers-vcgub.run.goorm.io/img/${unit.id}.jpg`} className='thumbnail'/> }</a> </td> {/*a tag로 유튜브 바로가기 설정*/}	
						<td>{unit.name} </td>
						<td>{unit.subscribers}</td>
						<td>{unit.champ}</td>						   
						<td>{unit.description}</td>
					</tr>
				)}
			</table>
		</div>
	)
}