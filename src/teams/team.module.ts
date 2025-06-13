import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TeamDTO } from './team.entity';
import { TeamService } from './team.service';
import { TeamController } from './team.controller';

//Jest to struktura używana do organizowania aplikacji 
// w niezależne i logiczne jednostki

//Definiuje moduł TeamModule, który obsługuje drużyny. 
// ✔ Łączy Team z bazą danych (TypeOrmModule.forFeature). 
// ✔ Rejestruje TeamService jako dostawcę, który obsługuje logikę drużyn.
// ✔ Rejestruje TeamController, który obsługuje żądania HTTP. 
// ✔ Eksportuje TeamModule, aby można było go używać w aplikacji.

@Module({
    imports: [TypeOrmModule.forFeature([TeamDTO])],
    providers: [TeamService],
    controllers: [TeamController],
})
export class TeamModule {}