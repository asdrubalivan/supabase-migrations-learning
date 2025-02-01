-- Remove old foreign key
alter table todos
drop column if exists user_id;

-- Add new foreign key
alter table todos
add column user_id uuid references public.users(id) on delete cascade;

-- Recreate index
create index idx_todos_public_user_id on todos(user_id);