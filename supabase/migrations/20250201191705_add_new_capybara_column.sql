DO $$ 
BEGIN
    -- Check if the table exists
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name='capybara_table') THEN
        RAISE NOTICE 'Table capybara_table does not exist.';
    ELSE
        -- Check if the column exists in the table
        IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='capybara_table' AND column_name='new_capybara_column') THEN
            ALTER TABLE capybara_table
            ADD COLUMN new_capybara_column TEXT;
        END IF;
    END IF;
END $$;
