import { NestFactory } from '@nestjs/core'
import { AppModule } from './app.module'
import * as fs from 'fs'

async function bootstrap() {
    console.log('writing things..')
    fs.writeFileSync('/volume/web/output.log','hello')
    const app = await NestFactory.create(AppModule)
    await app.listen(3000)
}
bootstrap()
