import mongoose from 'mongoose';

const Connnect = async ()=>{
try {
  await mongoose.connect('mongodb://lucianoojeda:r7NFXHzcqYCNnS9B@greengrocery-shard-00-00.i8bz0.mongodb.net:27017,greengrocery-shard-00-01.i8bz0.mongodb.net:27017,greengrocery-shard-00-02.i8bz0.mongodb.net:27017/green_grocery?ssl=true&replicaSet=atlas-11dge7-shard-0&authSource=admin&retryWrites=true&w=majority')
  
  console.log('DATABASE IS CONECTED')
} catch (error) {
  console.log(error)  
}
}

export default Connnect;