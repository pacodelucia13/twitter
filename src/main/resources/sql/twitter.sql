CREATE TABLE users(
		id SERIAL UNIQUE NOT NULL, 
		username VARCHAR(255), 
		email VARCHAR(255),
		PRIMARY KEY(id)
);

CREATE TABLE followed(
		id SERIAL UNIQUE NOT NULL,
		id_user INTEGER REFERENCES users(id) ON DELETE CASCADE,
		id_followed INTEGER REFERENCES users(id),
		PRIMARY KEY(id)
		);

CREATE TABLE messages(
		id SERIAL UNIQUE NOT NULL,
		id_user INTEGER REFERENCES users(id) ON DELETE CASCADE,
		message VARCHAR(255),
		post_time DATE,
		PRIMARY KEY(id));		
		