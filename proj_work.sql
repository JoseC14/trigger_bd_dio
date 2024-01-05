--Projetos com maior número de empregados (ex: por ordenação desc) 
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `company`.`proj_work_vw` AS
    SELECT 
        `company`.`project`.`name_project` AS `ProjectName`,
        COUNT(`company`.`employer`.`id`) AS `EmployersWorking`
    FROM
        (`company`.`project`
        JOIN `company`.`employer` ON ((`company`.`employer`.`id_project` = `company`.`project`.`id`)))
    GROUP BY `company`.`project`.`name_project`
    ORDER BY `EmployersWorking` DESC
