import { IsString, IsNotEmpty, IsEmail, MinLength, IsOptional, IsNumber, Matches } from 'class-validator';

export class CreateUserDto {
    @IsString()
    @IsNotEmpty()
    username: string;

    @IsString()
    @IsNotEmpty()
    @MinLength(6)
    @Matches(/^(?=.*[A-Z])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]+$/, { message: 'Password must contain at least one capital letter and one special character' })
    password: string;

    @IsEmail()
    @IsNotEmpty()
    email: string;

    @IsOptional()
    @IsString()
    firstname?: string;

    @IsOptional()
    @IsString()
    lastname?: string;

    @IsOptional()
    @IsNumber()
    points?: number;
}
