import { Module } from '@nestjs/common';
import { UserService } from './services/user.service';
import { UserController } from './controllers/UserController';
import { TypeOrmModule } from '@nestjs/typeorm';
import { UserEntity } from './models/user.entity';

@Module({
  imports: [
    TypeOrmModule.forFeature([UserEntity])
  ],
  controllers: [UserController],
  providers: [UserService],
})
export class UserModule {}
