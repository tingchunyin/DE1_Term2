create schema happinessdb;

use happinessdb;

drop table if exists happiness;

CREATE TABLE `happiness` (
  `country_name` varchar(250) NOT NULL,
  `regional_indicator` varchar(250) DEFAULT NULL,
  `ladder_score` double DEFAULT NULL,
  `std_ladder_score` double DEFAULT NULL,
  `upperwhisker` double DEFAULT NULL,
  `lowerwhisker` double DEFAULT NULL,
  `logged_gdp_per_capita` double DEFAULT NULL,
  `social_support` double DEFAULT NULL,
  `health_life_expectancy` double DEFAULT NULL,
  `freedom_to_make_life_choices` double DEFAULT NULL,
  `generosity` double DEFAULT NULL,
  `perception_of_corruption` double DEFAULT NULL,
  `ladder_score_in_dystopia` double DEFAULT NULL,
  `explained_by_log_GDP_per_capita` double DEFAULT NULL,
  `explained_by_social_support` double DEFAULT NULL,
  `explained_by_healthy_life_expectancy` double(11,2) DEFAULT NULL,
  `explained_by_freedom_to_make_life_choices` double(11,2) DEFAULT NULL,
  `explained_by_generosity` double(11,2) DEFAULT NULL,
  `explained_by_perceptions_of_corruption` double(11,2) DEFAULT NULL,
  `dystopia_residual` double(11,2) DEFAULT NULL,
  PRIMARY KEY (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


drop table if exists population;

CREATE TABLE `population` (
  `iso_code` varchar(250) DEFAULT NULL,
  `country_name` varchar(250) DEFAULT NULL,
  `2021_last_updated` varchar(250) DEFAULT NULL,
  `2020_population` varchar(250) DEFAULT NULL,
  `area` varchar(250) DEFAULT NULL,
  `density_sq_km` varchar(250) DEFAULT NULL,
  `growth_rate` varchar(250) DEFAULT NULL,
  `world_percent` varchar(250) DEFAULT NULL,
  `orld_rank` int DEFAULT NULL,
  KEY `country_name` (`country_name`),
  CONSTRAINT `population_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `happiness` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table if exists country_codes;

CREATE TABLE `country_codes` (
  `country_name` varchar(250) DEFAULT NULL,
  `alpha_2_code` varchar(250) DEFAULT NULL,
  `alpha_3_code` varchar(250) DEFAULT NULL,
  `numeric_code` varchar(250) DEFAULT NULL,
  `iso_code` varchar(250) DEFAULT NULL,
  KEY `country_name` (`country_name`),
  CONSTRAINT `country_codes_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `happiness` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table if exists press;

CREATE TABLE `press` (
  `country_name` varchar(250) DEFAULT NULL,
  `abuse_score_2021` double DEFAULT NULL,
  `underlying_situation_score_2021` double DEFAULT NULL,
  `global_score_2021` double DEFAULT NULL,
  `global_score_2020` double DEFAULT NULL,
  `global_score_2019` double DEFAULT NULL,
  KEY `country_name` (`country_name`),
  CONSTRAINT `press_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `happiness` (`country_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



