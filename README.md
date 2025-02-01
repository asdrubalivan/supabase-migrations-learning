
# Supabase Migrations Tutorial

A quick learning tutorial for understanding and working with Supabase migrations.

## Project Structure

```
supabase/
├── migrations/
│   ├── 20250201130106_create_todos_table.sql   # Creates initial todos table
│   ├── 20250201131103_add_due_date_column.sql  # Adds due_date column
│   └── 20250201140901_capybara.sql            # Creates capybara_table
├── seed.sql                                    # Initial seed data for todos
└── config.toml                                 # Supabase configuration
```

## Migrations Overview

This project demonstrates several key concepts of Supabase migrations:

1. **Creating Tables** - The initial migration creates a `todos` table with basic fields:
   - `id` (auto-incrementing primary key)
   - `task` (text)
   - `is_complete` (boolean)
   - `created_at` (timestamp)

2. **Altering Tables** - Shows how to modify existing tables by adding new columns:
   - Adding `due_date` to the todos table

3. **Complex Table Setup** - Demonstrates advanced table creation with:
   - Row Level Security (RLS)
   - Custom indexes
   - Granular permissions for different user roles

## Seed Data

The project includes sample seed data that populates the `todos` table with initial tasks:
- Learn Supabase migrations
- Build Python todo app
- Deploy to production

## Getting Started

1. Install the Supabase CLI
2. Initialize the project:
   ```bash
   supabase init
   ```

3. Start the local Supabase stack:
   ```bash
   supabase start
   ```

4. Apply migrations:
   ```bash
   supabase db reset
   ```

This will run all migrations and seed the database with initial data.

## Configuration

The project uses standard Supabase configuration in `config.toml`, including:
- API configuration (port 54321)
- Database configuration (port 54322)
- Authentication settings
- Storage settings
