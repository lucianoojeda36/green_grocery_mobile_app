import express from 'express';
import morgan from 'morgan';
import cors from 'cors';
import Connect from './database';
var { graphqlHTTP } = require('express-graphql');
// import Schema from './graphql/Schema'
// INITIALIZATION
const app = express();
Connect();
// MIDELWARE
app.use(morgan('dev'));
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// CONFIGURATION
app.use('/graphql', graphqlHTTP({
    // schema: Schema,
    graphiql: true,
    context: {
        messageId: 'test'
    }
}));
app;
