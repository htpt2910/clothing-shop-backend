# Clothing Shop Backend

Rails API backend for the clothing shopping web application.

## Tech Stack
- Ruby 3.4.5
- Rails (API mode)
- MySQL 8.0
- Docker & Docker Compose

## Getting Started

### Prerequisites
- Docker and Docker Compose installed on your machine

### Initial Setup

1. First, initialize the Rails project (if not already done):
```bash
docker run --rm -v $(pwd):/app -w /app ruby:3.4.5 bash -c "gem install rails && rails new . --api --database=mysql --skip-bundle --skip-git"
```

2. Configure the database connection in `config/database.yml`:
```yaml
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <%= ENV['DATABASE_USER'] %>
  password: <%= ENV['DATABASE_PASSWORD'] %>
  host: <%= ENV['DATABASE_HOST'] %>

development:
  <<: *default
  database: <%= ENV['DATABASE_NAME'] %>
```

3. Build and start the containers:
```bash
docker-compose up --build
```

4. Create the database (in a new terminal):
```bash
docker-compose exec web rails db:create
docker-compose exec web rails db:migrate
```

### Running the Application

Start all services:
```bash
docker-compose up
```

The API will be available at `http://localhost:4000`

### Common Commands

- Run Rails console:
```bash
docker-compose exec web rails console
```

- Run migrations:
```bash
docker-compose exec web rails db:migrate
```

- Run tests:
```bash
docker-compose exec web rails test
```

- View logs:
```bash
docker-compose logs -f web
```

### API Endpoints

The API will be structured under `/api/v1/` namespace. Endpoints will be added as features are developed.

## Development

- The application runs in development mode by default
- Code changes are automatically reloaded
- MySQL data is persisted in a Docker volume

## Stopping the Application

Stop all containers:
```bash
docker-compose down
```

Stop and remove volumes (this will delete the database):
```bash
docker-compose down -v
```