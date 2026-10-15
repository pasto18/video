-- Ejecutar una vez en Supabase → SQL Editor
create table if not exists items (
  id text primary key,
  position int not null default 0,
  done boolean not null default false,
  note text not null default '',
  tags jsonb not null default '[]'::jsonb
);
-- Si la tabla ya existía, basta con esto:
alter table items add column if not exists tags jsonb not null default '[]'::jsonb;
alter table items enable row level security;
drop policy if exists "items open" on items;
create policy "items open" on items for all using (true) with check (true);

insert into storage.buckets (id, name, public) values ('stills', 'stills', true)
  on conflict (id) do nothing;
drop policy if exists "stills open" on storage.objects;
create policy "stills open" on storage.objects for all
  using (bucket_id = 'stills') with check (bucket_id = 'stills');
