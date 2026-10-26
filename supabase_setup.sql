-- Jalankan ini di SQL Editor Supabase
CREATE TABLE IF NOT EXISTS links (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  url text NOT NULL,
  title text DEFAULT '',
  description text DEFAULT '',
  image text DEFAULT '',
  created_at timestamp with time zone DEFAULT now()
);

-- Izinkan akses publik (anon) untuk insert & select
ALTER TABLE links ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Allow anon insert" ON links FOR INSERT WITH CHECK (true);
CREATE POLICY "Allow anon select" ON links FOR SELECT USING (true);
CREATE POLICY "Allow anon delete" ON links FOR DELETE USING (true);

-- Tambah kolom jika tabel sudah ada
ALTER TABLE links ADD COLUMN IF NOT EXISTS title text DEFAULT '';
ALTER TABLE links ADD COLUMN IF NOT EXISTS description text DEFAULT '';
ALTER TABLE links ADD COLUMN IF NOT EXISTS image text DEFAULT '';
