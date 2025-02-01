import os
from supabase import create_client, Client
from dotenv import load_dotenv

load_dotenv()

supabase: Client = create_client(
    os.getenv("SUPABASE_URL"),
    os.getenv("SUPABASE_KEY"),
)

def get_todos():
    return supabase.table("todos").select("*").execute()

def add_todo(task: str):
    return supabase.table("todos").insert({"task": task}).execute()

def complete_todo(todo_id: int):
    return supabase.table("todos").update({"is_complete": True}).eq("id", todo_id).execute()

if __name__ == "__main__":
    # Example usage
    print("Current todos:")
    print(get_todos().data)
    
    print("\nAdding new todo:")
    add_todo("Learn Python migrations")
    print(get_todos().data)
    
    print("\nCompleting todo:")
    complete_todo(1)
    print(get_todos().data)