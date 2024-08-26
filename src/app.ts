import express from 'express'
import type { Request, Response } from 'express'

const PORT = 3000

const app = express()

app.get('/', (request: Request, response: Response) => {
  response.status(200).send('Hello World!')
})

app.listen(PORT, () => {
  console.log('Listening on port', PORT)
})
