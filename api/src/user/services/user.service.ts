import { Injectable } from '@nestjs/common';
import { Repository } from 'typeorm';
import { UserEntity } from '../models/user.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { Observable, from } from 'rxjs';
import { CreateUserDto } from 'src/user/validator/createUser.dto';
import { LoginDto } from 'src/user/validator/login.dto';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(UserEntity)
    private readonly  accountUserRepository: Repository<UserEntity>
  ) {}

  createUser(user: CreateUserDto): Promise<CreateUserDto>{
    return this.accountUserRepository.save(user);
  }

  findUser(login: LoginDto): Promise<LoginDto>{
    return this.accountUserRepository.findOneBy({username: login.username});
  }

}
