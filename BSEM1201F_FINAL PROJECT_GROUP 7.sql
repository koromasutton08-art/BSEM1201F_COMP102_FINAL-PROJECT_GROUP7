-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2026 at 07:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"student_course_registration_system\",\"table\":\"student\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-05-04 10:48:31', '{\"Console\\/Mode\":\"show\",\"NavigationWidth\":713}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `public_health_clinic_records_system`
--
CREATE DATABASE IF NOT EXISTS `public_health_clinic_records_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `public_health_clinic_records_system`;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `PATIENT_ID` int(11) DEFAULT NULL,
  `APPOINTMENT_DATE` date DEFAULT NULL,
  `APPOINTMENT_TIME` time DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`PATIENT_ID`, `APPOINTMENT_DATE`, `APPOINTMENT_TIME`, `STATUS`) VALUES
(1000, '2026-05-02', '09:00:00', 'SCHEDULED'),
(1001, '2026-06-05', '10:00:00', 'COMPLETED'),
(1002, '2026-08-04', '01:00:00', 'SCHEDULED'),
(1004, '2026-06-20', '09:00:00', 'Scheduled'),
(1005, '2026-06-20', '10:00:00', 'Completed'),
(1006, '2026-06-21', '11:00:00', 'Scheduled'),
(1007, '2026-06-21', '12:00:00', 'Completed'),
(1008, '2026-06-22', '09:30:00', 'Scheduled'),
(1009, '2026-06-22', '10:30:00', 'Completed'),
(1010, '2026-06-23', '08:00:00', 'Scheduled'),
(1011, '2026-06-23', '11:00:00', 'Completed'),
(1012, '2026-06-24', '13:00:00', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `DIAGNOSIS_ID` int(11) NOT NULL,
  `VISIT_ID` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`DIAGNOSIS_ID`, `VISIT_ID`, `DESCRIPTION`) VALUES
(1, 1, 'MALARIA AND TYPHOID'),
(2, 2, 'ULCER AND DYSENTRY'),
(3, 3, 'KIDNEY STONE'),
(4, 4, 'Malaria'),
(5, 5, 'Flu'),
(6, 6, 'Typhoid'),
(7, 7, 'Headache'),
(8, 8, 'Fever'),
(9, 9, 'Back Pain'),
(10, 10, 'Dental Pain'),
(11, 11, 'Appendicitis'),
(12, 12, 'Pregnancy Checkup');

-- --------------------------------------------------------

--
-- Table structure for table `health_worker`
--

CREATE TABLE `health_worker` (
  `HEALTH_WORKER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `ROLE` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_worker`
--

INSERT INTO `health_worker` (`HEALTH_WORKER_ID`, `FIRST_NAME`, `LAST_NAME`, `ROLE`, `PHONE_NUMBER`) VALUES
(2000, 'DR.JOHN', 'BANGURA', 'GENERAL MEDICINE', '079899987'),
(2001, 'DR. MARIAMA', 'CONTEH', 'PEDIATRICS', '099876543'),
(2002, 'DR. ABU', 'KAMARA', 'GYNECOLOGIST', '078234564'),
(2003, 'Dr. John', 'Bangura', 'General Medicine', '76611111'),
(2004, 'Dr. Mariama', 'Conteh', 'Pediatrics', '77722222'),
(2005, 'Dr. Ibrahim', 'Sesay', 'Laboratory', '78833333'),
(2006, 'Dr. Fatmata', 'Kamara', 'Pharmacy', '79944444'),
(2007, 'Dr. Mohamed', 'Koroma', 'Emergency', '75511111'),
(2008, 'Dr. Isatu', 'Turay', 'Radiology', '76622222'),
(2009, 'Dr. Joseph', 'Kanu', 'Dental', '77733333'),
(2010, 'Dr. Aminata', 'Jalloh', 'Surgery', '78844444'),
(2011, 'Dr. Abdul', 'Conteh', 'Maternity', '79955555');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `PHONE_NUMBER` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `DATE_OF_BIRTH`, `PHONE_NUMBER`, `ADDRESS`) VALUES
(1000, 'MOSES', 'SUTTON', 'M', '2008-05-27', '078742740', 'FREETOWN'),
(1001, 'ALPHA', 'LEIGH', 'M', '2007-08-12', '079999999', 'FREETOWN'),
(1002, 'IBRAHIM', 'SORIE', 'M', '2007-02-23', '077789987', 'FREETOWN'),
(1003, 'Moses', 'Koroma', 'Male', '2003-08-14', '905005996', 'Freetown'),
(1004, 'Fatmata', 'Kamara', 'Female', '1998-04-12', '77665544', 'Bo'),
(1005, 'Ibrahim', 'Sesay', 'Male', '2000-03-20', '88899999', 'Makeni'),
(1006, 'Hawa', 'Turay', 'Female', '1995-07-18', '90123456', 'Kenema'),
(1007, 'Abdul', 'Kanu', 'Male', '1999-01-09', '90234567', 'Waterloo'),
(1008, 'Aminata', 'Conteh', 'Female', '2001-06-22', '90345678', 'Port Loko'),
(1009, 'Joseph', 'Bangura', 'Male', '2002-02-15', '90456789', 'Kabala'),
(1010, 'Mariama', 'Jalloh', 'Female', '1997-09-30', '90567890', 'Koidu'),
(1011, 'Mohamed', 'Kamara', 'Male', '2004-11-11', '90678901', 'Bo'),
(1012, 'Isatu', 'Koroma', 'Female', '1996-12-25', '90789012', 'Freetown');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TREATMENT_ID` int(11) NOT NULL,
  `DIAGNOSIS_ID` int(11) DEFAULT NULL,
  `MEDICATION` varchar(100) DEFAULT NULL,
  `DOSAGE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TREATMENT_ID`, `DIAGNOSIS_ID`, `MEDICATION`, `DOSAGE`) VALUES
(32, 1, 'Coartem', '2 tablets 3 days'),
(33, 2, 'Paracetamol', '1 tablet 5 days'),
(34, 3, 'Azithromycin', '500mg 5 days'),
(35, 4, 'Ibuprofen', '400mg 7 days'),
(36, 5, 'Vitamin C', '1 tablet 10 days'),
(37, 6, 'Diclofenac', '50mg 5 days'),
(38, 7, 'Amoxicillin', '500mg 7 days'),
(39, 8, 'Ceftriaxone', '1 injection 3 days'),
(40, 9, 'Folic Acid', '1 tablet 30 days'),
(41, 10, 'Multivitamin', '1 tablet 14 days');

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `VISIT_ID` int(11) NOT NULL,
  `PATIENT_ID` int(11) DEFAULT NULL,
  `HEALTH_WORKER_ID` int(11) DEFAULT NULL,
  `VISIT_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`VISIT_ID`, `PATIENT_ID`, `HEALTH_WORKER_ID`, `VISIT_DATE`) VALUES
(1, 1001, 2002, '2026-06-20'),
(2, 1002, 2001, '2026-07-21'),
(3, 1000, 2000, '2026-09-20'),
(4, 1001, 2000, '2026-06-20'),
(5, 1002, 2001, '2026-06-20'),
(6, 1003, 2002, '2026-06-21'),
(7, 1004, 2003, '2026-06-21'),
(8, 1005, 2004, '2026-06-22'),
(9, 1006, 2005, '2026-06-22'),
(10, 1007, 2006, '2026-06-23'),
(11, 1008, 2007, '2026-06-23'),
(12, 1009, 2008, '2026-06-24'),
(13, 1010, 2009, '2026-06-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`DIAGNOSIS_ID`),
  ADD KEY `VISIT_ID` (`VISIT_ID`);

--
-- Indexes for table `health_worker`
--
ALTER TABLE `health_worker`
  ADD PRIMARY KEY (`HEALTH_WORKER_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENT_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TREATMENT_ID`),
  ADD KEY `DIAGNOSIS_ID` (`DIAGNOSIS_ID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`VISIT_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`),
  ADD KEY `HEALTH_WORKER_ID` (`HEALTH_WORKER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `DIAGNOSIS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `health_worker`
--
ALTER TABLE `health_worker`
  MODIFY `HEALTH_WORKER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2014;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `TREATMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `VISIT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`);

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`VISIT_ID`) REFERENCES `visit` (`VISIT_ID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`DIAGNOSIS_ID`) REFERENCES `diagnosis` (`DIAGNOSIS_ID`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`HEALTH_WORKER_ID`) REFERENCES `health_worker` (`HEALTH_WORKER_ID`);
--
-- Database: `student_course_registration_system`
--
CREATE DATABASE IF NOT EXISTS `student_course_registration_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student_course_registration_system`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSENAME` varchar(100) DEFAULT NULL,
  `CREDITHOUR` int(11) DEFAULT NULL,
  `LECTURER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSENAME`, `CREDITHOUR`, `LECTURER_ID`) VALUES
(1, 'INTRODUCTION TO DATABASE', 3, 1),
(2, 'COMPUTERIZED MATH', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LECTURER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `FACULTY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LECTURER_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `FACULTY`) VALUES
(1, 'JOSEPH', 'KAMARA', 'JKAMARA@GMAIL.COM', '78334455', 'FDI'),
(2, 'MARIATU', 'CONTEH', 'MCONTEH@GMAIL.COM', '76556677', 'ICT');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `REGISTRATION_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `ACADEMIC` year(4) DEFAULT NULL,
  `REGISTRATIONDATE` datetime DEFAULT NULL,
  `ACADEMIC_YEAR` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`REGISTRATION_ID`, `STUDENT_ID`, `COURSE_ID`, `SEMESTER`, `ACADEMIC`, `REGISTRATIONDATE`, `ACADEMIC_YEAR`) VALUES
(1, 905000001, 1, 'SEMESTER 2', NULL, NULL, '2025/2026'),
(2, 905000002, 2, 'SEMESTER 2', NULL, NULL, '2025/2026');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RESULT_ID` int(11) DEFAULT NULL,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `COURSE_ID` int(11) DEFAULT NULL,
  `TEST_SCORE` decimal(3,2) DEFAULT NULL,
  `EXAM_SCORE` decimal(3,2) DEFAULT NULL,
  `total_score` decimal(3,2) GENERATED ALWAYS AS (`TEST_SCORE` + `EXAM_SCORE`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(25) NOT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `DATE_OF_BIRTH`, `PHONE`, `EMAIL`, `ADDRESS`) VALUES
(905000001, 'MOHAMED', 'SESAY', 'M', '2003-04-12', 76111111, 'MOSESAY@GMAIL.COM', NULL),
(905000002, 'MOHAMED', 'SESAY', 'M', '2003-04-12', 76123456, 'MOSESAY@GMAIL.COM', NULL),
(905000003, 'FATMATA', 'KAMARA', 'F', '2004-02-08', 78987654, 'FKAMARA@GMAIL.COM', NULL),
(905000004, 'IBRAHIM', 'KARGBO', 'M', '2003-11-21', 76765422, 'KARGBO@GMAIL.COM', NULL),
(905000005, 'AMINATA', 'CONTEH', 'F', '2004-06-15', 78112233, 'ACONTEH@GAMAIL.COM', NULL),
(905000006, 'SHEKU', 'BANGURA', 'M', '2003-09-02', 76998877, 'SBANGURA@GMAIL.COM', NULL),
(905000007, 'MARIAM', 'KOROMA', 'F', '2004-03-19', 78334455, 'MKOROMA@GMAIL.COM', NULL),
(905000008, 'ABDUL', 'TURAY', 'M', '2003-07-30', 76556677, 'ATURAY@GMAIL.COM', NULL),
(905000009, 'HAJA', 'KAMARA', 'F', '2004-01-25', 78667788, 'HKAMARA@GMAIL.COM', NULL),
(905000010, 'LAMIN', 'JALLOH', 'M', '2003-12-05', 76443322, 'LJALLOH@GMAIL.COM', NULL),
(905000011, 'KADIATU', 'SESAY', 'F', '2004-08-18', 78778899, 'KSESAY@GMAIL.COM', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`),
  ADD KEY `LECTURER_ID` (`LECTURER_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LECTURER_ID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`REGISTRATION_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `COURSE_ID` (`COURSE_ID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `STUDENT_ID` (`STUDENT_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `LECTURER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `REGISTRATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905000012;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`LECTURER_ID`) REFERENCES `lecturer` (`LECTURER_ID`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`STUDENT_ID`),
  ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`STUDENT_ID`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`STUDENT_ID`) REFERENCES `course` (`COURSE_ID`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
