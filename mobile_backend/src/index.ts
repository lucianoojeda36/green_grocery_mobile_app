import * as express from 'express'
import * as morgan from 'morgan';
import * as cors from 'cors';
import Connect from './database'
var { graphqlHTTP } = require('express-graphql');
import Schema from './graphql/schemas'


// INITIALIZATION
const app = express()
Connect()


// MIDELWARE
app.use(morgan('dev'))
app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }));

// CONFIGURATION
app.use('/graphql', graphqlHTTP({
  schema: Schema,
  graphiql: true,
  context: {
    messageId: 'test'
  }
}));


app.listen(3000,()=>{ console.log('conected on Port 3000')})