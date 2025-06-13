# Meczownik - Backend API

Backend aplikacji do zarządzania drużynami piłkarskimi, stworzony w NestJS z TypeORM i MySQL.

---

## Spis treści

- [Opis projektu](#opis-projektu)
- [Uruchomienie projektu](#uruchomienie-projektu)
- [API Endpoints](#api-endpoints)
  - [Pobierz wszystkie drużyny](#pobierz-wszystkie-drużyny)
  - [Wyszukaj drużyny po nazwie](#wyszukaj-drużyny-po-nazwie)
- [Dokumentacja Swagger](#dokumentacja-swagger)
- [Technologie](#technologie)
- [Kontakt](#kontakt)

---

## Opis projektu

Meczownik to backend aplikacji do zarządzania drużynami piłkarskimi i ich danymi.  
Backend został napisany w NestJS i wykorzystuje TypeORM do komunikacji z bazą MySQL.

---

## Uruchomienie projektu

1. Sklonuj repozytorium:

```bash
git clone <url-repozytorium>
cd <folder-projektu>


GET /teams


- **Opis:** Zwraca listę wszystkich drużyn z bazy danych.
- **Parametry:** Brak
- **Przykładowa odpowiedź:**

```json
[
  {
    "Id": 1,
    "nazwaDruzyny": "Śląsk Wrocław",
    "liga": "IV",
    "okreg": "Wrocław"
  },
  {
    "Id": 2,
    "nazwaDruzyny": "Górnik Wałbrzych",
    "liga": "Klasa A",
    "okreg": "Wałbrzych"
  }
]


GET /teams/search?name={nazwa}


GET /teams/search?name=śląsk


[
  {
    "Id": 1,
    "nazwaDruzyny": "Śląsk Wrocław",
    "liga": "IV",
    "okreg": "Wrocław"
  }
]


Dokumentacja Swagger


http://localhost:3000/api-docs


Technologie
NestJS — framework backendowy Node.js

TypeORM — ORM do zarządzania bazą danych

MySQL — relacyjna baza danych

Swagger (OpenAPI) — dokumentacja i testowanie API

