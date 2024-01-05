-- Número de empregados por departamento e localidade
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `company`.`emp_city_dpt` AS
    SELECT 
        COUNT(`company`.`department`.`employers`) AS `COUNT(employers)`,
        `company`.`department`.`section` AS `section`
    FROM
        `company`.`department`
    GROUP BY `company`.`department`.`address`
    HAVING (0 <> `company`.`department`.`section`)
