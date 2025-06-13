import { Module } from '@nestjs/common';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TeamDTO } from './teams/team.entity';
import { TeamService } from './teams/team.service';
import { TeamController } from './teams/team.controller';
//Ładuje zmienne środowiskowe (ConfigModule). 
// ✔ Łączy się z MySQL (TypeOrmModule.forRoot()). 
// ✔ Rejestruje encję Team w module (forFeature()). 
// ✔ Dodaje kontroler TeamController do obsługi żądań HTTP. 
// ✔ Dodaje serwis TeamService, który zarządza danymi drużyn.

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    TypeOrmModule.forRootAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (configService: ConfigService) => ({
        type: 'mysql',
        host: configService.get<string>('DB_HOST'),
        port: configService.get<number>('DB_PORT'),
        username: configService.get<string>('DB_USER'),
        password: configService.get<string>('DB_PASSWORD'),
        database: configService.get<string>('DB_NAME'),
        entities: [TeamDTO],
        synchronize: true,
      }),
    }),
    TypeOrmModule.forFeature([TeamDTO]),
  ],
  controllers: [TeamController],
  providers: [TeamService],
})
export class AppModule {}