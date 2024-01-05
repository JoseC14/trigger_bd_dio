-- Before Delete

CREATE DEFINER=`root`@`localhost` TRIGGER `del_pf` BEFORE DELETE ON `cliente` FOR EACH ROW BEGIN
DELETE FROM pf WHERE id = cliente.id;
END
