CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `company`.`emp_man` AS
    SELECT 
        CONCAT(`company`.`dependant`.`firstName`,
                ' ',
                `company`.`dependant`.`lastName`) AS `Dependant`,
        `company`.`employer`.`firstName` AS `Employer`,
        `company`.`employer`.`isManager` AS `isManager`
    FROM
        (`company`.`employer`
        JOIN `company`.`dependant` ON ((`company`.`dependant`.`id_employer` = `company`.`employer`.`id`)))