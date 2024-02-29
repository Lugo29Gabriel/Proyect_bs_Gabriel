CREATE TABLE boards (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

CREATE TABLE users (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    email VARCHAR(256) UNIQUE NOT NULL
);

CREATE TABLE board_users (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    isAdmin BOOLEAN DEFAULT false,
    boardId UUID REFERENCES boards(id) ON DELETE CASCADE ON UPDATE CASCADE,
    userId UUID REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE list (
    id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    boardId UUID REFERENCES boards(id) ON DELETE CASCADE ON UPDATE CASCADE

);


CREATE TABLE card (
    id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name character varying(256),
    description text,
    listId UUID REFERENCES list(id) ON DELETE CASCADE ON UPDATE CASCADE
    
);

CREATE TABLE carduser (
    id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    is_owner character varying(256),
    userId UUID REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    cardId UUID REFERENCES card(id) ON DELETE CASCADE ON UPDATE CASCADE
);





