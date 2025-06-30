# file-covert-website
Rails website to convert files shortcuts

## Setup

### Environment Variables

1. Copy the sample environment file:
   ```bash
   cp .env.sample .env
   ```

2. Edit `.env` file and fill in your actual values:
   ```bash
   nano .env
   ```

3. Generate secret key base (if needed):
   ```bash
   docker-compose exec web rails secret
   ```

### Docker Setup

1. Build and start the application:
   ```bash
   docker-compose up --build
   ```

2. Setup database:
   ```bash
   docker-compose exec web rails db:create db:migrate
   ```
