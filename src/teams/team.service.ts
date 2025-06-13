import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { TeamDTO } from './team.entity';
import { Repository } from 'typeorm';

//Ten plik definiuje serwis w NestJS,
//który zarządza danymi drużyn piłkarskich
//i komunikuje się z bazą danych

//Serwis TeamService zarządza danymi drużyn. 
// ✔ Używa InjectRepository(Team), aby połączyć się z bazą danych. 
// ✔ Metoda findAll() pobiera wszystkie drużyny z tabeli. 
// ✔ Możemy używać tego serwisu w kontrolerze, 
// aby udostępniać dane przez API.

@Injectable()
export class TeamService {
    constructor(
        @InjectRepository(TeamDTO)
        private readonly teamRepository: Repository<TeamDTO>,
    ) {}

    async findAll(): Promise<TeamDTO[]> {
        return this.teamRepository.find();
    }

    async findByName(name:string): Promise<TeamDTO[]>{
        return this.teamRepository
            .createQueryBuilder('team')
            .where('LOWER(team.nazwaDruzyny) LIKE LOWER(:name)', { name: `%${name}%`})
            .getMany();
    }

}
