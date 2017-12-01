-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2017 at 12:49 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tbx_validation_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `dialects`
--

CREATE TABLE IF NOT EXISTS `dialects` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `definition` text NOT NULL,
  `dca_rng` text NOT NULL,
  `dca_sch` text NOT NULL,
  `dct_nvdl` text NOT NULL,
  `dct_sch` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dialects`
--

INSERT INTO `dialects` (`id`, `name`, `definition`, `dca_rng`, `dca_sch`, `dct_nvdl`, `dct_sch`) VALUES
(1, 'TBX-Min', 'https://github.com/LTAC-Global/TBX-Min_dialect/blob/master/TBX-Min%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCA/TBXcoreStructV03_TBX-Min_integrated.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCA/TBX-Min_DCA.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCT/TBX-Min.nvdl', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Min_dialect/master/DCT/TBX-Min_DCT.sch'),
(2, 'TBX-Basic', 'https://github.com/LTAC-Global/TBX-Basic_dialect/blob/master/TBX-Basic%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCA/TBXcoreStructV03_TBX-Basic_integrated.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCA/TBX-Basic_DCA.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCT/TBX-Basic.nvdl', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Basic_dialect/master/DCT/TBX-Basic_DCT.sch'),
(3, 'TBX-Linguist', 'https://github.com/LTAC-Global/TBX-Linguist_dialect/blob/master/TBX-Linguist%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCA/TBXcoreStructV03_TBX-Linguist_integrated.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCA/TBX-Linguist_DCA.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCT/TBX-Linguist.nvdl', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Linguist_dialect/master/DCT/TBX-Linguist_DCT.sch'),
(4, 'TBX-Core', 'https://github.com/LTAC-Global/TBX-Core_dialect/blob/master/TBX-Core%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Core_dialect/master/Schemas/TBXcoreStructV03_TBX-Core_integrated.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX-Core_dialect/master/Schemas/TBX-Core.sch', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dialects_modules`
--

CREATE TABLE IF NOT EXISTS `dialects_modules` (
  `dialects_id` int(11) NOT NULL,
  `modules_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dialects_modules`
--

INSERT INTO `dialects_modules` (`dialects_id`, `modules_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `definition` text NOT NULL,
  `rng` text NOT NULL,
  `sch` text NOT NULL,
  `tbxmd` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `definition`, `rng`, `sch`, `tbxmd`) VALUES
(1, 'Min', 'https://github.com/LTAC-Global/TBX_min_module/blob/master/Min%20Module%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX_min_module/master/Min.tbxmd'),
(2, 'Basic', 'https://github.com/LTAC-Global/TBX_basic_module/blob/master/Basic%20Module%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX_basic_module/master/Basic.tbxmd'),
(3, 'Linguist', 'https://github.com/LTAC-Global/TBX_linguist_module/blob/master/Linguist%20Module%20Definition.pdf', 'https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.rng', 'https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.sch', 'https://raw.githubusercontent.com/LTAC-Global/TBX_linguist_module/master/Linguist.tbxmd'),
(4, 'Core', '', 'https://raw.githubusercontent.com/LTAC-Global/TBX_Core_RNG/master/TBXcoreStructV03.rng', '', ''),
(5, 'TermComp', '', 'https://raw.githubusercontent.com/LTAC-Global/TBX_termComp_module/master/TermComp-namespace.rng', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dialects`
--
ALTER TABLE `dialects`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`), ADD FULLTEXT KEY `name_2` (`name`);

--
-- Indexes for table `dialects_modules`
--
ALTER TABLE `dialects_modules`
  ADD PRIMARY KEY (`dialects_id`,`modules_id`), ADD KEY `IDX_C08A9933D1121016` (`dialects_id`), ADD KEY `IDX_C08A993360D6DC42` (`modules_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dialects`
--
ALTER TABLE `dialects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dialects_modules`
--
ALTER TABLE `dialects_modules`
ADD CONSTRAINT `FK_C08A993360D6DC42` FOREIGN KEY (`modules_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `FK_C08A9933D1121016` FOREIGN KEY (`dialects_id`) REFERENCES `dialects` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
