
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


INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) 
    VALUES (
        'William Tatcher',
        45,
        '2000-4-23'
        );

INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) 
    VALUES (
        'Maisy Smith',
        26,
        '2000-1-17'
        );

INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) 
    VALUES (
        'Stephanie Mendez',
        64,
        '1981-5-4'
        );

INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) 
    VALUES (
        'Jack Harkness',
        38,
        '2008-6-8'
        );



INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES (
        1,
        1
        );

INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES (
        1,
        3
        );

INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES (
        2,
        3
        );

INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES (
        2,
        4
        );




INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Agumon'),
        (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
        '2020-5-24'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Agumon'),
        (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
        '2020-7-22'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Gabumon'),
        (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
        '2021-2-2'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Pikachu'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2020-1-5'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Pikachu'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2020-3-8'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Pikachu'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2020-5-14'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Devimon'),
        (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
        '2021-5-4'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Charmander'),
        (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
        '2021-2-24'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Plantmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2019-12-21'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Plantmon'),
        (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
        '2020-8-10'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Plantmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2021-4-7'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Squirtle'),
        (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
        '2019-9-29'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Angemon'),
        (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
        '2020-10-3'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Angemon'),
        (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
        '2020-11-4'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Boarmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2019-1-24'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Boarmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2019-5-15'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Boarmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2020-2-27'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Boarmon'),
        (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
        '2020-8-3'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Blossom'),
        (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
        '2020-5-24'
        );

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES (
        (SELECT id FROM animals WHERE name = 'Blossom'),
        (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
        '2021-1-11'
        );