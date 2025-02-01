-- Function to sync auth.users to public.users
create or replace function public.sync_auth_users()
returns trigger as $$
begin
  if (tg_op = 'INSERT') then
    insert into public.users (id, email, created_at)
    values (new.id, new.email, new.created_at);
  elsif (tg_op = 'UPDATE') then
    update public.users
    set email = new.email
    where id = new.id;
  elsif (tg_op = 'DELETE') then
    delete from public.users
    where id = old.id;
  end if;
  return null;
end;
$$ language plpgsql;

-- Create trigger
create trigger on_auth_user_created
after insert or update or delete on auth.users
for each row execute procedure public.sync_auth_users();