CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email TEXT NOT NULL,
    password TEXT NOT NULL,
    admin BOOLEAN DEFAULT FALSE,
    password_reset BOOLEAN DEFAULT TRUE
);

CREATE TABLE issues (
    id SERIAL PRIMARY KEY,
    subject TEXT NOT NULL,
    author INTEGER REFERENCES users ON DELETE CASCADE,
    date_discovered DATE NOT NULL,
    date_added DATE NOT NULL,
    lte BOOLEAN DEFAULT FALSE,
    summary TEXT NOT NULL
);

CREATE TABLE tickets (
    id SERIAL PRIMARY KEY,
    type TEXT NOT NULL,
    issue INTEGER REFERENCES issues ON DELETE CASCADE
);

CREATE TABLE contact (
    id SERIAL PRIMARY KEY,
    email TEXT NOT NULL,
    issue INTEGER REFERENCES issues ON DELETE CASCADE
)

