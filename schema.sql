CREATE TABLE IF NOT EXISTS employees (

    employee_id TEXT PRIMARY KEY,

    name TEXT NOT NULL,

    credential_id TEXT NOT NULL UNIQUE,

    public_key TEXT NOT NULL,

    counter INTEGER NOT NULL DEFAULT 0,

    transports TEXT NOT NULL DEFAULT '[]',

    created_at TEXT NOT NULL

);


CREATE TABLE IF NOT EXISTS challenges (

    employee_id TEXT NOT NULL,

    type TEXT NOT NULL,

    challenge TEXT NOT NULL,

    expires_at INTEGER NOT NULL,

    PRIMARY KEY (
        employee_id,
        type
    )

);