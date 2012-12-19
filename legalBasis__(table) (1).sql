-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2012 at 07:22 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `coa_budget1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bs_trn_abm_header`
--

CREATE TABLE `bs_trn_abm_header` (
  `abmId` varchar(50) default NULL,
  `approId` varchar(50) default NULL,
  `agencyId` varchar(50) default NULL,
  `fundId` varchar(50) default NULL,
  `raid` varchar(50) default NULL,
  `flagApproved` text,
  `flagNeedingClearance` text,
  `abmPurpose` varchar(250) default NULL,
  `parentAbmid` text,
  `flagReenact` text,
  `flagContinuing` text,
  `flagAdjustment` text,
  `preparedBy` text,
  `preparedDate` varchar(25) default NULL,
  `approvedBy` varchar(50) default NULL,
  `approvedDate` varchar(25) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bs_trn_abm_header`
--

INSERT INTO `bs_trn_abm_header` (`abmId`, `approId`, `agencyId`, `fundId`, `raid`, `flagApproved`, `flagNeedingClearance`, `abmPurpose`, `parentAbmid`, `flagReenact`, `flagContinuing`, `flagAdjustment`, `preparedBy`, `preparedDate`, `approvedBy`, `approvedDate`) VALUES
('', '', '', '1', '', '', '', '', '', '', '', '', '', '10/17/2012', 'trtt', ''),
('', '', '', '1', '', '', '', '', '', '', '', '', '', '10/04/2012', 'uuu', '');

-- --------------------------------------------------------

--
-- Table structure for table `fund`
--

CREATE TABLE `fund` (
  `id` int(11) NOT NULL auto_increment,
  `fundname` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `fund`
--

INSERT INTO `fund` (`id`, `fundname`) VALUES
(1, 'FUND1'),
(2, 'FUND2');

-- --------------------------------------------------------

--
-- Table structure for table `legal_basis`
--

CREATE TABLE `legal_basis` (
  `id` int(11) NOT NULL auto_increment,
  `legalname` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `legal_basis`
--

INSERT INTO `legal_basis` (`id`, `legalname`) VALUES
(1, 'legal1'),
(2, 'legal2');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL auto_increment,
  `date` varchar(30) NOT NULL,
  `fund` varchar(38) NOT NULL,
  `allotment` text NOT NULL,
  `legalbasis` varchar(25) NOT NULL,
  `ppadetail` varchar(25) NOT NULL,
  `reenact` varchar(25) NOT NULL,
  `preparedBy` varchar(25) NOT NULL,
  `certifiedcorrectedby` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `date`, `fund`, `allotment`, `legalbasis`, `ppadetail`, `reenact`, `preparedBy`, `certifiedcorrectedby`) VALUES
(19, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(22, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(25, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(27, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(36, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(38, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(40, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(41, '11/09/2012', '41', '', '', 'eee', '', '', 'euddddd'),
(42, '', '1', '1', '', '', '', '', ''),
(43, '11/17/2012', '1', '1', '', '', '', '', ''),
(44, '11/17/2012', '1', '2', '', 'u', 'on', 'u', 'u'),
(45, '11/17/2012', '1', '2', '', 'u', 'on', 'u', 'u');
