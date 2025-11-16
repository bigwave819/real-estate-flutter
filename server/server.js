import express from 'express'
import dotenv from 'dotenv'
import mongoose from 'mongoose'
import authRoutes from './Routers/authRouters.js'
import cors from 'cors'

dotenv.config()

const PORT = process.env.PORT || 5000;
const app = express();

app.use(cors())
app.use(express.json());
app.use(authRoutes)

const DB = process.env.MONGO_DB || "mongodb://127.0.0.1:27017/estates"

mongoose
    .connect(DB)
    .then(() => {
        console.log('Connected to MongoDB successfully');
    })
    .catch((e) => {
        console.error('Database connection error:', e);
        process.exit(1);
    });




app.get('/', (req, res) => {
    res.json({ message: 'Server is running!' });
});


app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server running on port ${PORT}`);
});