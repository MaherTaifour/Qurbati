import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('user')
export class UserEntity {
    @PrimaryGeneratedColumn()
    id: number;
  
    @Column({ unique: true , type: "varchar", length: 20})
    username: string;
  
    @Column({type: "varchar"})
    password: string;

    @Column({default: '', type: "varchar", length: 20})
    firstname: string;

    @Column({default: '', type: "varchar", length: 20})
    lastname: string;

    @Column({unique: true , type: "varchar"})
    email: string;

    @Column({ default: 0})
    points: number;
}