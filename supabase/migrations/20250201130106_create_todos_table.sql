create table if not exists todos (
  id bigint primary key generated always as identity,
  task text not null,
  is_complete boolean default false,
  created_at timestamptz default now()
);