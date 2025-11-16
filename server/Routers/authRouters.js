import express from 'express'
import User from '../models/userModel.js'
import bcryptjs from 'bcryptjs'
import jwt from 'jsonwebtoken'


const router = express.Router()

router.post('/api/signup', async (req, res) => {
    try {
        const { name, email, password } = req.body;

        if (!name || !email || !password) {
            return res.status(400).json({ message: 'all fields are required' })
        }

        const existingUser = await User.findOne({ email })

        if (existingUser) {
            return res.status(400).json({ message: 'the user already exists' })
        }

        const hashedPassword = await bcryptjs.hash(password, 10);

        let user = new User({
            email,
            password: hashedPassword,
            name,
        })

        user = await user.save();

        res.json(user)
    } catch (error) {
        console.log(error);
        return resizeBy.status(500).json({
            message: 'server error' + error
        })
    }
})

router.post('/api/signin', async (req, res) => {
    try {
        const { email, password } = req.body;

        if (!email || !password) {
            return res.status(400).json({ message: 'all fields are required' })
        }

        const user = await User.findOne({ email })

        if (!user) {
            return res.status(400).json({ message: 'invalid no such user here' })
        }

        const isMatch = await bcryptjs.compare(password, user.password);

        if (!isMatch) {
            return res.status(400).json({ message: 'invalid email or password' })
        }

        const token = jwt.sign({ id: user._id }, 'passwordKey');

        res.json({token, ...user._doc})
    } catch (error) {
        console.log(error);
        return resizeBy.status(500).json({
            message: 'server error' + error
        })
    }
})

export default router