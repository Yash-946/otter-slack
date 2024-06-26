import { serve } from '@hono/node-server'
import { Hono } from 'hono'
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()
const app = new Hono()

app.get('/data', async (c) =>{
  const AllData = await prisma.meetings.findMany({});
  return c.json({AllData});
})

app.post('/', async (c)=>{
  const body = await c.req.json();
  console.log(body);
  
  const data = await prisma.meetings.create({
    data:{
      Meeting_Transcript: body.transcript
    }
  }) 
  return c.json({data});
})

app.get('/', (c) => {
  return c.text('Hello Hono!')
})

const port = 3000
console.log(`Server is running on port ${port}`)

serve({
  fetch: app.fetch,
  port
})
