import { Entity, Column, PrimaryGeneratedColumn } from "typeorm";
import { ApiProperty } from '@nestjs/swagger';

@Entity('druzyny_dolny_slask')
export class TeamDTO {

    @PrimaryGeneratedColumn()
    @ApiProperty()
    id: number;

    @Column({ name: 'Nazwa', type: 'text' })
    @ApiProperty()
    Nazwa: string;

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
    @ApiProperty({ description: 'Rozegrane mecze' })
    rozegrane_mecze: number;

    @Column({ type: 'int', default: 0 })
    @ApiProperty({ description: 'Strzelone bramki' })
    strzelone_bramki: number;

    @Column({ type: 'int', default: 0 })
    @ApiProperty({ description: 'Stracone bramki' })
    stracone_bramki: number;

}
