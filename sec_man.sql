-- Lista de departamentos e seus gerentes
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `company`.`sec_man` AS
    SELECT 
        `company`.`department`.`section` AS `section`,
        `company`.`employer`.`firstName` AS `firstName`,
        `company`.`employer`.`lastName` AS `lastName`
    FROM
        (`company`.`department`
        JOIN `company`.`employer` ON (((`company`.`department`.`id` = `company`.`employer`.`id_department`)
            AND (`company`.`employer`.`isManager` = TRUE))))
