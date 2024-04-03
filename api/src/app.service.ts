import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getWorking(): string {
    return 'Nest.js is working!';
  }
}
