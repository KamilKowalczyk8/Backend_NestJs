import { Controller, Get, Query } from "@nestjs/common";
import { TeamService } from "./team.service";
import { TeamDTO } from "./team.entity";

import { ApiTags, ApiOperation, ApiQuery } from '@nestjs/swagger';

@ApiTags('teams') 
//definiuje kontroler w NestJS, 
// który obsługuje żądania HTTP dotyczące drużyn piłkarskich

//Importuje zależności (Controller, Get, TeamService, Team). 
// ✔ Definiuje kontroler TeamController, który obsługuje /teams. 
// ✔ Wstrzykuje serwis TeamService, aby pobierać drużyny. 
// ✔ Metoda getAllTeams() odpowiada na GET /teams i zwraca listę drużyn z bazy.
@Controller('teams')
export class TeamController {
    constructor(private readonly teamService: TeamService) {}
    

    @Get()
    @ApiOperation({ summary: 'Wypisywanie wszystkich drużyn ' })
    @ApiQuery({ name: 'name', required: false, description: 'wszystkie druzyny' })
    async getAllTeams(): Promise<TeamDTO[]> {
      return this.teamService.findAll();
    }

    @Get('search')
    @ApiOperation({ summary: 'Szukaj drużyn po nazwie' })
    @ApiQuery({ name: 'name', required: true, description: 'Fragment nazwy drużyny' })
    async searchTeams(@Query('name') name: string): Promise<TeamDTO[]> {
      console.log('Szukana nazwa:', name);
      return this.teamService.findByName(name);
    }


    //Pobiera parametry query (liga, okreg) z URL. 
    //Wywołuje serwis teamService.filterByLigaAndOkreg() w 
    //celu pobrania drużyn pasujących do kryteriów. 
    // Zwraca wynik jako listę drużyn (TeamDTO[]).
    @Get('filter')
    @ApiOperation({ summary: 'Filtruj drużyny po lidze i okręgu' })
    @ApiQuery({ name: 'liga', required: true })
    @ApiQuery({ name: 'okreg', required: true })
    async filterteam(@Query('liga') liga: string, @Query('okreg') okreg: string): Promise<TeamDTO[]>{
      return this.teamService.filterByLigaAndOkreg(liga, okreg);
    }
   
}