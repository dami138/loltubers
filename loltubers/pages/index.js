
import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'

export default function Home() {
  return (
    <div className={styles.container}>
      <Head>
        <title>What is your next Champion</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={styles.main}>
        <h1 className={styles.title}>
          새로운 롤 챔피언을 탐색해보세요!
        </h1>
		<a>20191250 현소담</a>

        <div className={styles.grid}>
			
          <a href="/table" className={styles.card}>
            <h2>챔피언 탐색 &rarr;</h2>
            <p>나에게 맞는 롤 챔피언을 찾아보세요.</p>
          </a>

          <a href='/table2' className={styles.card}>
            <h2>유튜버 리스트 &rarr;</h2>
            <p>다양한 롤 유튜버들을 알아볼까요?</p>
          </a>
			
		 </div>
	  </main>        
    </div>
  )
}
