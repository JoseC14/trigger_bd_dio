-- Quais empregados possuem dependentes e se são gerentes 
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `company`.`list_vw` AS
    SELECT 
        `company`.`project`.`name_project` AS `Project`,
        `company`.`department`.`section` AS `Sector`,
        `company`.`employer`.`firstName` AS `Manager`
    FROM
        ((`company`.`project`
        JOIN `company`.`department` ON ((`company`.`project`.`id_departamento` = `company`.`department`.`id`)))
        JOIN `company`.`employer` ON (((`company`.`employer`.`id_department` = `company`.`department`.`id`)
            AND (`company`.`employer`.`isManager` = TRUE))))
