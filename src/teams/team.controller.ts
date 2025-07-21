import { Controller, Get, NotFoundException, Query } from "@nestjs/common";
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
    @ApiOperation({ summary: 'Pobieranie drużyn wraz z opcjonalnym filtorwaniem po nazwie' })
    @ApiQuery({ name: 'name', required: false})
    @ApiQuery({ name: 'liga', required: false})
    @ApiQuery({ name: 'okreg', required: false})
    async getAllTeams(
      @Query('name') name?: string,
      @Query('liga') liga?: string,
      @Query('okreg') okreg?: string,
    ): Promise<TeamDTO[]> {
      //bardzo dokładne filtrowanie po trzech paramentrach
      if (name && liga && okreg){
        return this.teamService.filterByNameLigaOkreg(name, liga, okreg);
      }else if(name) {
        return this.teamService.findByName(name);
      }else if (liga && okreg) {
        return this.teamService.filterByLigaAndOkreg(liga, okreg);
      }else {
        return this.teamService.findAll();
      }
    }

    @Get('search')
    @ApiOperation({ summary: 'Szukaj drużyn po nazwie' })
    @ApiQuery({ name: 'name', required: true, description: 'Fragment nazwy drużyny' })
    async searchTeams(@Query('name') name: string): Promise<TeamDTO[]> {
      console.log('Szukana nazwa:', name);
      const teams = await this.teamService.findByName(name);

      if (!teams || teams.length === 0) {
        throw new NotFoundException('Nazwa klubu została niepoprawnie wpisana lub dany klub nie występuje na Dolnym Śląsku');
      }

      return teams;
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
   

    @Get('filter-extended')
    @ApiOperation({ summary: 'Filtruj drużyny po lidze, okręgu i grupie' })
    @ApiQuery({ name: 'liga', required: true })
    @ApiQuery({ name: 'okreg', required: true })
    @ApiQuery({ name: 'grupa', required: true })
    async filterTeamWithGroup(
      @Query('liga') liga: string,
      @Query('okreg') okreg: string,
      @Query('grupa') grupa: string
    ): Promise<TeamDTO[]> {
      return this.teamService.filterByLigaOkregGrupa(liga, okreg, grupa);
    }

}