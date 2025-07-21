import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";
import { ApiProperty } from '@nestjs/swagger';

// Encja Team reprezentuje tabelę druzyny_dolny_slask w MySQL.

@Entity('druzyny_dolny_slask')
export class TeamDTO {

    @PrimaryGeneratedColumn()
    @ApiProperty()
    Id: number;

    @Column({ name: 'Nazwa', type: 'text' })
    @ApiProperty()
    nazwaDruzyny: string;

    @Column({
        type: 'enum',
        enum: ['Ekstraklasa', 'Okręgówka', 'IV', 'Klasa A', 'Klasa B'],
    })
    @ApiProperty({ enum: ['Ekstraklasa', 'Okręgówka', 'IV', 'Klasa A', 'Klasa B'] })
    liga: string;

    @Column({
        type: 'enum',
        enum: ['Wałbrzych', 'Wrocław', 'Jelenia Góra', 'Legnica'],
        nullable: true,
    })
    @ApiProperty({ enum: ['Wałbrzych', 'Wrocław', 'Jelenia Góra', 'Legnica'], nullable: true })
    okreg: string;

    @Column({ type: 'varchar', length: 20, nullable: true })
    @ApiProperty({ description: 'Grupa ligi (np. Gr. 1, Gr. 2)' })
    grupa?: string;

    @Column({ type: 'int', default: 0 })
    @ApiProperty({ description: 'Punkty drużyny' })
    punkty: number;

    @Column({ type: 'int', default: 0 })
    @ApiProperty({ description: 'Różnica bramek' })
    roznica: number;

}
