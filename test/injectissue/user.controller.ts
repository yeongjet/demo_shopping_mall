import { Controller, Param, Get, Post, Delete, Put } from '@nestjs/common'
import { User } from './user.interface'
import { IUserService } from './user-service.interface'

@Controller('users')
export class UsersController {
    constructor(private readonly usersService: IUserService) {}

    @Get()
    async findAll(): Promise<User[]> {
        return await this.usersService.findAll()
    }

    @Get(':id')
    async findOne(@Param() params): Promise<User> {
        return await this.usersService.findOne(params.id)
    }

    @Post()
    async create() {
        return await this.usersService.create()
    }

    @Put()
    async edit() {
        return await this.usersService.edit()
    }

    @Delete()
    async remove() {
        return await this.usersService.remove()
    }
}
