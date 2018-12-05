#Практика
#1
#step one
 
CREATE SCHEMA `cities_and_countries` DEFAULT CHARACTER SET utf8 ;


#step two

CREATE TABLE `cities_and_countries`.`cities` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_city` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `cities_and_countries`.`countries` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_city` INT UNSIGNED NOT NULL,
  `name_countries` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));


#step four

ALTER TABLE `cities_and_countries`.`countries` 
ADD INDEX `fk_countries_1_idx` (`id_city` ASC);
ALTER TABLE `cities_and_countries`.`countries` 
ADD CONSTRAINT `fk_countries_1`
  FOREIGN KEY (`id_city`)
  REFERENCES `cities_and_countries`.`cities` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#step five

SELECT * FROM cities_and_countries.cities JOIN cities_and_countries.countries
ON (countries.id_city=cities.id)
;


#2
#step one
CREATE SCHEMA `workers_and_salaries` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `workers_and_salaries`.`workers` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_workers` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `workers_and_salaries`.`salaries` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_workers` INT UNSIGNED NOT NULL,
  `salary` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step four

ALTER TABLE `workers_and_salaries`.`salaries` 
ADD INDEX `fk_salaries_1_idx` (`id_workers` ASC);
ALTER TABLE `workers_and_salaries`.`salaries` 
ADD CONSTRAINT `fk_salaries_1`
  FOREIGN KEY (`id_workers`)
  REFERENCES `workers_and_salaries`.`workers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#step five

SELECT * FROM workers_and_salaries.workers JOIN workers_and_salaries.salaries
ON (salaries.id_workers=workers.id)
;


#3
#step one

CREATE SCHEMA `artists_and_songs` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `artists_and_songs`.`artists` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_artists` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `artists_and_songs`.`songs` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_artists` INT UNSIGNED NOT NULL,
  `name_song` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));


#step four

ALTER TABLE `artists_and_songs`.`songs` 
ADD INDEX `fk_songs_1_idx` (`id_artists` ASC);
ALTER TABLE `artists_and_songs`.`songs` 
ADD CONSTRAINT `fk_songs_1`
  FOREIGN KEY (`id_artists`)
  REFERENCES `artists_and_songs`.`artists` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


#step five

SELECT * FROM artists_and_songs.artists JOIN artists_and_songs.songs
ON (songs.id_artists=artists.id)
;


#4
#step one

CREATE SCHEMA `staff_and_otdls` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `staff_and_otdls`.`staff` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `staffcol` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `staff_and_otdls`.`departments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_staff` INT UNSIGNED NOT NULL,
  `depart` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`));


#step four

ALTER TABLE `staff_and_otdls`.`departments` 
ADD INDEX `fk_departments_1_idx` (`id_staff` ASC);
ALTER TABLE `staff_and_otdls`.`departments` 
ADD CONSTRAINT `fk_departments_1`
  FOREIGN KEY (`id_staff`)
  REFERENCES `staff_and_otdls`.`staff` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


#step five

SELECT * FROM staff_and_otdls.staff JOIN staff_and_otdls.departments
ON (departments.id_staff=staff.id)
;


#Home Work
#1
#step one

CREATE SCHEMA `mark_and_model` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `mark_and_model`.`mark` (
  `idmark` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_mark` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmark`));

#step three

CREATE TABLE `mark_and_model`.`model` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_mark` INT UNSIGNED NOT NULL,
  `name_model` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step four

ALTER TABLE `mark_and_model`.`model` 
ADD INDEX `fk_model_1_idx` (`id_mark` ASC);
ALTER TABLE `mark_and_model`.`model` 
ADD CONSTRAINT `fk_model_1`
  FOREIGN KEY (`id_mark`)
  REFERENCES `mark_and_model`.`mark` (`idmark`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#step five

SELECT * FROM mark_and_model.mark JOIN mark_and_model.model
ON (model.id_mark=mark.id)
;

#2
#step one

CREATE SCHEMA `producers_and_movies` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `producers_and_movies`.`produers` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_producers` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `producers_and_movies`.`movies` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_producers` INT UNSIGNED NOT NULL,
  `name_movies` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step four

ALTER TABLE `producers_and_movies`.`movies` 
ADD INDEX `fk_movies_1_idx` (`id_producers` ASC);
ALTER TABLE `producers_and_movies`.`movies` 
ADD CONSTRAINT `fk_movies_1`
  FOREIGN KEY (`id_producers`)
  REFERENCES `producers_and_movies`.`produers` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#step five

SELECT * FROM producers_and_movies.produers JOIN producers_and_movies.movies
ON (produers.id_producers=produers.id)
;

#3
#step one

CREATE SCHEMA `street_and_school` DEFAULT CHARACTER SET utf8 ;

#step two

CREATE TABLE `street_and_school`.`street` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_street` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step three

CREATE TABLE `street_and_school`.`school` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_street` INT UNSIGNED NOT NULL,
  `name_school` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

#step four

ALTER TABLE `street_and_school`.`school` 
ADD INDEX `fk_school_1_idx` (`id_street` ASC);
ALTER TABLE `street_and_school`.`school` 
ADD CONSTRAINT `fk_school_1`
  FOREIGN KEY (`id_street`)
  REFERENCES `street_and_school`.`street` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

#step five

SELECT * FROM street_and_school.street JOIN street_and_school.school
ON (school.id_street=street.id)
;






