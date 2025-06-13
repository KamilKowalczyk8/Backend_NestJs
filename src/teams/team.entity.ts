import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";
import { ApiProperty } from '@nestjs/swagger';
//Ten plik definiuje encję w TypeORM,
//czyli obiekt reprezentujący tabelę w bazie danych MySQL

//Encja Team reprezentuje tabelę druzyny_dolny_slask w MySQL.
//  ✔ Id → klucz główny (PRIMARY KEY).
//  ✔ nazwaDruzyny → nazwa drużyny (TEXT).
//  ✔ liga → określa poziom rozgrywek (ENUM).
//  ✔ okreg → określa region (ENUM), może być NULL

@Entity('druzyny_dolny_slask')
export class TeamDTO {

     
    @PrimaryGeneratedColumn()
    @ApiProperty()
    Id: number;


    @Column({ name: 'Nazwa', type: 'text' })
    @ApiProperty()
    nazwaDruzyny: string;

    @Column({ type: 'enum', enum: ['Okręgówka', 'IV', 'Klasa A', 'Klasa B'] })
    @ApiProperty()
    liga: string;

    @Column({ type: 'enum', enum: ['Wałbrzych', 'Wrocław', 'Jelenia Góra', 'Legnica'], nullable: true})
    @ApiProperty()
    okreg: string;
}