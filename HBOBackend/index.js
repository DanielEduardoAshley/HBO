const app = require('.app')
const port = port.env.PORT ||3005



app.listen((port,()=>{
    console.log(`Listening at port ${port}`)
}))