import { Controller, Post, Body, BadRequestException, ValidationPipe } from '@nestjs/common';
import { UserService } from '../services/user.service';
import * as bcrypt from 'bcrypt';
import { CreateUserDto } from 'src/user/validator/createUser.dto';
import { LoginDto } from 'src/user/validator/login.dto';
import { JwtService } from '@nestjs/jwt';



@Controller('user')
export class UserController {
  constructor(
    private userService: UserService,
    private jwtService: JwtService
    ) { }


  @Post('register')
  register(@Body(new ValidationPipe()) user: CreateUserDto) {
    const saltOrRounds = 12;
    return bcrypt.hash(user.password, saltOrRounds).then((hashedPassword) => {
      user.password = hashedPassword;
      return this.userService.createUser(user).then((user) => {
        return user;
      });
    }).catch((e) => {
      throw new BadRequestException(e.detail);
    });
  }


  checkForBodyFields(userName?: string, userPassword?: string) {
    if (userPassword == null || userName == null) {
      throw new BadRequestException('Missing Keys!');
    }
  }


  checkIfUserExists(user) {
    if (user == null || !user) {
      throw new BadRequestException('User does not Exist!');
    }
  }

  checkForUserPasswordMatch(user: LoginDto, inputPassword: string) {
    return bcrypt.compare(inputPassword, user.password.trim()).then((doesMatch) => {
      if (doesMatch == false) {
        throw new BadRequestException('Invalid Password');
      } else {
        //const jwt = this.jwtService({id: user.id})
        return user;
      }
    });
  }

  @Post('login')
  async login(@Body(new ValidationPipe()) login: LoginDto) {
    this.checkForBodyFields(login.username, login.password);
    return this.userService.findUser(login).then((user) => {
      this.checkIfUserExists(user);
      return this.checkForUserPasswordMatch(user, login.password);
    });
  }
}
