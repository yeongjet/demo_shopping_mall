setInterval(()=>{
    console.log(`hello pm2`)
    console.log(process.env.NODE_ENV)
    console.log(process.argv)
},2000)