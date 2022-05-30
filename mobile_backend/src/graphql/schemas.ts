import {makeExecutableSchema} from '@graphql-tools/schema';
import Resolvers from "./resolvers/resolvers";


const TypeDefs = `type Query{
 products:[product]
  
}
type product{
  _id: ID
  category:String
  description: String
  ingredients:[String]
  calories:[String]
  likes:Int
  comments:[String]
  retweets:Int
  score:Int
  image:[String]

}
type ingredient{
  _id: ID
  name:String
}
type calorie{
  _id: ID
  name:String
}
type comment{
  _id:ID
  title:String
}
type img{
  _Id:ID
  title:String
}

`

export default makeExecutableSchema({
  typeDefs: TypeDefs,
  resolvers: Resolvers
})