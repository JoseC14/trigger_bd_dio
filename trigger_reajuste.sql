-- After Insert
CREATE DEFINER=`root`@`localhost` TRIGGER `adj_bas` AFTER INSERT ON `employer` FOR EACH ROW BEGIN
	SET @readjust = (SELECT value_salary FROM salary WHERE id = NEW.id_salary) * 0.01;
	UPDATE salary set value_salary = value_salary - @readjust WHERE charge = 'Base' ;
END
