# Link & Video Previewer

- Supabase URL dan ANON_KEY disimpan di .env
- Seluruh scraping & render di frontend via AllOrigins CORS proxy
- Dukungan YouTube / Vimeo embed, video langsung HTML5, serta Open Graph preview card

## Konfigurasi Git (betzq)
- user.name: betzq
- user.email: x9xnobx.19@gmail.com

## Struktur
- .env → kredensial Supabase
- src/lib/supabase.js → client init
- src/index.html → aplikasi utama (standalone, React-like modular)
