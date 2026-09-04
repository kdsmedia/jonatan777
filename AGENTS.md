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

## Bug Fixes Applied
- `daftar.php`: Fixed undefined constant `nama_website` → `$nama_website` (PHP 8 fatal error)
- `qris.php`: Fixed 5 JS syntax errors (`&anganese` → `&`, double commas in `padStart`, missing closing parens)
- `.htaccess`: Removed `RewriteRule ^masuk?$ masuk.php [L]` that bypassed `index.php` and caused undefined variable warnings
- `rekening.php`, `withdraw.php`: Added missing `exit;` after JS redirects (PHP was continuing with undefined variables)
- `withdraw.php`: Fixed `$_POST['jumlah_withdraw']` → `isset()` check (PHP 8 undefined array key)
- `mimintop/index.php`: Added `exit;` after all JS redirects (login, admin, dasbor); fixed stale meta description
- `index.php`: Added access control — user-only pages redirect to `/masuk` when not logged in
- `deposit.php`: Fixed redirect from `window.history.go(-2)` to proper login redirect
- `index.php`: Added missing route for `riwayat_transaksi` page
- Branding: Replaced all `PANDA138` → `JONATAN777` in `daftar.php`, `promosi.php`, `DATABASE/jonatan777.sql`
- `koneksi.php`: Made `$alamat_website`/`$alamat_website_admin` configurable via env vars (`ALAMAT_WEBSITE`, `ALAMAT_WEBSITE_ADMIN`)
- `.htaccess`: Added `DirectorySlash Off` to fix 301 redirects on `/games`, `/deposit`, `/withdraw` (directory names conflicting with URL routes)
- Removed dead code: `masukuser.php` (unreferenced duplicate of `masuk.php`), `info.php` (security risk — exposed phpinfo())

## Notes
- `DATABASE/jonatan777.sql` had a syntax typo on line 423 (`14[` → `14,`) — fixed
- The repo root directory has restrictive permissions (700); the web service `command` chmods it to 755 before starting Apache
- No external service credentials needed — all infrastructure runs locally in compose
- For production deployment: set `DB_HOST`, `DB_USER`, `DB_PASS`, `DB_NAME`, `ALAMAT_WEBSITE`, `ALAMAT_WEBSITE_ADMIN` env vars, or edit defaults in `mimintop/modul/koneksi.php`
