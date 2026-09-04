# Base44 Dev Environment

## Project Overview
PHP + MySQL gaming/portal website (JONATAN777). Apache serves PHP files with mod_rewrite (.htaccess). No build step — PHP files are served directly, edits appear immediately on refresh.

## Architecture
- **web**: PHP 8.2 + Apache (built from `Dockerfile.base44`), source bind-mounted at `/var/www/html`, port 3000 → 80
- **db**: MySQL 8.0, database `jonatan777`
- **setup**: one-shot service that imports `DATABASE/jonatan777.sql` into the db on first boot

## Running
```
docker compose -f docker-compose.base44.yml up -d
```

## Key Config
- `mimintop/modul/koneksi.php` — DB connection via env vars (`DB_HOST`, `DB_USER`, `DB_PASS`, `DB_NAME`), website URL set to `/` (relative) so redirects work in the preview
- `.htaccess` — mod_rewrite rules routing clean URLs to `index.php?halaman=...`
- `mimintop/.htaccess` — same rules for the admin panel

## Login Credentials (from SQL seed data)
- Admin: `admin` / `admin` (at `/mimintop/`)
- User: `demo` / `demo` (at `/masuk`)

## Notes
- `DATABASE/jonatan777.sql` had a syntax typo on line 423 (`14[` → `14,`) — fixed
- The repo root directory has restrictive permissions (700); the web service `command` chmods it to 755 before starting Apache
- No external service credentials needed — all infrastructure runs locally in compose
