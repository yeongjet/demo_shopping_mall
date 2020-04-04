import { NestFactory } from '@nestjs/core'
import { AppModule } from './app.module'
import * as fs from 'fs'

(async ()=>{
    console.log('injectissue..')
    const app = await NestFactory.create(AppModule)
    await app.listen(3000)
})()
