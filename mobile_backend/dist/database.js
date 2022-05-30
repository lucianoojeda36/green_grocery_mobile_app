import mongoose from 'mongoose';
const Connnect = async () => {
    try {
        await mongoose.connect('mongodb://localhost:27017/restaurant_intern');
        console.log('DATABASE IS CONECTED ON PORT 27017');
    }
    catch (error) {
        console.log(error);
    }
};
export default Connnect;
