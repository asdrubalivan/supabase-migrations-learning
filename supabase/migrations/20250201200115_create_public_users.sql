-- Create public users table
create table public.users (
  id uuid primary key,
  email text not null,
  created_at timestamptz default now()
);

comment on table public.users is 'Mirror of auth.users for application use';