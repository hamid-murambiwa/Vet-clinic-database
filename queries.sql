
SELECT * from animals WHERE name = 'Luna';

SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals WHERE date_of_birth BETWEEN '2016-1-1' AND '2019-1-1';

SELECT name from animals WHERE neutered=true AND escape_attempts<3;

SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pickachu'; 

SELECT name,escape_attempts from animals WHERE weight_kg>10.5;

SELECT * from animals WHERE neutered=true;

SELECT * from animals WHERE NOT name='Gabumon';

SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;


BEGIN;

UPDATE animals SET species='unspecified';

ROLLBACK;


BEGIN;

UPDATE animals SET species='digimon' WHERE name LIKE '%mon';

UPDATE animals SET species='pokemon' WHERE species is NULL;

SELECT species from animals; -- verify that change was made

COMMIT;

SELECT species from animals; -- verify that change persists after commit


BEGIN;

DELETE FROM animals;

ROLLBACK;


BEGIN;

DELETE FROM animals WHERE date_of_birth >'2022-1-1';

SAVEPOINT remove_data;

UPDATE animals SET weight_kg= -1*weight_kg;

ROLLBACK TO remove_data;

UPDATE animals SET weight_kg= -1*weight_kg WHERE weight_kg < 0;

SELECT weight_kg from animals; -- verify that change was made

COMMIT;

SELECT species from animals; -- verify that change persists after commit


SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts=0;

SELECT ROUND(AVG(weight_kg)) FROM animals;

SELECT name, escape_attempts FROM animals WHERE escape_attempts =(SELECT MAX(escape_attempts) FROM animals);

SELECT MAX(weight_kg), MIN(weight_kg) FROM animals WHERE species LIKE '%mon%';

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-1-1' AND '2000-1-1' GROUP BY species;


SELECT animals.name FROM animals 
JOIN owners on animals.owners_id = owners.id WHERE owners.full_name = 'Melody Pond';

SELECT animals.name FROM animals 
JOIN species on animals.species_id = species.id WHERE species.name = 'Pokemon';

SELECT animals.name as animal_name, owners.fulL_name as owner_name from owners 
JOIN animals on owners.id = animals.owners_id;

SELECT COUNT(*), species.name from animals 
JOIN species ON species.id = animals.species_id GROUP BY species.name;

SELECT animals.name as animal_name, owners.full_name as owner_name, species.name as species_name from animals
JOIN species ON species.id = animals.species_id JOIN owners ON owners.id = animals.owners_id WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';

SELECT * from animals
JOIN owners ON animals.owners_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT owners.full_name, COUNT(animals.name) as num_animals from owners
LEFT JOIN animals ON owners.id = animals.owners_id GROUP BY owners.full_name ORDER BY num_animals DESC;