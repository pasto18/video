-- Ejecutar una vez en Supabase → SQL Editor
create table if not exists items (
  id text primary key,
  position int not null default 0,
  done boolean not null default false,
  note text not null default ''
);
alter table items enable row level security;
create policy "items open" on items for all using (true) with check (true);

insert into storage.buckets (id, name, public) values ('stills', 'stills', true)
  on conflict (id) do nothing;
create policy "stills open" on storage.objects for all
  using (bucket_id = 'stills') with check (bucket_id = 'stills');
