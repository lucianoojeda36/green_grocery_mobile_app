import Products from '../../models/products'



const Resolvers ={
  Query:{
    products: async () => {
      let data = await Products.find()
      return data
  },
  }

}

export default Resolvers