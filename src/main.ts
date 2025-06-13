import * as crypto from 'crypto'; 
(global as any).crypto = crypto;  

import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { writeFileSync } from 'fs';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

 const config = new DocumentBuilder()
    .setTitle('Meczownik API')
    .setDescription('API do zarządzania drużynami i meczami')
    .setVersion('1.0')
    .build();

  // Tworzenie dokumentacji Swaggera
  const document = SwaggerModule.createDocument(app, config);

  // Udostępnienie UI Swaggera pod ścieżką /api-docs
  SwaggerModule.setup('api-docs', app, document);
  writeFileSync('./swagger-spec.json', JSON.stringify(document));

  await app.listen(process.env.PORT || 3000, '0.0.0.0');
}
bootstrap();