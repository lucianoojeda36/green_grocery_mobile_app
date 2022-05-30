import mongoose from 'mongoose';
const {Schema,model} = mongoose



const ProductsSchema = new Schema({
category:String,
description: String,
ingredients:[String],
calories:[String],
likes:Number,
comments:[String],
retweets:Number,
score:Number,
image:[String],
})


const Products = model('Products',ProductsSchema)

export default Products