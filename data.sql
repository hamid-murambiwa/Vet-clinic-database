
INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Agumon',
        '2020-2-3',
        0,
        true,
        10.23
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Gabumon',
        '2018-11-15',
        2,
        true,
        8
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Pikachu',
        '2021-1-7',
        1,
        false,
        15.04
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Devimon',
        '2017-5-12',
        5,
        true,
        11
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Charmander',
        '2020-2-8',
        0,
        false,
        -11
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Plantmon',
        '2022-11-15',
        2,
        true,
        -5.7
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Squirtle',
        '1993-4-2',
        3,
        false,
        -12.13
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Angemon',
        '2005-6-12',
        1,
        true,
        -45
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Boarmon',
        '2005-6-7',
        7,
        true,
        20.4
        );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) 
    VALUES (
        'Blossom',
        '1998-10-13',
        3,
        true,
        17
        );


INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Sam Smith',
        34
        );

INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Jennifer Orwell',
        19
        );

INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Bob',
        45
        );

INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Melody Pond',
        77
        );

INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Dean Winchester',
        14
        );

INSERT INTO owners (
    full_name,
    age
    ) 
    VALUES (
        'Jodie Whittaker',
        38
        );


INSERT INTO species (
    name
    ) 
    VALUES (
        'Pokemon'
        );

INSERT INTO species (
    name
    ) 
    VALUES (
        'Digimon'
        );


ALTER TABLE animals
DROP FOREIGN KEY;

UPDATE animals SET species_id = 1;
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

ALTER TABLE animals
ADD CONSTRAINT fk_species
FOREIGN KEY(species_id) 
REFERENCES species(id);

UPDATE animals SET owners_id = 1 WHERE name = 'Agumon';

UPDATE animals SET owners_id = 2 WHERE name='Gabumon';
UPDATE animals SET owners_id = 2 WHERE name='Pikachu';

UPDATE animals SET owners_id = 3 WHERE name='Devimon';
UPDATE animals SET owners_id = 3 WHERE name='Plantmon';

UPDATE animals SET owners_id = 4 WHERE name='Charmander';
UPDATE animals SET owners_id = 4 WHERE name='Squirtle';
UPDATE animals SET owners_id = 4 WHERE name='Blossom';

UPDATE animals SET owners_id = 5 WHERE name='Angemon';       
UPDATE animals SET owners_id = 5 WHERE name='Boarmon';