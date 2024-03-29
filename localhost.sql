-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2012 at 08:45 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abm`
--
CREATE DATABASE `abm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abm`;

-- --------------------------------------------------------

--
-- Table structure for table `bs_trn_abm_detail`
--

CREATE TABLE `bs_trn_abm_detail` (
  `abmDetailId` int(18) NOT NULL,
  `abmId` int(18) NOT NULL,
  `allotId` int(18) NOT NULL,
  `ppaId` int(18) NOT NULL,
  `abmDetailAmount` float(18,2) NOT NULL,
  `flagDetail` int(1) NOT NULL,
  `flagEqual` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bs_trn_abm_detail`
--


-- --------------------------------------------------------

--
-- Table structure for table `bs_trn_abm_detail_obj`
--

CREATE TABLE `bs_trn_abm_detail_obj` (
  `abmId` int(18) NOT NULL,
  `abmDetailId` int(18) NOT NULL,
  `allotId` int(18) NOT NULL,
  `ppaId` int(18) NOT NULL,
  `rcId` int(18) NOT NULL,
  `accountId` int(18) NOT NULL,
  `abmDetailObjectAmount` float(18,2) NOT NULL,
  `abmSequence` int(18) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bs_trn_abm_detail_obj`
--


-- --------------------------------------------------------

--
-- Table structure for table `bs_trn_abn_header`
--

CREATE TABLE `bs_trn_abn_header` (
  `abmId` int(18) default NULL COMMENT 'null',
  `approId` int(18) default NULL COMMENT 'null',
  `agencyId` int(18) default NULL COMMENT 'null',
  `fundId` int(18) default NULL COMMENT 'null',
  `raId` int(18) default NULL COMMENT 'null',
  `flagApproved` int(1) default NULL COMMENT 'null',
  `flagNeedingClearance` int(1) NOT NULL COMMENT 'null',
  `abmPurpose` varchar(4000) NOT NULL COMMENT 'null\r\n',
  `parentAbmId` int(18) NOT NULL COMMENT 'null',
  `flagReenact` int(1) NOT NULL COMMENT 'null',
  `flagContinuing` int(1) default NULL COMMENT 'null',
  `flagAdjustment` int(1) NOT NULL COMMENT 'null',
  `preparedBy` int(18) NOT NULL COMMENT 'null',
  `preparedDate` date NOT NULL COMMENT 'null',
  `approvedBy` int(18) NOT NULL COMMENT 'null',
  `approvedDate` date NOT NULL COMMENT 'null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bs_trn_abn_header`
--

--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', '', 0),
('dec8_bin', 'dec8', 69, '', '', 0),
('cp850_general_ci', 'cp850', 4, 'Yes', '', 0),
('cp850_bin', 'cp850', 80, '', '', 0),
('hp8_english_ci', 'hp8', 6, 'Yes', '', 0),
('hp8_bin', 'hp8', 72, '', '', 0),
('koi8r_general_ci', 'koi8r', 7, 'Yes', '', 0),
('koi8r_bin', 'koi8r', 74, '', '', 0),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', '', 0),
('swe7_bin', 'swe7', 82, '', '', 0),
('ascii_general_ci', 'ascii', 11, 'Yes', '', 0),
('ascii_bin', 'ascii', 65, '', '', 0),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', '', 0),
('hebrew_bin', 'hebrew', 71, '', '', 0),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', '', 0),
('koi8u_bin', 'koi8u', 75, '', '', 0),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', '', 0),
('greek_bin', 'greek', 70, '', '', 0),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', '', 0),
('latin5_bin', 'latin5', 78, '', '', 0),
('armscii8_general_ci', 'armscii8', 32, 'Yes', '', 0),
('armscii8_bin', 'armscii8', 64, '', '', 0),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', '', 0),
('cp866_bin', 'cp866', 68, '', '', 0),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', '', 0),
('keybcs2_bin', 'keybcs2', 73, '', '', 0),
('macce_general_ci', 'macce', 38, 'Yes', '', 0),
('macce_bin', 'macce', 43, '', '', 0),
('macroman_general_ci', 'macroman', 39, 'Yes', '', 0),
('macroman_bin', 'macroman', 53, '', '', 0),
('cp852_general_ci', 'cp852', 40, 'Yes', '', 0),
('cp852_bin', 'cp852', 81, '', '', 0),
('latin7_estonian_cs', 'latin7', 20, '', '', 0),
('latin7_general_ci', 'latin7', 41, 'Yes', '', 0),
('latin7_general_cs', 'latin7', 42, '', '', 0),
('latin7_bin', 'latin7', 79, '', '', 0),
('cp1251_bulgarian_ci', 'cp1251', 14, '', '', 0),
('cp1251_ukrainian_ci', 'cp1251', 23, '', '', 0),
('cp1251_bin', 'cp1251', 50, '', '', 0),
('cp1251_general_ci', 'cp1251', 51, 'Yes', '', 0),
('cp1251_general_cs', 'cp1251', 52, '', '', 0),
('cp1256_general_ci', 'cp1256', 57, 'Yes', '', 0),
('cp1256_bin', 'cp1256', 67, '', '', 0),
('cp1257_lithuanian_ci', 'cp1257', 29, '', '', 0),
('cp1257_bin', 'cp1257', 58, '', '', 0),
('cp1257_general_ci', 'cp1257', 59, 'Yes', '', 0),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', '', 0),
('geostd8_bin', 'geostd8', 93, '', '', 0),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'abmDetailId', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'abmId', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'allotId', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'ppaId', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'abmDetailAmount', 5, NULL, 'NO', 'float', NULL, NULL, 18, 2, NULL, NULL, 'float(18,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'flagDetail', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'flagEqual', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'abmId', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'abmDetailId', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'allotId', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'ppaId', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'rcId', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'accountId', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'abmDetailObjectAmount', 7, NULL, 'NO', 'float', NULL, NULL, 18, 2, NULL, NULL, 'float(18,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'abmSequence', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', ''),
(NULL, 'abm', 'bs_trn_abn_header', 'abmId', 1, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'approId', 2, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'agencyId', 3, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'fundId', 4, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'raId', 5, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'flagApproved', 6, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'flagNeedingClearance', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'abmPurpose', 8, NULL, 'NO', 'varchar', 4000, 4000, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(4000)', '', '', 'select,insert,update,references', 'null\r\n'),
(NULL, 'abm', 'bs_trn_abn_header', 'parentAbmId', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'flagReenact', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'flagContinuing', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'flagAdjustment', 12, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'preparedBy', 13, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'preparedDate', 14, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'approvedBy', 15, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(18)', '', '', 'select,insert,update,references', 'null'),
(NULL, 'abm', 'bs_trn_abn_header', 'approvedDate', 16, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', 'null'),
(NULL, 'jscheduler', 'account_info', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'uid', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'extra_info', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'type', 4, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'image', 5, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'reset_username', 6, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'account_info', 'reset_password', 7, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'courses', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'courses', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'courses', 'title', 3, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'courses', 'coursename', 4, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'courses', 'titleid', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'inst_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'day', 3, NULL, 'NO', 'varchar', 3, 3, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'time1', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'type1', 5, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'time2', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'type2', 7, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time', 'sem', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'inst_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'inst_time_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'subj_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'sec_id', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'sem', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'school_id', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'ins_time_availability', 'available', 8, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'firstname', 2, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'lastname', 3, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'gender', 4, NULL, 'NO', 'varchar', 1, 1, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'image', 5, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors', 'school_id', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors_subjects', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors_subjects', 'inst_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'instructors_subjects', 'subj_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'lab_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'courseid', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'sec_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'subj_id', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'day', 6, NULL, 'NO', 'varchar', 3, 3, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'time1', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'type1', 8, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'time2', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'type2', 10, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'school_id', 11, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'lab_availability', 'sem', 12, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'laboratories', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'laboratories', 'lab', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'laboratories', 'bldg', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'laboratories', 'school_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'mes_notifs', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'mes_notifs', 'j_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'mes_notifs', 'mes_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'mes_notifs', 'status', 4, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'mes_notifs', 'school_id', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'sender_type', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'msg_from', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'recipient_type', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'msg_to', 5, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'msg', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'date', 7, NULL, 'NO', 'varchar', 12, 12, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(12)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'time', 8, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'unread', 9, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'school_id', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'messages', 'conv_id', 11, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'subject', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'news', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'day', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'month', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'year', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'publish', 7, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'news', 'school_id', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'from', 2, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'to', 3, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'subject', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'ids', 5, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'id_type', 6, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'reads', 7, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'school_id', 8, NULL, 'NO', 'varchar', 1, 1, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'notifs', 'admin_read', 9, NULL, 'NO', 'varchar', 5, 5, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'protected_acc', 'inst_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'protected_acc', 'protect', 2, NULL, 'NO', 'varchar', 8, 8, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(8)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'jscheduler', 'room_availability', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'room_availability', 'room_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'room_availability', 'time_ses_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'room_availability', 'school_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'room_availability', 'sem', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'roomname', 2, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'bldg', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'restrict_to', 4, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'courseid', 5, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'rooms', 'school_id', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'courseid', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'sec_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'sem', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'day', 6, NULL, 'NO', 'varchar', 3, 3, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'time1', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'type1', 8, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'time2', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'type2', 10, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'subjects', 11, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'inst_id', 12, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'room_id', 13, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'schedule', 'status', 14, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'school', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'school', 's_name', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'school', 'location', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'school', 'abbr', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'section', 3, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'courseid', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'sem', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'ses_id', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sections', 'yearlvl', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'semesters', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'semesters', 'sem_num', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'semesters', 'type', 3, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'semesters', 'school_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'time1', 3, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'type1', 4, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'time2', 5, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'type2', 6, NULL, 'NO', 'varchar', 2, 2, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'sessions', 'calc', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'courseid', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'sem', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'subject_code', 5, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'subject_name', 6, NULL, 'NO', 'varchar', 55, 55, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(55)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'time_perWeek', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'lab_hrs', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'subjects', 'year_category', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'titles', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'titles', 'title', 2, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'titles', 'term', 3, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'titles', 'years', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'titles', 'school_id', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'school_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'inst_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'firstname', 4, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'lastname', 5, NULL, 'NO', 'varchar', 25, 25, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(25)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'username', 6, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'password', 7, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'jscheduler', 'users', 'type', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_name', 5, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_priv', 7, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Grant_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'References_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Index_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_tmp_table_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Lock_tables_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Show_view_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_routine_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Execute_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'ret', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'dl', 3, '', 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'type', 4, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''function'',''aggregate'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'parent_category_id', 3, NULL, 'YES', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'url', 4, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_keyword_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_category_id', 3, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'example', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'url', 6, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Select_priv', 3, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Insert_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Update_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Delete_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Drop_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Grant_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'References_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Index_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_tmp_table_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Lock_tables_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_view_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Show_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_routine_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Execute_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'db', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'name', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'type', 3, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'specific_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'language', 5, 'SQL', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''SQL'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_data_access', 6, 'CONTAINS_SQL', 'NO', 'enum', 17, 51, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''CONTAINS_SQL'',''NO_SQL'',''READS_SQL_DATA'',''MODIFIES_SQL_DATA'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'is_deterministic', 7, 'NO', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''YES'',''NO'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'security_type', 8, 'DEFINER', 'NO', 'enum', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''INVOKER'',''DEFINER'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'param_list', 9, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'returns', 10, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'body', 11, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'definer', 12, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'created', 13, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'modified', 14, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_mode', 15, '', 'NO', 'set', 431, 1293, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''REAL_AS_FLOAT'',''PIPES_AS_CONCAT'',''ANSI_QUOTES'',''IGNORE_SPACE'',''NOT_USED'',''ONLY_FULL_GROUP_BY'',''NO_UNSIGNED_SUBTRACTION'',''NO_DIR_IN_CREATE'',''POSTGRESQL'',''ORACLE'',''MSSQL'',''DB2'',''MAXDB'',''NO_KEY_OPTIONS'',''NO_TABLE_OPTIONS'',''NO_FIELD_OPTIONS'',''MYSQL323'',''MYSQL40'',''ANSI'',''NO_AUTO_VALUE_ON_ZERO'',''NO_BACKSLASH_ESCAPES'',''STRICT_TRANS_TABLES'',''STRICT_ALL_TABLES'',''NO_ZERO_IN_DATE'',''NO_ZERO_DATE'',''INVALID_DATES'',''ERROR_FOR_DIVISION_BY_ZERO'',''TRADITIONAL'',''NO_AUTO_CREATE_USER'',''HIGH_NOT_PRECEDENCE'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'comment', 16, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_bin', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Grantor', 6, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Proc_priv', 7, '', 'NO', 'set', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Execute'',''Alter Routine'',''Grant'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Timestamp', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Grantor', 5, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_priv', 7, '', 'NO', 'set', 90, 270, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''Delete'',''Create'',''Drop'',''Grant'',''References'',''Index'',''Alter'',''Create View'',''Show view'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Column_priv', 8, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Use_leap_seconds', 2, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''Y'',''N'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Correction', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Time_zone_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_type_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Offset', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Is_DST', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Abbreviation', 5, '', 'NO', 'char', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'User', 2, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Password', 3, '', 'NO', 'char', 41, 41, NULL, NULL, 'latin1', 'latin1_bin', 'char(41)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Reload_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Shutdown_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Process_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'File_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Grant_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'References_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Index_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_db_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Super_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_tmp_table_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Lock_tables_priv', 21, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Execute_priv', 22, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_slave_priv', 23, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_client_priv', 24, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_view_priv', 25, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_view_priv', 26, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_routine_priv', 27, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_routine_priv', 28, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_user_priv', 29, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_type', 30, '', 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum('''',''ANY'',''X509'',''SPECIFIED'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_cipher', 31, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_issuer', 32, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_subject', 33, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_questions', 34, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_updates', 35, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_connections', 36, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_user_connections', 37, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'account_info', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'courses', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'ins_time', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'ins_time_availability', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'instructors', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'instructors_subjects', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'lab_availability', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'laboratories', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'mes_notifs', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'messages', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'news', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'notifs', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'protected_acc', 'inst_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'room_availability', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'rooms', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'schedule', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'school', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'sections', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'semesters', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'sessions', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'subjects', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'titles', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'jscheduler', 'PRIMARY', NULL, 'jscheduler', 'users', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Column_name', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'func', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_category', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_keyword', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_topic_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_topic', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'db', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'name', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'type', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'User', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` varchar(9) NOT NULL default '',
  `CPU_USER` varchar(9) default NULL,
  `CPU_SYSTEM` varchar(9) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILING`
--


-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ROUTINES`
--


-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'abm', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'jscheduler', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'mysql', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''''@''%''', NULL, 'test', 'SELECT', 'NO'),
('''''@''%''', NULL, 'test', 'INSERT', 'NO'),
('''''@''%''', NULL, 'test', 'UPDATE', 'NO'),
('''''@''%''', NULL, 'test', 'DELETE', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE', 'NO'),
('''''@''%''', NULL, 'test', 'DROP', 'NO'),
('''''@''%''', NULL, 'test', 'REFERENCES', 'NO'),
('''''@''%''', NULL, 'test', 'INDEX', 'NO'),
('''''@''%''', NULL, 'test', 'ALTER', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE TEMPORARY TABLES', 'NO'),
('''''@''%''', NULL, 'test', 'LOCK TABLES', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE VIEW', 'NO'),
('''''@''%''', NULL, 'test', 'SHOW VIEW', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE ROUTINE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'SELECT', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'INSERT', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'UPDATE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'DELETE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'DROP', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'REFERENCES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'INDEX', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'ALTER', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE TEMPORARY TABLES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'LOCK TABLES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE VIEW', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'SHOW VIEW', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'jscheduler', 'account_info', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'courses', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'ins_time', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 178, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'ins_time_availability', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 50, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'instructors', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'instructors_subjects', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 76, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'lab_availability', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 20, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'laboratories', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'mes_notifs', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'messages', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 49, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'news', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'notifs', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'protected_acc', 0, 'jscheduler', 'PRIMARY', 1, 'inst_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'room_availability', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'rooms', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'schedule', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 174, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'school', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'sections', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'semesters', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'sessions', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'subjects', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 18, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'titles', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'jscheduler', 'users', 0, 'jscheduler', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 5, 'Column_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 1, 'mysql', 'User', 1, 'User', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'func', 0, 'mysql', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'PRIMARY', 1, 'help_category_id', 'A', 36, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'name', 1, 'name', 'A', 36, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', 401, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'name', 1, 'name', 'A', 401, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 2, 'help_topic_id', 'A', 825, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'PRIMARY', 1, 'help_topic_id', 'A', 475, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'name', 1, 'name', 'A', 475, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 1, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 2, 'name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 3, 'type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 4, 'Routine_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 5, 'Routine_type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_leap_second', 0, 'mysql', 'PRIMARY', 1, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_name', 0, 'mysql', 'PRIMARY', 1, 'Name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 2, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 2, 'Transition_type_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 2, 'User', 'A', 5, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 13631040, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=23665', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 13631175, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=32225', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 13631301, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=35223', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-10-25 16:45:27', '2012-10-25 16:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=3540', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 13630410, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5314', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 13628143, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=2939', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 425, 0, 13631450, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=32074', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-10-25 16:45:27', '2012-10-25 16:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=3726', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 13629568, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3728', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 13629645, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6255', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 13630752, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5088', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 13628263, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3743', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 13629272, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5443', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 13629512, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5746', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-10-25 16:45:27', '2012-10-25 16:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=3108', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 13629918, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6863', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-10-25 16:45:27', '2012-10-25 16:45:27', NULL, 'utf8_general_ci', NULL, 'max_rows=6123', ''),
(NULL, 'abm', 'bs_trn_abm_detail', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 0, NULL, '2012-10-25 16:42:49', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'abm', 'bs_trn_abm_detail_obj', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 0, NULL, '2012-10-25 16:40:27', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'abm', 'bs_trn_abn_header', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 0, NULL, '2012-10-25 16:35:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'account_info', 'BASE TABLE', 'InnoDB', 10, 'Compact', 2, 8192, 16384, 0, 0, 0, 3, '2012-10-18 10:52:01', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'courses', 'BASE TABLE', 'InnoDB', 10, 'Compact', 8, 2048, 16384, 0, 0, 0, 14, '2012-10-18 10:52:02', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'ins_time', 'BASE TABLE', 'InnoDB', 10, 'Compact', 178, 92, 16384, 0, 0, 0, 211, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'ins_time_availability', 'BASE TABLE', 'InnoDB', 10, 'Compact', 50, 327, 16384, 0, 0, 0, 156, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'instructors', 'BASE TABLE', 'InnoDB', 10, 'Compact', 14, 1170, 16384, 0, 0, 0, 37, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'instructors_subjects', 'BASE TABLE', 'InnoDB', 10, 'Compact', 76, 215, 16384, 0, 0, 0, 98, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'lab_availability', 'BASE TABLE', 'InnoDB', 10, 'Compact', 20, 819, 16384, 0, 0, 0, 61, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'laboratories', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 0, 0, 5, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'mes_notifs', 'BASE TABLE', 'InnoDB', 10, 'Compact', 0, 0, 16384, 0, 0, 0, 1, '2012-10-18 10:52:03', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'messages', 'BASE TABLE', 'InnoDB', 10, 'Compact', 49, 334, 16384, 0, 0, 0, 59, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'news', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 0, 0, 4, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'notifs', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1, 16384, 16384, 0, 0, 0, 2, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'protected_acc', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1, 16384, 16384, 0, 0, 0, NULL, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'room_availability', 'BASE TABLE', 'InnoDB', 10, 'Compact', 7, 2340, 16384, 0, 0, 0, 348, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'rooms', 'BASE TABLE', 'InnoDB', 10, 'Compact', 8, 2048, 16384, 0, 0, 0, 10, '2012-10-18 10:52:04', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'schedule', 'BASE TABLE', 'InnoDB', 10, 'Compact', 174, 94, 16384, 0, 0, 0, 1453, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'school', 'BASE TABLE', 'InnoDB', 10, 'Compact', 1, 16384, 16384, 0, 0, 0, 2, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'sections', 'BASE TABLE', 'InnoDB', 10, 'Compact', 7, 2340, 16384, 0, 0, 0, 9, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'semesters', 'BASE TABLE', 'InnoDB', 10, 'Compact', 2, 8192, 16384, 0, 0, 0, 3, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'sessions', 'BASE TABLE', 'InnoDB', 10, 'Compact', 4, 4096, 16384, 0, 0, 0, 7, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'subjects', 'BASE TABLE', 'InnoDB', 10, 'Compact', 18, 910, 16384, 0, 0, 0, 22, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'titles', 'BASE TABLE', 'InnoDB', 10, 'Compact', 2, 8192, 16384, 0, 0, 0, 3, '2012-10-18 10:52:05', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'jscheduler', 'users', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 0, 0, 7, '2012-10-18 10:52:06', NULL, NULL, 'latin1_swedish_ci', NULL, '', 'InnoDB free: 3072 kB'),
(NULL, 'mysql', 'columns_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 227994731135631359, 1024, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_bin', NULL, '', 'Column privileges'),
(NULL, 'mysql', 'db', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 2, 438, 876, 123286039799267327, 4096, 0, NULL, '2008-01-11 23:23:56', '2008-01-11 17:23:58', '2008-01-11 23:23:58', 'utf8_bin', NULL, '', 'Database privileges'),
(NULL, 'mysql', 'func', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 162974011515469823, 1024, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_bin', NULL, '', 'User defined functions'),
(NULL, 'mysql', 'help_category', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 36, 581, 20916, 163536961468891135, 3072, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'help categories'),
(NULL, 'mysql', 'help_keyword', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 401, 197, 78997, 55450570411999231, 14336, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'help keywords'),
(NULL, 'mysql', 'help_relation', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 825, 9, 7425, 2533274790395903, 16384, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:24:00', NULL, 'utf8_general_ci', NULL, '', 'keyword-topic relation'),
(NULL, 'mysql', 'help_topic', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 475, 730, 347064, 281474976710655, 17408, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'help topics'),
(NULL, 'mysql', 'host', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 109775240917155839, 1024, 0, NULL, '2008-01-11 23:23:56', '2008-01-11 17:23:56', NULL, 'utf8_bin', NULL, '', 'Host privileges;  Merged with database privileges'),
(NULL, 'mysql', 'proc', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2008-01-11 23:23:58', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Stored Procedures'),
(NULL, 'mysql', 'procs_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239253730204057599, 1024, 0, NULL, '2008-01-11 23:23:58', '2008-01-11 17:23:58', NULL, 'utf8_bin', NULL, '', 'Procedure privileges'),
(NULL, 'mysql', 'tables_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239535205180768255, 1024, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_bin', NULL, '', 'Table privileges'),
(NULL, 'mysql', 'time_zone', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 1970324836974591, 1024, 0, 1, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Time zones'),
(NULL, 'mysql', 'time_zone_leap_second', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2008-01-11 23:23:58', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Leap seconds information for time zones'),
(NULL, 'mysql', 'time_zone_name', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 55450570411999231, 1024, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Time zone names'),
(NULL, 'mysql', 'time_zone_transition', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 4785074604081151, 1024, 0, NULL, '2008-01-11 23:23:57', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Time zone transitions'),
(NULL, 'mysql', 'time_zone_transition_type', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 10696049115004927, 1024, 0, NULL, '2008-01-11 23:23:58', '2008-01-11 17:23:58', NULL, 'utf8_general_ci', NULL, '', 'Time zone transition types'),
(NULL, 'mysql', 'user', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 51, 256, 281474976710655, 2048, 0, NULL, '2008-01-11 23:23:56', '2008-01-11 17:23:58', NULL, 'utf8_bin', NULL, '', 'Users and global privileges');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'account_info', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'courses', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'ins_time', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'ins_time_availability', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'instructors', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'instructors_subjects', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'lab_availability', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'laboratories', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'mes_notifs', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'messages', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'news', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'notifs', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'protected_acc', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'room_availability', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'rooms', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'schedule', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'school', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'sections', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'semesters', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'sessions', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'subjects', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'titles', 'PRIMARY KEY'),
(NULL, 'jscheduler', 'PRIMARY', 'jscheduler', 'users', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'columns_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'db', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'func', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_category', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_category', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_keyword', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_keyword', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_relation', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_topic', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_topic', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'host', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'proc', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'procs_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'tables_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_leap_second', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_name', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition_type', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'user', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''root''@''localhost''', NULL, 'SELECT', 'YES'),
('''root''@''localhost''', NULL, 'INSERT', 'YES'),
('''root''@''localhost''', NULL, 'UPDATE', 'YES'),
('''root''@''localhost''', NULL, 'DELETE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE', 'YES'),
('''root''@''localhost''', NULL, 'DROP', 'YES'),
('''root''@''localhost''', NULL, 'RELOAD', 'YES'),
('''root''@''localhost''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''localhost''', NULL, 'PROCESS', 'YES'),
('''root''@''localhost''', NULL, 'FILE', 'YES'),
('''root''@''localhost''', NULL, 'REFERENCES', 'YES'),
('''root''@''localhost''', NULL, 'INDEX', 'YES'),
('''root''@''localhost''', NULL, 'ALTER', 'YES'),
('''root''@''localhost''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''localhost''', NULL, 'SUPER', 'YES'),
('''root''@''localhost''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''localhost''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''localhost''', NULL, 'EXECUTE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''localhost''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''localhost''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''localhost''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE USER', 'YES'),
('''root''@''production.mysql.com''', NULL, 'SELECT', 'YES'),
('''root''@''production.mysql.com''', NULL, 'INSERT', 'YES'),
('''root''@''production.mysql.com''', NULL, 'UPDATE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'DELETE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'CREATE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'DROP', 'YES'),
('''root''@''production.mysql.com''', NULL, 'RELOAD', 'YES'),
('''root''@''production.mysql.com''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''production.mysql.com''', NULL, 'PROCESS', 'YES'),
('''root''@''production.mysql.com''', NULL, 'FILE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'REFERENCES', 'YES'),
('''root''@''production.mysql.com''', NULL, 'INDEX', 'YES'),
('''root''@''production.mysql.com''', NULL, 'ALTER', 'YES'),
('''root''@''production.mysql.com''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''production.mysql.com''', NULL, 'SUPER', 'YES'),
('''root''@''production.mysql.com''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''production.mysql.com''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''production.mysql.com''', NULL, 'EXECUTE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''production.mysql.com''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''production.mysql.com''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''production.mysql.com''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''production.mysql.com''', NULL, 'CREATE USER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SELECT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INSERT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'UPDATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DELETE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DROP', 'YES'),
('''root''@''127.0.0.1''', NULL, 'RELOAD', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''127.0.0.1''', NULL, 'PROCESS', 'YES'),
('''root''@''127.0.0.1''', NULL, 'FILE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REFERENCES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INDEX', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SUPER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'EXECUTE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE USER', 'YES'),
('''''@''localhost''', NULL, 'USAGE', 'NO'),
('''''@''production.mysql.com''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VIEWS`
--

--
-- Database: `jscheduler`
--
CREATE DATABASE `jscheduler` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jscheduler`;

-- --------------------------------------------------------

--
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `extra_info` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `reset_username` varchar(50) NOT NULL,
  `reset_password` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`id`, `uid`, `extra_info`, `type`, `image`, `reset_username`, `reset_password`) VALUES
(1, 35, '''', '1', '1', 'JAvengoza', 'JAvengoza'),
(2, 36, '''', '1', '1', 'ajmer', 'cee5226368');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `titleid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `school_id`, `title`, `coursename`, `titleid`) VALUES
(1, 1, '2 yrs.', 'Computer Science', 1),
(3, 1, 'B.S', 'Computer Science', 2),
(6, 1, '2 yrs.', 'Computer Technology', 1),
(7, 1, 'B.S', 'Computer Engineering', 2),
(8, 1, '2 yrs.', 'Business Information Management', 1),
(9, 1, 'B.S', 'Entrepreneur', 2),
(12, 2, '2 Years', 'TEST', 1),
(13, 2, 'B.S', 'asd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ins_time`
--

CREATE TABLE `ins_time` (
  `id` int(11) NOT NULL auto_increment,
  `inst_id` int(11) NOT NULL,
  `day` varchar(3) NOT NULL,
  `time1` int(11) NOT NULL,
  `type1` varchar(2) NOT NULL,
  `time2` int(11) NOT NULL,
  `type2` varchar(2) NOT NULL,
  `sem` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `ins_time`
--

INSERT INTO `ins_time` (`id`, `inst_id`, `day`, `time1`, `type1`, `time2`, `type2`, `sem`) VALUES
(4, 2, 'Mon', 10, 'AM', 11, 'AM', 1),
(5, 2, 'Mon', 11, 'AM', 12, 'PM', 1),
(6, 2, 'Mon', 12, 'PM', 1, 'PM', 1),
(7, 2, 'Mon', 13, 'PM', 2, 'PM', 1),
(8, 2, 'Mon', 14, 'PM', 3, 'PM', 1),
(9, 2, 'Mon', 3, 'PM', 4, 'PM', 1),
(10, 2, 'Mon', 4, 'PM', 5, 'PM', 1),
(11, 2, 'Mon', 5, 'PM', 6, 'PM', 1),
(12, 2, 'Mon', 6, 'PM', 7, 'PM', 1),
(14, 2, 'Tue', 3, 'PM', 4, 'PM', 1),
(15, 2, 'Tue', 4, 'PM', 5, 'PM', 1),
(16, 2, 'Tue', 5, 'PM', 6, 'PM', 1),
(17, 2, 'Tue', 6, 'PM', 7, 'PM', 1),
(23, 2, 'Thu', 13, 'PM', 2, 'PM', 1),
(25, 2, 'Thu', 14, 'PM', 3, 'PM', 1),
(26, 5, 'Mon', 7, 'AM', 8, 'AM', 1),
(27, 5, 'Tue', 7, 'AM', 8, 'AM', 1),
(28, 5, 'Wed', 7, 'AM', 8, 'AM', 1),
(29, 5, 'Thu', 7, 'AM', 8, 'AM', 1),
(30, 5, 'Fri', 7, 'AM', 8, 'AM', 1),
(31, 5, 'Sat', 7, 'AM', 8, 'AM', 1),
(32, 5, 'Sat', 8, 'AM', 9, 'AM', 1),
(33, 5, 'Fri', 8, 'AM', 9, 'AM', 1),
(34, 5, 'Thu', 8, 'AM', 9, 'AM', 1),
(35, 5, 'Wed', 8, 'AM', 9, 'AM', 1),
(36, 5, 'Tue', 8, 'AM', 9, 'AM', 1),
(37, 5, 'Mon', 8, 'AM', 9, 'AM', 1),
(38, 5, 'Mon', 9, 'AM', 10, 'AM', 1),
(39, 5, 'Tue', 9, 'AM', 10, 'AM', 1),
(40, 5, 'Wed', 9, 'AM', 10, 'AM', 1),
(41, 5, 'Thu', 9, 'AM', 10, 'AM', 1),
(42, 5, 'Fri', 9, 'AM', 10, 'AM', 1),
(43, 5, 'Sat', 9, 'AM', 10, 'AM', 1),
(44, 5, 'Sat', 10, 'AM', 11, 'AM', 1),
(45, 5, 'Fri', 10, 'AM', 11, 'AM', 1),
(46, 5, 'Thu', 10, 'AM', 11, 'AM', 1),
(47, 5, 'Wed', 10, 'AM', 11, 'AM', 1),
(48, 5, 'Tue', 10, 'AM', 11, 'AM', 1),
(49, 5, 'Mon', 10, 'AM', 11, 'AM', 1),
(50, 3, 'Mon', 11, 'AM', 12, 'PM', 1),
(51, 3, 'Mon', 12, 'PM', 1, 'PM', 1),
(52, 3, 'Mon', 13, 'PM', 2, 'PM', 1),
(53, 3, 'Mon', 14, 'PM', 3, 'PM', 1),
(54, 3, 'Tue', 14, 'PM', 3, 'PM', 1),
(55, 3, 'Tue', 13, 'PM', 2, 'PM', 1),
(56, 3, 'Tue', 12, 'PM', 1, 'PM', 1),
(57, 3, 'Wed', 11, 'AM', 12, 'PM', 1),
(58, 3, 'Wed', 13, 'PM', 2, 'PM', 1),
(59, 3, 'Wed', 14, 'PM', 3, 'PM', 1),
(60, 3, 'Thu', 14, 'PM', 3, 'PM', 1),
(61, 3, 'Fri', 12, 'PM', 1, 'PM', 1),
(62, 3, 'Thu', 12, 'PM', 1, 'PM', 1),
(63, 3, 'Fri', 14, 'PM', 3, 'PM', 1),
(64, 3, 'Sat', 11, 'AM', 12, 'PM', 1),
(65, 3, 'Sat', 13, 'PM', 2, 'PM', 1),
(66, 4, 'Tue', 7, 'AM', 8, 'AM', 1),
(67, 4, 'Wed', 8, 'AM', 9, 'AM', 1),
(70, 4, 'Mon', 8, 'AM', 9, 'AM', 1),
(74, 4, 'Fri', 8, 'AM', 9, 'AM', 1),
(75, 4, 'Thu', 9, 'AM', 10, 'AM', 1),
(76, 4, 'Sat', 9, 'AM', 10, 'AM', 1),
(77, 4, 'Sat', 7, 'AM', 8, 'AM', 1),
(78, 4, 'Fri', 10, 'AM', 11, 'AM', 1),
(80, 4, 'Sat', 11, 'AM', 12, 'PM', 1),
(81, 4, 'Thu', 11, 'AM', 12, 'PM', 1),
(82, 4, 'Wed', 10, 'AM', 11, 'AM', 1),
(83, 4, 'Tue', 9, 'AM', 10, 'AM', 1),
(84, 4, 'Mon', 10, 'AM', 11, 'AM', 1),
(85, 4, 'Tue', 11, 'AM', 12, 'PM', 1),
(86, 4, 'Mon', 12, 'PM', 1, 'PM', 1),
(87, 4, 'Wed', 12, 'PM', 1, 'PM', 1),
(88, 4, 'Fri', 12, 'PM', 1, 'PM', 1),
(89, 4, 'Sat', 13, 'PM', 2, 'PM', 1),
(90, 4, 'Thu', 13, 'PM', 2, 'PM', 1),
(91, 4, 'Tue', 13, 'PM', 2, 'PM', 1),
(92, 4, 'Mon', 14, 'PM', 3, 'PM', 1),
(93, 4, 'Wed', 14, 'PM', 3, 'PM', 1),
(94, 4, 'Fri', 14, 'PM', 3, 'PM', 1),
(95, 4, 'Thu', 3, 'PM', 4, 'PM', 1),
(96, 4, 'Sat', 3, 'PM', 4, 'PM', 1),
(97, 4, 'Tue', 3, 'PM', 4, 'PM', 1),
(98, 4, 'Mon', 4, 'PM', 5, 'PM', 1),
(99, 4, 'Wed', 4, 'PM', 5, 'PM', 1),
(100, 4, 'Fri', 4, 'PM', 5, 'PM', 1),
(103, 2, 'Tue', 8, 'AM', 9, 'AM', 1),
(104, 2, 'Thu', 10, 'AM', 11, 'AM', 1),
(105, 2, 'Thu', 11, 'AM', 12, 'PM', 1),
(106, 2, 'Thu', 12, 'PM', 1, 'PM', 1),
(107, 2, 'Thu', 13, 'PM', 2, 'PM', 1),
(108, 2, 'Thu', 14, 'PM', 3, 'PM', 1),
(109, 2, 'Thu', 3, 'PM', 4, 'PM', 1),
(110, 2, 'Mon', 7, 'AM', 8, 'AM', 1),
(111, 2, 'Mon', 9, 'AM', 10, 'AM', 1),
(112, 2, 'Mon', 8, 'AM', 9, 'AM', 1),
(115, 2, 'Thu', 7, 'AM', 8, 'AM', 1),
(116, 2, 'Thu', 8, 'AM', 9, 'AM', 1),
(117, 2, 'Thu', 9, 'AM', 10, 'AM', 1),
(118, 2, 'Fri', 7, 'AM', 8, 'AM', 1),
(119, 2, 'Fri', 8, 'AM', 9, 'AM', 1),
(120, 2, 'Fri', 9, 'AM', 10, 'AM', 1),
(121, 2, 'Sat', 7, 'AM', 8, 'AM', 1),
(122, 2, 'Sat', 8, 'AM', 9, 'AM', 1),
(123, 2, 'Sat', 9, 'AM', 10, 'AM', 1),
(124, 2, 'Tue', 7, 'AM', 8, 'AM', 1),
(125, 2, 'Tue', 10, 'AM', 11, 'AM', 1),
(126, 2, 'Tue', 9, 'AM', 10, 'AM', 1),
(132, 35, 'Mon', 7, 'AM', 8, 'AM', 1),
(133, 35, 'Mon', 8, 'AM', 9, 'AM', 1),
(134, 35, 'Tue', 7, 'AM', 8, 'AM', 1),
(135, 35, 'Tue', 8, 'AM', 9, 'AM', 1),
(136, 35, 'Mon', 9, 'AM', 10, 'AM', 1),
(137, 35, 'Mon', 10, 'AM', 11, 'AM', 1),
(138, 35, 'Tue', 9, 'AM', 10, 'AM', 1),
(139, 35, 'Tue', 10, 'AM', 11, 'AM', 1),
(140, 35, 'Wed', 8, 'AM', 9, 'AM', 1),
(141, 35, 'Wed', 7, 'AM', 8, 'AM', 1),
(142, 35, 'Wed', 9, 'AM', 10, 'AM', 1),
(143, 35, 'Wed', 10, 'AM', 11, 'AM', 1),
(144, 35, 'Thu', 10, 'AM', 11, 'AM', 1),
(145, 35, 'Thu', 9, 'AM', 10, 'AM', 1),
(146, 35, 'Thu', 7, 'AM', 8, 'AM', 1),
(147, 35, 'Thu', 8, 'AM', 9, 'AM', 1),
(148, 35, 'Fri', 7, 'AM', 8, 'AM', 1),
(149, 35, 'Fri', 8, 'AM', 9, 'AM', 1),
(150, 35, 'Fri', 9, 'AM', 10, 'AM', 1),
(151, 35, 'Fri', 10, 'AM', 11, 'AM', 1),
(152, 35, 'Sat', 10, 'AM', 11, 'AM', 1),
(153, 35, 'Sat', 9, 'AM', 10, 'AM', 1),
(154, 35, 'Sat', 8, 'AM', 9, 'AM', 1),
(155, 35, 'Sat', 7, 'AM', 8, 'AM', 1),
(156, 36, 'Mon', 7, 'AM', 8, 'AM', 1),
(157, 36, 'Tue', 8, 'AM', 9, 'AM', 1),
(158, 36, 'Wed', 8, 'AM', 9, 'AM', 1),
(159, 36, 'Wed', 9, 'AM', 10, 'AM', 1),
(160, 36, 'Mon', 9, 'AM', 10, 'AM', 1),
(161, 36, 'Tue', 9, 'AM', 10, 'AM', 1),
(162, 36, 'Tue', 10, 'AM', 11, 'AM', 1),
(163, 36, 'Mon', 8, 'AM', 9, 'AM', 1),
(164, 36, 'Mon', 10, 'AM', 11, 'AM', 1),
(165, 36, 'Wed', 11, 'AM', 12, 'PM', 1),
(166, 36, 'Tue', 11, 'AM', 12, 'PM', 1),
(167, 36, 'Mon', 11, 'AM', 12, 'PM', 1),
(168, 36, 'Tue', 12, 'PM', 1, 'PM', 1),
(169, 36, 'Thu', 7, 'AM', 8, 'AM', 1),
(170, 36, 'Thu', 8, 'AM', 9, 'AM', 1),
(171, 36, 'Thu', 9, 'AM', 10, 'AM', 1),
(172, 36, 'Thu', 10, 'AM', 11, 'AM', 1),
(173, 36, 'Thu', 11, 'AM', 12, 'PM', 1),
(174, 36, 'Thu', 12, 'PM', 1, 'PM', 1),
(175, 36, 'Fri', 8, 'AM', 9, 'AM', 1),
(176, 36, 'Fri', 9, 'AM', 10, 'AM', 1),
(177, 36, 'Fri', 10, 'AM', 11, 'AM', 1),
(178, 36, 'Fri', 11, 'AM', 12, 'PM', 1),
(179, 36, 'Fri', 12, 'PM', 1, 'PM', 1),
(180, 36, 'Sat', 9, 'AM', 10, 'AM', 1),
(181, 36, 'Sat', 10, 'AM', 11, 'AM', 1),
(182, 36, 'Sat', 11, 'AM', 12, 'PM', 1),
(183, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(184, 36, 'Tue', 14, 'PM', 3, 'PM', 1),
(185, 36, 'Mon', 13, 'PM', 2, 'PM', 1),
(186, 36, 'Thu', 13, 'PM', 2, 'PM', 1),
(187, 36, 'Thu', 14, 'PM', 3, 'PM', 1),
(188, 36, 'Wed', 14, 'PM', 3, 'PM', 1),
(189, 36, 'Mon', 14, 'PM', 3, 'PM', 1),
(192, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(193, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(194, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(195, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(196, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(197, 36, 'Mon', 13, 'PM', 2, 'PM', 1),
(199, 36, 'Mon', 4, 'PM', 5, 'PM', 1),
(200, 36, 'Mon', 5, 'PM', 6, 'PM', 1),
(202, 36, 'Mon', 6, 'PM', 7, 'PM', 1),
(203, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(204, 36, 'Wed', 13, 'PM', 2, 'PM', 1),
(206, 36, 'Wed', 12, 'PM', 1, 'PM', 1),
(209, 36, 'Wed', 1, 'PM', 2, 'PM', 1),
(210, 36, 'Thu', 2, 'PM', 3, 'PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ins_time_availability`
--

CREATE TABLE `ins_time_availability` (
  `id` int(11) NOT NULL auto_increment,
  `inst_id` int(11) NOT NULL,
  `inst_time_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `available` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=156 ;

--
-- Dumping data for table `ins_time_availability`
--

INSERT INTO `ins_time_availability` (`id`, `inst_id`, `inst_time_id`, `subj_id`, `sec_id`, `sem`, `school_id`, `available`) VALUES
(106, 5, 27, 2, 2, 1, 1, 'false'),
(107, 2, 118, 1, 2, 1, 1, 'false'),
(108, 5, 36, 2, 2, 1, 1, 'false'),
(109, 35, 149, 21, 2, 1, 1, 'false'),
(110, 5, 39, 2, 2, 1, 1, 'false'),
(111, 2, 117, 1, 2, 1, 1, 'false'),
(112, 35, 150, 21, 2, 1, 1, 'false'),
(113, 2, 104, 1, 2, 1, 1, 'false'),
(114, 35, 151, 21, 2, 1, 1, 'false'),
(115, 2, 124, 1, 4, 1, 1, 'false'),
(116, 5, 31, 2, 4, 1, 1, 'false'),
(117, 2, 103, 1, 4, 1, 1, 'false'),
(118, 4, 67, 9, 4, 1, 1, 'false'),
(119, 35, 154, 21, 4, 1, 1, 'false'),
(120, 2, 126, 1, 4, 1, 1, 'false'),
(121, 5, 40, 2, 4, 1, 1, 'false'),
(122, 35, 153, 21, 4, 1, 1, 'false'),
(123, 5, 47, 2, 4, 1, 1, 'false'),
(124, 35, 152, 21, 4, 1, 1, 'false'),
(125, 35, 134, 21, 7, 1, 1, 'false'),
(126, 5, 28, 2, 7, 1, 1, 'false'),
(127, 2, 115, 1, 7, 1, 1, 'false'),
(128, 35, 135, 21, 7, 1, 1, 'false'),
(129, 2, 116, 1, 7, 1, 1, 'false'),
(130, 5, 48, 2, 7, 1, 1, 'false'),
(131, 4, 82, 9, 7, 1, 1, 'false'),
(132, 35, 144, 21, 7, 1, 1, 'false'),
(133, 4, 66, 4, 6, 1, 1, 'false'),
(134, 5, 29, 15, 6, 1, 1, 'false'),
(135, 2, 121, 12, 6, 1, 1, 'false'),
(136, 4, 70, 13, 6, 1, 1, 'false'),
(137, 5, 34, 15, 6, 1, 1, 'false'),
(138, 4, 74, 11, 6, 1, 1, 'false'),
(139, 2, 122, 12, 6, 1, 1, 'false'),
(140, 5, 38, 14, 6, 1, 1, 'false'),
(141, 4, 83, 10, 6, 1, 1, 'false'),
(142, 4, 75, 4, 6, 1, 1, 'false'),
(143, 2, 123, 12, 6, 1, 1, 'false'),
(144, 5, 49, 14, 6, 1, 1, 'false'),
(145, 4, 78, 13, 6, 1, 1, 'false'),
(146, 5, 44, 15, 6, 1, 1, 'false'),
(147, 2, 5, 1, 3, 1, 1, 'false'),
(148, 36, 173, 21, 3, 1, 1, 'false'),
(149, 4, 80, 9, 3, 1, 1, 'false'),
(150, 2, 6, 1, 3, 1, 1, 'false'),
(151, 3, 62, 2, 3, 1, 1, 'false'),
(152, 2, 14, 1, 8, 1, 1, 'false'),
(153, 4, 96, 9, 8, 1, 1, 'false'),
(154, 2, 15, 1, 8, 1, 1, 'false'),
(155, 2, 16, 1, 8, 1, 1, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `firstname`, `lastname`, `gender`, `image`, `school_id`) VALUES
(1, 'Nonelia', 'Nicanor', 'F', '', 1),
(2, 'Domingo', 'Martinez', 'M', '', 1),
(3, 'Hazel', 'Loverez', 'F', '', 1),
(4, 'Leonell', 'Espina', 'M', '', 1),
(5, 'Alejandro', 'Bartolome', 'M', '', 1),
(7, 'test', 'test', 'M', '', 1),
(8, 'asd', 'asd', 'M', '', 2),
(9, 'asd', 'das', 'F', '', 2),
(15, 'asd', 'asd', 'M', '', 1),
(16, 'asddd', 'asd', 'F', '', 1),
(17, 'fhfghfgh', 'fhhf', 'M', '', 1),
(18, 'mbnm', 'm', 'n', '', 1),
(35, 'Jomer', 'Avengoza', 'M', '', 1),
(36, 'asdsda', 'jmer', 'M', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `instructors_subjects`
--

CREATE TABLE `instructors_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `inst_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `instructors_subjects`
--

INSERT INTO `instructors_subjects` (`id`, `inst_id`, `subj_id`) VALUES
(1, 2, 4),
(11, 2, 1),
(12, 2, 6),
(13, 3, 3),
(14, 5, 10),
(15, 5, 12),
(19, 0, 9),
(20, 0, 2),
(21, 0, 13),
(22, 18, 5),
(23, 18, 14),
(26, 18, 7),
(27, 18, 6),
(28, 3, 1),
(29, 2, 12),
(30, 5, 2),
(31, 5, 3),
(32, 4, 2),
(34, 5, 14),
(35, 5, 15),
(36, 3, 2),
(37, 3, 14),
(38, 3, 15),
(39, 7, 1),
(40, 7, 9),
(41, 7, 11),
(42, 7, 12),
(43, 7, 13),
(44, 7, 10),
(45, 7, 4),
(46, 7, 2),
(47, 7, 3),
(48, 7, 5),
(49, 7, 15),
(50, 7, 7),
(51, 7, 6),
(52, 7, 14),
(53, 15, 1),
(54, 15, 2),
(55, 15, 3),
(56, 15, 10),
(57, 15, 4),
(58, 15, 9),
(59, 15, 11),
(60, 15, 12),
(61, 15, 13),
(62, 15, 5),
(63, 15, 15),
(64, 15, 7),
(65, 16, 15),
(66, 16, 5),
(67, 16, 7),
(68, 16, 6),
(69, 16, 14),
(70, 16, 11),
(71, 4, 1),
(72, 4, 3),
(73, 4, 9),
(74, 4, 4),
(75, 4, 10),
(76, 4, 11),
(77, 4, 12),
(78, 4, 13),
(79, 4, 14),
(80, 4, 15),
(81, 4, 5),
(82, 4, 7),
(83, 4, 6),
(84, 35, 5),
(85, 35, 19),
(86, 35, 21),
(87, 36, 21),
(88, 36, 1),
(89, 36, 2),
(90, 36, 3),
(97, 36, 15);

-- --------------------------------------------------------

--
-- Table structure for table `lab_availability`
--

CREATE TABLE `lab_availability` (
  `id` int(11) NOT NULL auto_increment,
  `lab_id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  `day` varchar(3) NOT NULL,
  `time1` int(11) NOT NULL,
  `type1` varchar(2) NOT NULL,
  `time2` int(11) NOT NULL,
  `type2` varchar(2) NOT NULL,
  `school_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `lab_availability`
--

INSERT INTO `lab_availability` (`id`, `lab_id`, `courseid`, `sec_id`, `subj_id`, `day`, `time1`, `type1`, `time2`, `type2`, `school_id`, `sem`) VALUES
(41, 1, 1, 2, 1, 'Fri', 7, 'AM', 8, 'AM', 1, 1),
(42, 1, 1, 2, 2, 'Fri', 8, 'AM', 9, 'AM', 1, 1),
(43, 1, 1, 2, 1, 'Thu', 9, 'AM', 10, 'AM', 1, 1),
(44, 1, 1, 2, 2, 'Fri', 9, 'AM', 10, 'AM', 1, 1),
(45, 1, 1, 4, 1, 'Tue', 7, 'AM', 8, 'AM', 1, 1),
(46, 1, 1, 4, 1, 'Tue', 8, 'AM', 9, 'AM', 1, 1),
(47, 1, 1, 4, 2, 'Sat', 8, 'AM', 9, 'AM', 1, 1),
(48, 1, 1, 4, 2, 'Sat', 9, 'AM', 10, 'AM', 1, 1),
(49, 2, 1, 7, 2, 'Tue', 7, 'AM', 8, 'AM', 1, 1),
(50, 1, 1, 7, 1, 'Thu', 7, 'AM', 8, 'AM', 1, 1),
(51, 2, 1, 7, 2, 'Tue', 8, 'AM', 9, 'AM', 1, 1),
(52, 1, 1, 7, 1, 'Thu', 8, 'AM', 9, 'AM', 1, 1),
(53, 1, 1, 3, 1, 'Mon', 11, 'AM', 12, 'PM', 1, 1),
(54, 1, 1, 3, 2, 'Thu', 11, 'AM', 12, 'PM', 1, 1),
(55, 1, 1, 3, 1, 'Mon', 12, 'PM', 1, 'PM', 1, 1),
(56, 1, 1, 3, 2, 'Sat', 1, 'PM', 2, 'PM', 1, 1),
(57, 1, 1, 8, 1, 'Tue', 3, 'PM', 4, 'PM', 1, 1),
(58, 1, 1, 8, 1, 'Tue', 4, 'PM', 5, 'PM', 1, 1),
(59, 1, 1, 8, 2, 'Fri', 4, 'PM', 5, 'PM', 1, 1),
(60, 1, 1, 8, 2, 'Fri', 5, 'PM', 6, 'PM', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `laboratories`
--

CREATE TABLE `laboratories` (
  `id` int(11) NOT NULL auto_increment,
  `lab` varchar(255) NOT NULL,
  `bldg` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `laboratories`
--

INSERT INTO `laboratories` (`id`, `lab`, `bldg`, `school_id`) VALUES
(1, 'Laboratory1', 'ew', 1),
(2, 'Laboratory2', 'test', 1),
(3, 'Laboratory3', 'a', 1),
(4, 'Laboratory4', 'n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mes_notifs`
--

CREATE TABLE `mes_notifs` (
  `id` int(11) NOT NULL auto_increment,
  `j_id` int(11) NOT NULL,
  `mes_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mes_notifs`
--


-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL auto_increment,
  `sender_type` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `recipient_type` int(11) NOT NULL,
  `msg_to` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` varchar(12) NOT NULL,
  `time` varchar(5) NOT NULL,
  `unread` varchar(10) NOT NULL,
  `school_id` int(11) NOT NULL,
  `conv_id` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_type`, `msg_from`, `recipient_type`, `msg_to`, `msg`, `date`, `time`, `unread`, `school_id`, `conv_id`) VALUES
(1, 0, 1, 1, '2', 'valid testing asdasasd\r\nasdasdasdasd\r\nasdasdasd\r\nasdaadddddddddddddddddddddddddddd\r\nasdasddddddddddddddddd\r\nasdddddddd', 'Oct-13-2012', '12-10', 'true', 1, '8b1385a655a59ec9e8522770009373c9'),
(2, 0, 1, 1, '2_1_', 'new', 'Oct-13-2012', '02-54', 'true', 1, '457c20bf9107553e335521eb59293a4a'),
(3, 0, 1, 1, '2_1_', 'new', 'Oct-13-2012', '02-57', 'true', 1, '457c20bf9107553e335521eb59293a4a'),
(4, 0, 1, 1, '2_1_', 'new', 'Oct-13-2012', '02-59', 'true', 1, '457c20bf9107553e335521eb59293a4a'),
(5, 0, 1, 1, '35_2_1_', 'asdasdsad', 'Oct-13-2012', '03-00', 'true', 1, '2767cde379f36f27dee83e801f6fd2c6'),
(6, 0, 1, 1, '36_', 'sample', 'Oct-14-2012', '12-10', 'true', 1, '276f73147179e6a9385706d83c241eac'),
(8, 1, 36, 1, '1_', 'test', 'Oct-14-2012', '12-46', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(9, 1, 36, 1, '1_', 'a', 'Oct-14-2012', '03-32', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(10, 1, 36, 1, '1_', 'new', 'Oct-14-2012', '', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(11, 1, 36, 1, '1_', 'test', 'Oct-14-2012', '', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(12, 1, 36, 1, '1_', 'a', 'Oct-14-2012', '', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(13, 1, 36, 1, '1_', '<img src="../images/emoticons/smile.png" style="width:25px;height:25px;" />', 'Oct-14-2012', '', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(14, 1, 36, 1, '1_', 'nooooooooo', 'Oct-14-2012', '', 'true', 1, '6098f37354389fbe3977b8a11195b7a1'),
(15, 1, 35, 1, '36_', 'test', 'Oct-14-2012', '04-12', 'true', 1, 'feddb46ea1c750a83269d4233ccf636f'),
(18, 1, 35, 1, '36_', 'game', 'Oct-14-2012', '', 'true', 1, 'feddb46ea1c750a83269d4233ccf636f'),
(21, 1, 36, 1, '35_', 'aasd', 'Oct-14-2012', '04-23', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(25, 1, 35, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(26, 1, 35, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(27, 1, 35, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(28, 1, 35, 1, '36', 'asd', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(29, 1, 35, 1, '36', 'vbbbbbbb', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(30, 1, 35, 1, '36', 'vbbbbbbb', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(32, 1, 36, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(33, 1, 35, 1, '36_', 'b', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(34, 1, 36, 1, '35_', 'c', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(35, 1, 36, 1, '35_', 'dsaasdasd', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(36, 1, 36, 1, '35_', 'ccccccccccc', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(37, 1, 35, 1, '36_', 'sabe?', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(38, 1, 36, 1, '35_', 'ou sabe daw', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(39, 1, 35, 1, '36_', 'test', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(40, 1, 35, 1, '36_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(41, 1, 36, 1, '', 'b', 'Oct-14-2012', '', 'true', 1, 'undefined'),
(42, 1, 36, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(43, 1, 35, 1, '36_', 'n', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(44, 1, 35, 1, '36_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(45, 1, 36, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(46, 1, 36, 1, '35_', 'vvvvv', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(47, 1, 35, 1, '36_', 'q', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(48, 1, 36, 1, '35_', 'qqqqqq', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(49, 1, 35, 1, '36_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(50, 1, 35, 1, '36_', 'vvvvv', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(51, 1, 36, 1, '35_', 'bbbbb', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(52, 1, 36, 1, '35_', 'new', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(53, 1, 35, 1, '36_', 'b', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(54, 1, 36, 1, '35_', 'a', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(55, 1, 35, 1, '36_', 'c', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(56, 1, 36, 1, '35_', 'd', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(57, 1, 35, 1, '36_', 'potang ina mo', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069'),
(58, 1, 36, 1, '35_', 'gago', 'Oct-14-2012', '', 'true', 1, 'cc2f4482d0de938ce60363310f35d069');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `subject` text NOT NULL,
  `news` text NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `publish` varchar(10) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `subject`, `news`, `day`, `month`, `year`, `publish`, `school_id`) VALUES
(1, '<p>Modified News Teaser 21</p>', '<p style="text-align: center; "><img alt="" src="/thesis/public/images/images/database_diagram.png" style="height: 400px; width: 317px; float: right; " />DATABASE RELATIONSHIP DIAGRAM</p><p style="text-align: center; ">test abc def</p>', 28, 8, 2012, 'false', 1),
(2, '<p>Teaser1</p>', '<p>New Uploaded Image. Functions are Subject for testing</p><p>THOR bading badsdsaadssdaasddassadasdsadasdsadasd<img alt="" src="/thesis/public/images/images/04f1f2ba287e2dfc0525b3d548a97e3a.jpg" style="height: 150px; width: 148px; " /></p><p>bading</p>', 28, 8, 2012, 'false', 1),
(3, '<p>New test</p>', '<p>fucking test</p>', 29, 8, 2012, 'false', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifs`
--

CREATE TABLE `notifs` (
  `id` int(11) NOT NULL auto_increment,
  `from` varchar(25) NOT NULL,
  `to` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `ids` varchar(255) NOT NULL,
  `id_type` varchar(10) NOT NULL,
  `reads` varchar(255) NOT NULL,
  `school_id` varchar(1) NOT NULL,
  `admin_read` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notifs`
--

INSERT INTO `notifs` (`id`, `from`, `to`, `subject`, `ids`, `id_type`, `reads`, `school_id`, `admin_read`) VALUES
(1, '1', 'instructors', 'Admin is asking for instructor deletion.', '35_', '''', '1_2_3_4_5_7_8_9_15_16_17_18_35_', '1', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `protected_acc`
--

CREATE TABLE `protected_acc` (
  `inst_id` int(11) NOT NULL,
  `protect` varchar(8) NOT NULL,
  PRIMARY KEY  (`inst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protected_acc`
--

INSERT INTO `protected_acc` (`inst_id`, `protect`) VALUES
(1, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `room_availability`
--

CREATE TABLE `room_availability` (
  `id` int(11) NOT NULL auto_increment,
  `room_id` int(11) NOT NULL,
  `time_ses_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=348 ;

--
-- Dumping data for table `room_availability`
--

INSERT INTO `room_availability` (`id`, `room_id`, `time_ses_id`, `school_id`, `sem`) VALUES
(329, 6, 5, 1, 2),
(342, 1, 5, 1, 1),
(343, 2, 5, 1, 1),
(344, 3, 5, 1, 1),
(345, 4, 5, 1, 1),
(346, 5, 5, 1, 1),
(347, 7, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL auto_increment,
  `roomname` varchar(25) NOT NULL,
  `bldg` varchar(50) NOT NULL,
  `restrict_to` varchar(255) NOT NULL,
  `courseid` varchar(255) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `roomname`, `bldg`, `restrict_to`, `courseid`, `school_id`) VALUES
(1, 'test', 'test', 'B.S Computer Science_', '3_', 1),
(2, '101', 'Main', ' _', '0_', 1),
(3, '102', 'Main', '2 yrs. Business Information Management_', '8_', 1),
(4, '103', 'Main', '2 yrs. Computer Science_', '1_', 1),
(5, 'Tech Lab', 'Main', 'B.S Entrepreneur_', '9_', 1),
(6, '201', 'Main', '2 yrs. Business Information Management_', '8_', 1),
(7, '202', 'Main', '2 yrs. Business Information Management_', '8_', 1),
(9, 'new', 'new', 'B.S Computer Science_', '3_', 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `day` varchar(3) NOT NULL,
  `time1` int(11) NOT NULL,
  `type1` varchar(2) NOT NULL,
  `time2` int(11) NOT NULL,
  `type2` varchar(2) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `inst_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1453 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `school_id`, `courseid`, `sec_id`, `sem`, `day`, `time1`, `type1`, `time2`, `type2`, `subjects`, `inst_id`, `room_id`, `status`) VALUES
(991, 1, 1, 9, 2, 'Mon', 7, 'AM', 8, 'AM', '3', 0, 6, 'final'),
(992, 1, 1, 9, 2, 'Tue', 7, 'AM', 8, 'AM', '', 0, 6, 'final'),
(993, 1, 1, 9, 2, 'Wed', 7, 'AM', 8, 'AM', '', 0, 6, 'final'),
(994, 1, 1, 9, 2, 'Thu', 7, 'AM', 8, 'AM', '', 0, 6, 'final'),
(995, 1, 1, 9, 2, 'Fri', 7, 'AM', 8, 'AM', '', 0, 6, 'final'),
(996, 1, 1, 9, 2, 'Sat', 7, 'AM', 8, 'AM', '', 0, 6, 'final'),
(997, 1, 1, 9, 2, 'Mon', 8, 'AM', 9, 'AM', '3', 0, 6, 'final'),
(998, 1, 1, 9, 2, 'Tue', 8, 'AM', 9, 'AM', '', 0, 6, 'final'),
(999, 1, 1, 9, 2, 'Wed', 8, 'AM', 9, 'AM', '', 0, 6, 'final'),
(1000, 1, 1, 9, 2, 'Thu', 8, 'AM', 9, 'AM', '', 0, 6, 'final'),
(1001, 1, 1, 9, 2, 'Fri', 8, 'AM', 9, 'AM', '', 0, 6, 'final'),
(1002, 1, 1, 9, 2, 'Sat', 8, 'AM', 9, 'AM', '', 0, 6, 'final'),
(1003, 1, 1, 9, 2, 'Mon', 9, 'AM', 10, 'AM', '3', 0, 6, 'final'),
(1004, 1, 1, 9, 2, 'Tue', 9, 'AM', 10, 'AM', '', 0, 6, 'final'),
(1005, 1, 1, 9, 2, 'Wed', 9, 'AM', 10, 'AM', '', 0, 6, 'final'),
(1006, 1, 1, 9, 2, 'Thu', 9, 'AM', 10, 'AM', '', 0, 6, 'final'),
(1007, 1, 1, 9, 2, 'Fri', 9, 'AM', 10, 'AM', '', 0, 6, 'final'),
(1008, 1, 1, 9, 2, 'Sat', 9, 'AM', 10, 'AM', '', 0, 6, 'final'),
(1009, 1, 1, 9, 2, 'Mon', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1010, 1, 1, 9, 2, 'Tue', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1011, 1, 1, 9, 2, 'Wed', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1012, 1, 1, 9, 2, 'Thu', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1013, 1, 1, 9, 2, 'Fri', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1014, 1, 1, 9, 2, 'Sat', 10, 'AM', 11, 'AM', '', 0, 6, 'final'),
(1015, 1, 1, 9, 2, 'Mon', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1016, 1, 1, 9, 2, 'Tue', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1017, 1, 1, 9, 2, 'Wed', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1018, 1, 1, 9, 2, 'Thu', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1019, 1, 1, 9, 2, 'Fri', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1020, 1, 1, 9, 2, 'Sat', 11, 'AM', 12, 'PM', '', 0, 6, 'final'),
(1309, 1, 1, 2, 1, 'Mon', 7, 'AM', 8, 'AM', '', 0, 1, ''''),
(1310, 1, 1, 2, 1, 'Tue', 7, 'AM', 8, 'AM', '2_0', 5, 1, ''''),
(1311, 1, 1, 2, 1, 'Wed', 7, 'AM', 8, 'AM', '', 0, 1, ''''),
(1312, 1, 1, 2, 1, 'Thu', 7, 'AM', 8, 'AM', '9_0', 0, 1, ''''),
(1313, 1, 1, 2, 1, 'Fri', 7, 'AM', 8, 'AM', '1_2', 2, 1, ''''),
(1314, 1, 1, 2, 1, 'Sat', 7, 'AM', 8, 'AM', '', 0, 1, ''''),
(1315, 1, 1, 2, 1, 'Mon', 8, 'AM', 9, 'AM', '', 0, 1, ''''),
(1316, 1, 1, 2, 1, 'Tue', 8, 'AM', 9, 'AM', '2_0', 5, 1, ''''),
(1317, 1, 1, 2, 1, 'Wed', 8, 'AM', 9, 'AM', '', 0, 1, ''''),
(1318, 1, 1, 2, 1, 'Thu', 8, 'AM', 9, 'AM', '9_0', 0, 1, ''''),
(1319, 1, 1, 2, 1, 'Fri', 8, 'AM', 9, 'AM', '21_2', 35, 1, ''''),
(1320, 1, 1, 2, 1, 'Sat', 8, 'AM', 9, 'AM', '', 0, 1, ''''),
(1321, 1, 1, 2, 1, 'Mon', 9, 'AM', 10, 'AM', '', 0, 1, ''''),
(1322, 1, 1, 2, 1, 'Tue', 9, 'AM', 10, 'AM', '2_0', 5, 1, ''''),
(1323, 1, 1, 2, 1, 'Wed', 9, 'AM', 10, 'AM', '', 0, 1, ''''),
(1324, 1, 1, 2, 1, 'Thu', 9, 'AM', 10, 'AM', '1_2', 2, 1, ''''),
(1325, 1, 1, 2, 1, 'Fri', 9, 'AM', 10, 'AM', '21_2', 35, 1, ''''),
(1326, 1, 1, 2, 1, 'Sat', 9, 'AM', 10, 'AM', '', 0, 1, ''''),
(1327, 1, 1, 2, 1, 'Mon', 10, 'AM', 11, 'AM', '', 0, 1, ''''),
(1328, 1, 1, 2, 1, 'Tue', 10, 'AM', 11, 'AM', '9_0', 0, 1, ''''),
(1329, 1, 1, 2, 1, 'Wed', 10, 'AM', 11, 'AM', '', 0, 1, ''''),
(1330, 1, 1, 2, 1, 'Thu', 10, 'AM', 11, 'AM', '1_2', 2, 0, ''''),
(1331, 1, 1, 2, 1, 'Fri', 10, 'AM', 11, 'AM', '21_2', 35, 0, ''''),
(1332, 1, 1, 2, 1, 'Sat', 10, 'AM', 11, 'AM', '', 0, 1, ''''),
(1333, 1, 1, 4, 1, 'Mon', 7, 'AM', 8, 'AM', '', 0, 2, ''''),
(1334, 1, 1, 4, 1, 'Tue', 7, 'AM', 8, 'AM', '1_2', 2, 1, ''''),
(1335, 1, 1, 4, 1, 'Wed', 7, 'AM', 8, 'AM', '9_0', 0, 2, ''''),
(1336, 1, 1, 4, 1, 'Thu', 7, 'AM', 8, 'AM', '', 0, 2, ''''),
(1337, 1, 1, 4, 1, 'Fri', 7, 'AM', 8, 'AM', '', 0, 2, ''''),
(1338, 1, 1, 4, 1, 'Sat', 7, 'AM', 8, 'AM', '2_0', 5, 2, ''''),
(1339, 1, 1, 4, 1, 'Mon', 8, 'AM', 9, 'AM', '', 0, 2, ''''),
(1340, 1, 1, 4, 1, 'Tue', 8, 'AM', 9, 'AM', '1_2', 2, 1, ''''),
(1341, 1, 1, 4, 1, 'Wed', 8, 'AM', 9, 'AM', '9_0', 4, 2, ''''),
(1342, 1, 1, 4, 1, 'Thu', 8, 'AM', 9, 'AM', '', 0, 2, ''''),
(1343, 1, 1, 4, 1, 'Fri', 8, 'AM', 9, 'AM', '', 0, 2, ''''),
(1344, 1, 1, 4, 1, 'Sat', 8, 'AM', 9, 'AM', '21_2', 35, 1, ''''),
(1345, 1, 1, 4, 1, 'Mon', 9, 'AM', 10, 'AM', '', 0, 2, ''''),
(1346, 1, 1, 4, 1, 'Tue', 9, 'AM', 10, 'AM', '1_2', 2, 0, ''''),
(1347, 1, 1, 4, 1, 'Wed', 9, 'AM', 10, 'AM', '2_0', 5, 2, ''''),
(1348, 1, 1, 4, 1, 'Thu', 9, 'AM', 10, 'AM', '', 0, 2, ''''),
(1349, 1, 1, 4, 1, 'Fri', 9, 'AM', 10, 'AM', '', 0, 2, ''''),
(1350, 1, 1, 4, 1, 'Sat', 9, 'AM', 10, 'AM', '21_2', 35, 1, ''''),
(1351, 1, 1, 4, 1, 'Mon', 10, 'AM', 11, 'AM', '', 0, 2, ''''),
(1352, 1, 1, 4, 1, 'Tue', 10, 'AM', 11, 'AM', '9_0', 0, 2, ''''),
(1353, 1, 1, 4, 1, 'Wed', 10, 'AM', 11, 'AM', '2_0', 5, 2, ''''),
(1354, 1, 1, 4, 1, 'Thu', 10, 'AM', 11, 'AM', '', 0, 2, ''''),
(1355, 1, 1, 4, 1, 'Fri', 10, 'AM', 11, 'AM', '', 0, 2, ''''),
(1356, 1, 1, 4, 1, 'Sat', 10, 'AM', 11, 'AM', '21_2', 35, 0, ''''),
(1357, 1, 1, 7, 1, 'Mon', 7, 'AM', 8, 'AM', '', 0, 3, ''''),
(1358, 1, 1, 7, 1, 'Tue', 7, 'AM', 8, 'AM', '21_2', 35, 2, ''''),
(1359, 1, 1, 7, 1, 'Wed', 7, 'AM', 8, 'AM', '2_0', 5, 3, ''''),
(1360, 1, 1, 7, 1, 'Thu', 7, 'AM', 8, 'AM', '1_2', 2, 1, ''''),
(1361, 1, 1, 7, 1, 'Fri', 7, 'AM', 8, 'AM', '', 0, 3, ''''),
(1362, 1, 1, 7, 1, 'Sat', 7, 'AM', 8, 'AM', '', 0, 3, ''''),
(1363, 1, 1, 7, 1, 'Mon', 8, 'AM', 9, 'AM', '', 0, 3, ''''),
(1364, 1, 1, 7, 1, 'Tue', 8, 'AM', 9, 'AM', '21_2', 35, 2, ''''),
(1365, 1, 1, 7, 1, 'Wed', 8, 'AM', 9, 'AM', '9_0', 0, 3, ''''),
(1366, 1, 1, 7, 1, 'Thu', 8, 'AM', 9, 'AM', '1_2', 2, 1, ''''),
(1367, 1, 1, 7, 1, 'Fri', 8, 'AM', 9, 'AM', '', 0, 3, ''''),
(1368, 1, 1, 7, 1, 'Sat', 8, 'AM', 9, 'AM', '', 0, 3, ''''),
(1369, 1, 1, 7, 1, 'Mon', 9, 'AM', 10, 'AM', '', 0, 3, ''''),
(1370, 1, 1, 7, 1, 'Tue', 9, 'AM', 10, 'AM', '2_0', 0, 3, ''''),
(1371, 1, 1, 7, 1, 'Wed', 9, 'AM', 10, 'AM', '9_0', 0, 3, ''''),
(1372, 1, 1, 7, 1, 'Thu', 9, 'AM', 10, 'AM', '1_2', 0, 0, ''''),
(1373, 1, 1, 7, 1, 'Fri', 9, 'AM', 10, 'AM', '', 0, 3, ''''),
(1374, 1, 1, 7, 1, 'Sat', 9, 'AM', 10, 'AM', '', 0, 3, ''''),
(1375, 1, 1, 7, 1, 'Mon', 10, 'AM', 11, 'AM', '', 0, 3, ''''),
(1376, 1, 1, 7, 1, 'Tue', 10, 'AM', 11, 'AM', '2_0', 5, 3, ''''),
(1377, 1, 1, 7, 1, 'Wed', 10, 'AM', 11, 'AM', '9_0', 4, 3, ''''),
(1378, 1, 1, 7, 1, 'Thu', 10, 'AM', 11, 'AM', '21_2', 35, 0, ''''),
(1379, 1, 1, 7, 1, 'Fri', 10, 'AM', 11, 'AM', '', 0, 3, ''''),
(1380, 1, 1, 7, 1, 'Sat', 10, 'AM', 11, 'AM', '', 0, 3, ''''),
(1381, 1, 3, 6, 1, 'Mon', 7, 'AM', 8, 'AM', '13_0', 0, 4, ''''),
(1382, 1, 3, 6, 1, 'Tue', 7, 'AM', 8, 'AM', '4_0', 4, 4, ''''),
(1383, 1, 3, 6, 1, 'Wed', 7, 'AM', 8, 'AM', '14_0', 0, 4, ''''),
(1384, 1, 3, 6, 1, 'Thu', 7, 'AM', 8, 'AM', '15_0', 5, 4, ''''),
(1385, 1, 3, 6, 1, 'Fri', 7, 'AM', 8, 'AM', '11_0', 0, 4, ''''),
(1386, 1, 3, 6, 1, 'Sat', 7, 'AM', 8, 'AM', '12_0', 2, 4, ''''),
(1387, 1, 3, 6, 1, 'Mon', 8, 'AM', 9, 'AM', '13_0', 4, 4, ''''),
(1388, 1, 3, 6, 1, 'Tue', 8, 'AM', 9, 'AM', '10_0', 0, 4, ''''),
(1389, 1, 3, 6, 1, 'Wed', 8, 'AM', 9, 'AM', '', 0, 4, ''''),
(1390, 1, 3, 6, 1, 'Thu', 8, 'AM', 9, 'AM', '15_0', 5, 4, ''''),
(1391, 1, 3, 6, 1, 'Fri', 8, 'AM', 9, 'AM', '11_0', 4, 4, ''''),
(1392, 1, 3, 6, 1, 'Sat', 8, 'AM', 9, 'AM', '12_0', 2, 4, ''''),
(1393, 1, 3, 6, 1, 'Mon', 9, 'AM', 10, 'AM', '14_0', 5, 4, ''''),
(1394, 1, 3, 6, 1, 'Tue', 9, 'AM', 10, 'AM', '10_0', 4, 4, ''''),
(1395, 1, 3, 6, 1, 'Wed', 9, 'AM', 10, 'AM', '', 0, 4, ''''),
(1396, 1, 3, 6, 1, 'Thu', 9, 'AM', 10, 'AM', '4_0', 4, 4, ''''),
(1397, 1, 3, 6, 1, 'Fri', 9, 'AM', 10, 'AM', '11_0', 0, 4, ''''),
(1398, 1, 3, 6, 1, 'Sat', 9, 'AM', 10, 'AM', '12_0', 2, 4, ''''),
(1399, 1, 3, 6, 1, 'Mon', 10, 'AM', 11, 'AM', '14_0', 5, 4, ''''),
(1400, 1, 3, 6, 1, 'Tue', 10, 'AM', 11, 'AM', '10_0', 0, 4, ''''),
(1401, 1, 3, 6, 1, 'Wed', 10, 'AM', 11, 'AM', '', 0, 4, ''''),
(1402, 1, 3, 6, 1, 'Thu', 10, 'AM', 11, 'AM', '4_0', 0, 4, ''''),
(1403, 1, 3, 6, 1, 'Fri', 10, 'AM', 11, 'AM', '13_0', 4, 4, ''''),
(1404, 1, 3, 6, 1, 'Sat', 10, 'AM', 11, 'AM', '15_0', 5, 4, ''''),
(1405, 1, 1, 3, 1, 'Mon', 11, 'AM', 12, 'PM', '1_2', 2, 1, ''''),
(1406, 1, 1, 3, 1, 'Tue', 11, 'AM', 12, 'PM', '', 0, 5, ''''),
(1407, 1, 1, 3, 1, 'Wed', 11, 'AM', 12, 'PM', '', 0, 5, ''''),
(1408, 1, 1, 3, 1, 'Thu', 11, 'AM', 12, 'PM', '21_2', 36, 1, ''''),
(1409, 1, 1, 3, 1, 'Fri', 11, 'AM', 12, 'PM', '', 0, 5, ''''),
(1410, 1, 1, 3, 1, 'Sat', 11, 'AM', 12, 'PM', '9_0', 4, 5, ''''),
(1411, 1, 1, 3, 1, 'Mon', 12, 'PM', 1, 'PM', '1_2', 2, 1, ''''),
(1412, 1, 1, 3, 1, 'Tue', 12, 'PM', 1, 'PM', '', 0, 5, ''''),
(1413, 1, 1, 3, 1, 'Wed', 12, 'PM', 1, 'PM', '', 0, 5, ''''),
(1414, 1, 1, 3, 1, 'Thu', 12, 'PM', 1, 'PM', '2_0', 3, 5, ''''),
(1415, 1, 1, 3, 1, 'Fri', 12, 'PM', 1, 'PM', '', 0, 5, ''''),
(1416, 1, 1, 3, 1, 'Sat', 12, 'PM', 1, 'PM', '9_0', 0, 5, ''''),
(1417, 1, 1, 3, 1, 'Mon', 1, 'PM', 2, 'PM', '1_2', 0, 0, ''''),
(1418, 1, 1, 3, 1, 'Tue', 1, 'PM', 2, 'PM', '', 0, 5, ''''),
(1419, 1, 1, 3, 1, 'Wed', 1, 'PM', 2, 'PM', '', 0, 5, ''''),
(1420, 1, 1, 3, 1, 'Thu', 1, 'PM', 2, 'PM', '2_0', 0, 5, ''''),
(1421, 1, 1, 3, 1, 'Fri', 1, 'PM', 2, 'PM', '', 0, 5, ''''),
(1422, 1, 1, 3, 1, 'Sat', 1, 'PM', 2, 'PM', '21_2', 0, 1, ''''),
(1423, 1, 1, 3, 1, 'Mon', 2, 'PM', 3, 'PM', '9_0', 0, 5, ''''),
(1424, 1, 1, 3, 1, 'Tue', 2, 'PM', 3, 'PM', '', 0, 5, ''''),
(1425, 1, 1, 3, 1, 'Wed', 2, 'PM', 3, 'PM', '', 0, 5, ''''),
(1426, 1, 1, 3, 1, 'Thu', 2, 'PM', 3, 'PM', '2_0', 0, 5, ''''),
(1427, 1, 1, 3, 1, 'Fri', 2, 'PM', 3, 'PM', '', 0, 5, ''''),
(1428, 1, 1, 3, 1, 'Sat', 2, 'PM', 3, 'PM', '21_2', 0, 0, ''''),
(1429, 1, 1, 8, 1, 'Mon', 3, 'PM', 4, 'PM', '', 0, 7, ''''),
(1430, 1, 1, 8, 1, 'Tue', 3, 'PM', 4, 'PM', '1_2', 2, 1, ''''),
(1431, 1, 1, 8, 1, 'Wed', 3, 'PM', 4, 'PM', '', 0, 7, ''''),
(1432, 1, 1, 8, 1, 'Thu', 3, 'PM', 4, 'PM', '', 0, 7, ''''),
(1433, 1, 1, 8, 1, 'Fri', 3, 'PM', 4, 'PM', '2_0', 0, 7, ''''),
(1434, 1, 1, 8, 1, 'Sat', 3, 'PM', 4, 'PM', '9_0', 4, 7, ''''),
(1435, 1, 1, 8, 1, 'Mon', 4, 'PM', 5, 'PM', '', 0, 7, ''''),
(1436, 1, 1, 8, 1, 'Tue', 4, 'PM', 5, 'PM', '1_2', 2, 1, ''''),
(1437, 1, 1, 8, 1, 'Wed', 4, 'PM', 5, 'PM', '', 0, 7, ''''),
(1438, 1, 1, 8, 1, 'Thu', 4, 'PM', 5, 'PM', '', 0, 7, ''''),
(1439, 1, 1, 8, 1, 'Fri', 4, 'PM', 5, 'PM', '21_2', 0, 1, ''''),
(1440, 1, 1, 8, 1, 'Sat', 4, 'PM', 5, 'PM', '9_0', 0, 7, ''''),
(1441, 1, 1, 8, 1, 'Mon', 5, 'PM', 6, 'PM', '', 0, 7, ''''),
(1442, 1, 1, 8, 1, 'Tue', 5, 'PM', 6, 'PM', '1_2', 2, 0, ''''),
(1443, 1, 1, 8, 1, 'Wed', 5, 'PM', 6, 'PM', '', 0, 7, ''''),
(1444, 1, 1, 8, 1, 'Thu', 5, 'PM', 6, 'PM', '', 0, 7, ''''),
(1445, 1, 1, 8, 1, 'Fri', 5, 'PM', 6, 'PM', '21_2', 0, 1, ''''),
(1446, 1, 1, 8, 1, 'Sat', 5, 'PM', 6, 'PM', '2_0', 0, 7, ''''),
(1447, 1, 1, 8, 1, 'Mon', 6, 'PM', 7, 'PM', '', 0, 7, ''''),
(1448, 1, 1, 8, 1, 'Tue', 6, 'PM', 7, 'PM', '9_0', 0, 7, ''''),
(1449, 1, 1, 8, 1, 'Wed', 6, 'PM', 7, 'PM', '', 0, 7, ''''),
(1450, 1, 1, 8, 1, 'Thu', 6, 'PM', 7, 'PM', '', 0, 7, ''''),
(1451, 1, 1, 8, 1, 'Fri', 6, 'PM', 7, 'PM', '21_2', 0, 0, ''''),
(1452, 1, 1, 8, 1, 'Sat', 6, 'PM', 7, 'PM', '2_0', 0, 7, '''');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL auto_increment,
  `s_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `abbr` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `s_name`, `location`, `abbr`) VALUES
(1, 'Asian Institute of Computer Studies', 'Commonwealth', 'AICS-Commonwealth');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `courseid` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `ses_id` int(11) NOT NULL,
  `yearlvl` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `school_id`, `section`, `courseid`, `sem`, `ses_id`, `yearlvl`) VALUES
(2, 1, 'test2', 1, 1, 5, 1),
(3, 1, 'testa', 1, 1, 2, 1),
(4, 1, 'te', 1, 1, 5, 2),
(5, 1, '2nd sema', 1, 0, 0, 0),
(6, 1, 'ccc', 3, 1, 5, 1),
(7, 1, 'BE2MA', 1, 1, 5, 1),
(8, 1, 'NEW', 1, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` int(11) NOT NULL auto_increment,
  `sem_num` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `sem_num`, `type`, `school_id`) VALUES
(1, 2, '2 semesters', 1),
(2, 3, '3 semesters', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `time1` varchar(10) NOT NULL,
  `type1` varchar(2) NOT NULL,
  `time2` varchar(10) NOT NULL,
  `type2` varchar(2) NOT NULL,
  `calc` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `school_id`, `time1`, `type1`, `time2`, `type2`, `calc`) VALUES
(2, 1, '11', 'AM', '3', 'PM', 0),
(4, 1, '7', 'PM', '10', 'PM', 0),
(5, 1, '7', 'AM', '11', 'AM', 0),
(6, 1, '3', 'PM', '7', 'PM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `courseid` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject_code` varchar(25) NOT NULL,
  `subject_name` varchar(55) NOT NULL,
  `time_perWeek` int(11) NOT NULL,
  `lab_hrs` int(11) NOT NULL,
  `year_category` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `school_id`, `courseid`, `sem`, `subject_code`, `subject_name`, `time_perWeek`, `lab_hrs`, `year_category`) VALUES
(1, 1, 1, 1, 'TEST', 'test', 3, 2, 1),
(2, 1, 1, 1, 'ads', 'asd', 3, 0, 1),
(3, 1, 1, 2, 'asd', 'asd', 3, 0, 1),
(4, 1, 3, 1, 'COS4117', 'Thesis Writting 1', 3, 0, 1),
(5, 1, 9, 1, 'test', 'test', 1, 0, 4),
(6, 1, 9, 1, 'sjkdasklj', 'kjsdaljksadljk', 1, 0, 1),
(7, 1, 9, 2, 'POTA', '111', 1, 0, 1),
(8, 2, 12, 1, 'sad', 'asd', 1, 0, 0),
(9, 1, 1, 1, 'dsasad', 'asdasd', 3, 0, 1),
(10, 1, 3, 1, 'FIL121', 'FIlipino 1', 3, 0, 2),
(11, 1, 3, 1, 'FIL2', 'Filipino2', 3, 0, 3),
(12, 1, 3, 1, 'THESIS1', 'THESIS1', 3, 0, 4),
(13, 1, 3, 1, 'ASSM', 'Assembly', 3, 0, 1),
(14, 1, 3, 1, 'PHY1', 'Physics 1', 3, 0, 1),
(15, 1, 3, 1, 'PHY2', 'Physics2', 3, 0, 2),
(17, 8, 0, 1, 'asdsda', 'asdsdasda', 3, 0, 1),
(19, 1, 8, 1, 'BASD', 'BASD', 3, 0, 1),
(21, 1, 1, 1, 'labl', 'with lab', 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL,
  `term` varchar(10) NOT NULL,
  `years` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `title`, `term`, `years`, `school_id`) VALUES
(1, '2 Years', '2 yrs.', 2, 1),
(2, 'Bachelor of Science', 'B.S', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `inst_id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `school_id`, `inst_id`, `firstname`, `lastname`, `username`, `password`, `type`) VALUES
(1, 1, 0, 'jomer', 'avengoza', 'jomer', '4d5a97f5bc1cefab8206f0cc0488b42b17766882', 0),
(5, 1, 35, 'Jomer', 'Avengoza', 'JAvengoza', 'c13ce3c594381e4537fe23b8cce782a6c1211865', 1),
(6, 1, 36, 'asdsda', 'jmer', 'ajmer', 'affd97cbbcd2a830648022dcebe6e1b7ed69f3f2', 1);
--
-- Database: `mysql`
--
CREATE DATABASE `mysql` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mysql`;

-- --------------------------------------------------------

--
-- Table structure for table `columns_priv`
--

CREATE TABLE `columns_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Column_name` char(64) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

--
-- Dumping data for table `columns_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE `db` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`Host`, `Db`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Execute_priv`) VALUES
('%', 'test', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N'),
('%', 'test\\_%', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `func`
--

CREATE TABLE `func` (
  `name` char(64) collate utf8_bin NOT NULL default '',
  `ret` tinyint(1) NOT NULL default '0',
  `dl` char(128) collate utf8_bin NOT NULL default '',
  `type` enum('function','aggregate') character set utf8 NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

--
-- Dumping data for table `func`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned default NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

--
-- Dumping data for table `help_category`
--

INSERT INTO `help_category` (`help_category_id`, `name`, `parent_category_id`, `url`) VALUES
(1, 'Geographic', 0, ''),
(2, 'Polygon properties', 30, ''),
(3, 'WKT', 30, ''),
(4, 'Numeric Functions', 34, ''),
(5, 'MBR', 30, ''),
(6, 'Control flow functions', 34, ''),
(7, 'Transactions', 31, ''),
(8, 'Account Management', 31, ''),
(9, 'Point properties', 30, ''),
(10, 'Encryption Functions', 34, ''),
(11, 'LineString properties', 30, ''),
(12, 'Logical operators', 34, ''),
(13, 'Miscellaneous Functions', 34, ''),
(14, 'Functions and Modifiers for Use with GROUP BY', 31, ''),
(15, 'Information Functions', 34, ''),
(16, 'Storage Engines', 31, ''),
(17, 'Comparison operators', 34, ''),
(18, 'Bit Functions', 34, ''),
(19, 'Table Maintenance', 31, ''),
(20, 'Data Types', 31, ''),
(21, 'Triggers', 31, ''),
(22, 'Geometry constructors', 30, ''),
(23, 'GeometryCollection properties', 1, ''),
(24, 'Administration', 31, ''),
(25, 'Data Manipulation', 31, ''),
(26, 'Geometry relations', 30, ''),
(27, 'Language Structure', 31, ''),
(28, 'Date and Time Functions', 34, ''),
(29, 'WKB', 30, ''),
(30, 'Geographic Features', 31, ''),
(31, 'Contents', 0, ''),
(32, 'Geometry properties', 30, ''),
(33, 'String Functions', 34, ''),
(34, 'Functions', 31, ''),
(35, 'Stored Routines', 31, ''),
(36, 'Data Definition', 31, '');

-- --------------------------------------------------------

--
-- Table structure for table `help_keyword`
--

CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY  (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

--
-- Dumping data for table `help_keyword`
--

INSERT INTO `help_keyword` (`help_keyword_id`, `name`) VALUES
(0, 'JOIN'),
(1, 'REPEAT'),
(2, 'SERIALIZABLE'),
(3, 'REPLACE'),
(4, 'RETURNS'),
(5, 'MASTER_SSL_CA'),
(6, 'NCHAR'),
(7, 'COLUMNS'),
(8, 'WORK'),
(9, 'DATETIME'),
(10, 'MODE'),
(11, 'OPEN'),
(12, 'INTEGER'),
(13, 'ESCAPE'),
(14, 'VALUE'),
(15, 'GEOMETRYCOLLECTIONFROMWKB'),
(16, 'SQL_BIG_RESULT'),
(17, 'DROP'),
(18, 'EVENTS'),
(19, 'MONTH'),
(20, 'INFO'),
(21, 'PROFILES'),
(22, 'DUPLICATE'),
(23, 'REPLICATION'),
(24, 'INNODB'),
(25, 'YEAR_MONTH'),
(26, 'SUBJECT'),
(27, 'PREPARE'),
(28, 'LOCK'),
(29, 'NDB'),
(30, 'CHECK'),
(31, 'FULL'),
(32, 'INT4'),
(33, 'BY'),
(34, 'NO'),
(35, 'MINUTE'),
(36, 'DATA'),
(37, 'DAY'),
(38, 'SHARE'),
(39, 'REAL'),
(40, 'SEPARATOR'),
(41, 'DELETE'),
(42, 'ON'),
(43, 'CONNECTION'),
(44, 'CLOSE'),
(45, 'X509'),
(46, 'USE'),
(47, 'WHERE'),
(48, 'PRIVILEGES'),
(49, 'SPATIAL'),
(50, 'SUPER'),
(51, 'SQL_BUFFER_RESULT'),
(52, 'IGNORE'),
(53, 'QUICK'),
(54, 'SIGNED'),
(55, 'SECURITY'),
(56, 'POLYGONFROMWKB'),
(57, 'NDBCLUSTER'),
(58, 'FALSE'),
(59, 'LEVEL'),
(60, 'FORCE'),
(61, 'BINARY'),
(62, 'TO'),
(63, 'CHANGE'),
(64, 'HOUR_MINUTE'),
(65, 'UPDATE'),
(66, 'INTO'),
(67, 'FEDERATED'),
(68, 'VARYING'),
(69, 'HOUR_SECOND'),
(70, 'VARIABLE'),
(71, 'ROLLBACK'),
(72, 'PROCEDURE'),
(73, 'RTREE'),
(74, 'TIMESTAMP'),
(75, 'IMPORT'),
(76, 'AGAINST'),
(77, 'CHECKSUM'),
(78, 'COUNT'),
(79, 'LONGBINARY'),
(80, 'THEN'),
(81, 'INSERT'),
(82, 'ENGINES'),
(83, 'HANDLER'),
(84, 'DAY_SECOND'),
(85, 'EXISTS'),
(86, 'MUTEX'),
(87, 'RELEASE'),
(88, 'BOOLEAN'),
(89, 'MOD'),
(90, 'DEFAULT'),
(91, 'TYPE'),
(92, 'NO_WRITE_TO_BINLOG'),
(93, 'OPTIMIZE'),
(94, 'RESET'),
(95, 'ITERATE'),
(96, 'DO'),
(97, 'BIGINT'),
(98, 'SET'),
(99, 'ISSUER'),
(100, 'DATE'),
(101, 'STATUS'),
(102, 'FULLTEXT'),
(103, 'COMMENT'),
(104, 'MASTER_CONNECT_RETRY'),
(105, 'INNER'),
(106, 'STOP'),
(107, 'MASTER_LOG_FILE'),
(108, 'MRG_MYISAM'),
(109, 'PRECISION'),
(110, 'REQUIRE'),
(111, 'TRAILING'),
(112, 'LONG'),
(113, 'OPTION'),
(114, 'ELSE'),
(115, 'DEALLOCATE'),
(116, 'IO_THREAD'),
(117, 'CASE'),
(118, 'CIPHER'),
(119, 'CONTINUE'),
(120, 'FROM'),
(121, 'READ'),
(122, 'LEFT'),
(123, 'ELSEIF'),
(124, 'MINUTE_SECOND'),
(125, 'COMPACT'),
(126, 'RESTORE'),
(127, 'DEC'),
(128, 'FOR'),
(129, 'WARNINGS'),
(130, 'MIN_ROWS'),
(131, 'STRING'),
(132, 'CONDITION'),
(133, 'FUNCTION'),
(134, 'ENCLOSED'),
(135, 'AGGREGATE'),
(136, 'FIELDS'),
(137, 'INT3'),
(138, 'ARCHIVE'),
(139, 'ADD'),
(140, 'AVG_ROW_LENGTH'),
(141, 'KILL'),
(142, 'FLOAT4'),
(143, 'VIEW'),
(144, 'REPEATABLE'),
(145, 'INFILE'),
(146, 'ORDER'),
(147, 'USING'),
(148, 'MIDDLEINT'),
(149, 'GRANT'),
(150, 'UNSIGNED'),
(151, 'DECIMAL'),
(152, 'GEOMETRYFROMTEXT'),
(153, 'INDEXES'),
(154, 'FOREIGN'),
(155, 'CACHE'),
(156, 'HOSTS'),
(157, 'COMMIT'),
(158, 'SCHEMAS'),
(159, 'LEADING'),
(160, 'SNAPSHOT'),
(161, 'DECLARE'),
(162, 'LOAD'),
(163, 'SQL_CACHE'),
(164, 'CONVERT'),
(165, 'DYNAMIC'),
(166, 'POLYGONFROMTEXT'),
(167, 'COLLATE'),
(168, 'BYTE'),
(169, 'LINESTRINGFROMWKB'),
(170, 'GLOBAL'),
(171, 'BERKELEYDB'),
(172, 'WHEN'),
(173, 'HAVING'),
(174, 'AS'),
(175, 'STARTING'),
(176, 'RELOAD'),
(177, 'AUTOCOMMIT'),
(178, 'REVOKE'),
(179, 'GRANTS'),
(180, 'OUTER'),
(181, 'FLOOR'),
(182, 'WITH'),
(183, 'STD'),
(184, 'AFTER'),
(185, 'CSV'),
(186, 'DISABLE'),
(187, 'OUTFILE'),
(188, 'LOW_PRIORITY'),
(189, 'FILE'),
(190, 'BDB'),
(191, 'SCHEMA'),
(192, 'SONAME'),
(193, 'POW'),
(194, 'MULTIPOINTFROMWKB'),
(195, 'INDEX'),
(196, 'DUAL'),
(197, 'MULTIPOINTFROMTEXT'),
(198, 'BACKUP'),
(199, 'MULTILINESTRINGFROMWKB'),
(200, 'EXTENDED'),
(201, 'CROSS'),
(202, 'NATIONAL'),
(203, 'GROUP'),
(204, 'SHA'),
(205, 'UNDO'),
(206, 'ZEROFILL'),
(207, 'CLIENT'),
(208, 'MASTER_PASSWORD'),
(209, 'RELAY_LOG_FILE'),
(210, 'TRUE'),
(211, 'CHARACTER'),
(212, 'MASTER_USER'),
(213, 'TABLE'),
(214, 'ENGINE'),
(215, 'INSERT_METHOD'),
(216, 'CASCADE'),
(217, 'RELAY_LOG_POS'),
(218, 'SQL_CALC_FOUND_ROWS'),
(219, 'UNION'),
(220, 'MYISAM'),
(221, 'LEAVE'),
(222, 'MODIFY'),
(223, 'MATCH'),
(224, 'MASTER_LOG_POS'),
(225, 'DESC'),
(226, 'DISTINCTROW'),
(227, 'TIME'),
(228, 'NUMERIC'),
(229, 'EXPANSION'),
(230, 'CURSOR'),
(231, 'CODE'),
(232, 'GEOMETRYCOLLECTIONFROMTEXT'),
(233, 'CHAIN'),
(234, 'FLUSH'),
(235, 'CREATE'),
(236, 'DESCRIBE'),
(237, 'MAX_UPDATES_PER_HOUR'),
(238, 'INT2'),
(239, 'PROCESSLIST'),
(240, 'LOGS'),
(241, 'HEAP'),
(242, 'SOUNDS'),
(243, 'BETWEEN'),
(244, 'MULTILINESTRINGFROMTEXT'),
(245, 'REPAIR'),
(246, 'PACK_KEYS'),
(247, 'CALL'),
(248, 'FAST'),
(249, 'VALUES'),
(250, 'LOOP'),
(251, 'VARCHARACTER'),
(252, 'BEFORE'),
(253, 'TRUNCATE'),
(254, 'SHOW'),
(255, 'REDUNDANT'),
(256, 'ALL'),
(257, 'USER_RESOURCES'),
(258, 'PARTIAL'),
(259, 'BINLOG'),
(260, 'END'),
(261, 'SECOND'),
(262, 'AND'),
(263, 'FLOAT8'),
(264, 'PREV'),
(265, 'HOUR'),
(266, 'SELECT'),
(267, 'DATABASES'),
(268, 'OR'),
(269, 'IDENTIFIED'),
(270, 'MASTER_SSL_CIPHER'),
(271, 'SQL_SLAVE_SKIP_COUNTER'),
(272, 'BOTH'),
(273, 'BOOL'),
(274, 'YEAR'),
(275, 'MASTER_PORT'),
(276, 'CONCURRENT'),
(277, 'HELP'),
(278, 'UNIQUE'),
(279, 'TRIGGERS'),
(280, 'PROCESS'),
(281, 'CONSISTENT'),
(282, 'MASTER_SSL'),
(283, 'DATE_ADD'),
(284, 'MAX_CONNECTIONS_PER_HOUR'),
(285, 'LIKE'),
(286, 'FETCH'),
(287, 'IN'),
(288, 'COLUMN'),
(289, 'DUMPFILE'),
(290, 'USAGE'),
(291, 'EXECUTE'),
(292, 'MEMORY'),
(293, 'CEIL'),
(294, 'QUERY'),
(295, 'MASTER_HOST'),
(296, 'LINES'),
(297, 'SQL_THREAD'),
(298, 'MAX_QUERIES_PER_HOUR'),
(299, 'MULTIPOLYGONFROMWKB'),
(300, 'MASTER_SSL_CERT'),
(301, 'DAY_MINUTE'),
(302, 'TRANSACTION'),
(303, 'STDDEV'),
(304, 'DATE_SUB'),
(305, 'GEOMETRYFROMWKB'),
(306, 'INT1'),
(307, 'RENAME'),
(308, 'ALTER'),
(309, 'MAX_ROWS'),
(310, 'RIGHT'),
(311, 'STRAIGHT_JOIN'),
(312, 'NATURAL'),
(313, 'VARIABLES'),
(314, 'ESCAPED'),
(315, 'SHA1'),
(316, 'PASSWORD'),
(317, 'CHAR'),
(318, 'OFFSET'),
(319, 'NEXT'),
(320, 'SQL_LOG_BIN'),
(321, 'ERRORS'),
(322, 'TEMPORARY'),
(323, 'COMMITTED'),
(324, 'SQL_SMALL_RESULT'),
(325, 'UPGRADE'),
(326, 'DELAY_KEY_WRITE'),
(327, 'BEGIN'),
(328, 'PROFILE'),
(329, 'MEDIUM'),
(330, 'INTERVAL'),
(331, 'SSL'),
(332, 'DAY_HOUR'),
(333, 'REFERENCES'),
(334, 'AES_ENCRYPT'),
(335, 'STORAGE'),
(336, 'ISOLATION'),
(337, 'CEILING'),
(338, 'INT8'),
(339, 'RESTRICT'),
(340, 'LINESTRINGFROMTEXT'),
(341, 'UNCOMMITTED'),
(342, 'IS'),
(343, 'NOT'),
(344, 'ANALYSE'),
(345, 'DES_KEY_FILE'),
(346, 'COMPRESSED'),
(347, 'START'),
(348, 'SAVEPOINT'),
(349, 'IF'),
(350, 'PRIMARY'),
(351, 'PURGE'),
(352, 'USER'),
(353, 'INNOBASE'),
(354, 'LAST'),
(355, 'EXIT'),
(356, 'KEYS'),
(357, 'LIMIT'),
(358, 'KEY'),
(359, 'MERGE'),
(360, 'UNTIL'),
(361, 'SQL_NO_CACHE'),
(362, 'DELAYED'),
(363, 'ANALYZE'),
(364, 'CONSTRAINT'),
(365, 'SERIAL'),
(366, 'ACTION'),
(367, 'WRITE'),
(368, 'SESSION'),
(369, 'DATABASE'),
(370, 'NULL'),
(371, 'POWER'),
(372, 'USE_FRM'),
(373, 'SLAVE'),
(374, 'TERMINATED'),
(375, 'NVARCHAR'),
(376, 'ASC'),
(377, 'ENABLE'),
(378, 'OPTIONALLY'),
(379, 'DIRECTORY'),
(380, 'WHILE'),
(381, 'MAX_USER_CONNECTIONS'),
(382, 'DISTINCT'),
(383, 'AES_DECRYPT'),
(384, 'LOCAL'),
(385, 'MASTER_SSL_KEY'),
(386, 'NONE'),
(387, 'TABLES'),
(388, '<>'),
(389, 'RLIKE'),
(390, 'TRIGGER'),
(391, 'COLLATION'),
(392, 'SHUTDOWN'),
(393, 'HIGH_PRIORITY'),
(394, 'BTREE'),
(395, 'FIRST'),
(396, 'TYPES'),
(397, 'MASTER'),
(398, 'FIXED'),
(399, 'MULTIPOLYGONFROMTEXT'),
(400, 'ROW_FORMAT');

-- --------------------------------------------------------

--
-- Table structure for table `help_relation`
--

CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

--
-- Dumping data for table `help_relation`
--

INSERT INTO `help_relation` (`help_topic_id`, `help_keyword_id`) VALUES
(1, 0),
(334, 0),
(214, 1),
(419, 2),
(37, 3),
(395, 3),
(194, 4),
(173, 5),
(402, 6),
(18, 7),
(326, 7),
(131, 8),
(212, 9),
(77, 10),
(334, 10),
(13, 11),
(93, 11),
(119, 11),
(326, 11),
(194, 12),
(467, 12),
(357, 13),
(224, 14),
(95, 15),
(334, 16),
(26, 17),
(76, 17),
(174, 17),
(219, 17),
(245, 17),
(257, 17),
(311, 17),
(382, 17),
(390, 17),
(434, 17),
(109, 18),
(353, 19),
(241, 20),
(71, 21),
(91, 22),
(185, 23),
(326, 24),
(377, 24),
(439, 24),
(353, 25),
(185, 26),
(29, 27),
(219, 27),
(30, 28),
(334, 28),
(439, 29),
(391, 30),
(439, 30),
(18, 31),
(275, 31),
(326, 31),
(424, 31),
(439, 31),
(467, 32),
(42, 33),
(66, 33),
(72, 33),
(185, 33),
(334, 33),
(340, 33),
(395, 33),
(434, 33),
(439, 33),
(439, 34),
(443, 34),
(353, 35),
(104, 36),
(395, 36),
(439, 36),
(353, 37),
(334, 38),
(194, 39),
(294, 39),
(340, 40),
(42, 41),
(439, 41),
(443, 41),
(1, 42),
(443, 42),
(162, 43),
(439, 43),
(45, 44),
(93, 44),
(185, 45),
(1, 46),
(42, 47),
(72, 47),
(93, 47),
(178, 48),
(185, 48),
(230, 48),
(196, 49),
(434, 49),
(185, 50),
(334, 51),
(1, 52),
(72, 52),
(91, 52),
(334, 52),
(395, 52),
(434, 52),
(42, 53),
(391, 53),
(437, 53),
(212, 54),
(185, 55),
(79, 56),
(451, 56),
(439, 57),
(362, 58),
(419, 59),
(1, 60),
(32, 61),
(212, 61),
(173, 62),
(431, 62),
(435, 62),
(173, 63),
(434, 63),
(353, 64),
(72, 65),
(91, 65),
(334, 65),
(443, 65),
(37, 66),
(91, 66),
(284, 66),
(334, 66),
(439, 67),
(238, 68),
(353, 69),
(116, 70),
(131, 71),
(431, 71),
(14, 72),
(171, 72),
(281, 72),
(308, 72),
(326, 72),
(334, 72),
(390, 72),
(411, 72),
(456, 72),
(196, 73),
(86, 74),
(175, 74),
(395, 75),
(77, 76),
(378, 77),
(439, 77),
(58, 78),
(309, 78),
(405, 78),
(267, 79),
(24, 80),
(49, 80),
(74, 80),
(91, 81),
(179, 81),
(282, 81),
(455, 81),
(263, 82),
(326, 82),
(93, 83),
(293, 83),
(353, 84),
(26, 85),
(140, 85),
(174, 85),
(257, 85),
(264, 86),
(326, 86),
(131, 87),
(431, 87),
(20, 88),
(77, 88),
(99, 89),
(160, 89),
(37, 90),
(91, 90),
(140, 90),
(183, 90),
(197, 90),
(224, 90),
(434, 90),
(439, 90),
(434, 91),
(439, 91),
(101, 92),
(307, 92),
(437, 92),
(441, 92),
(101, 93),
(31, 94),
(105, 94),
(136, 94),
(246, 94),
(111, 95),
(112, 96),
(463, 96),
(205, 97),
(37, 98),
(72, 98),
(116, 98),
(124, 98),
(131, 98),
(140, 98),
(169, 98),
(197, 98),
(313, 98),
(395, 98),
(434, 98),
(439, 98),
(443, 98),
(447, 98),
(461, 98),
(185, 99),
(118, 100),
(212, 100),
(244, 100),
(353, 100),
(50, 101),
(122, 101),
(199, 101),
(207, 101),
(264, 101),
(308, 101),
(326, 101),
(344, 101),
(377, 101),
(196, 102),
(434, 102),
(439, 102),
(439, 103),
(173, 104),
(1, 105),
(46, 106),
(173, 107),
(439, 108),
(294, 109),
(185, 110),
(427, 111),
(267, 112),
(185, 113),
(230, 113),
(49, 114),
(74, 114),
(219, 115),
(46, 116),
(305, 116),
(49, 117),
(74, 117),
(185, 118),
(293, 119),
(42, 120),
(104, 120),
(109, 120),
(326, 120),
(334, 120),
(339, 120),
(427, 120),
(30, 121),
(93, 121),
(419, 121),
(1, 122),
(24, 123),
(353, 124),
(439, 125),
(165, 126),
(193, 127),
(166, 128),
(293, 128),
(326, 128),
(334, 128),
(393, 128),
(309, 129),
(326, 129),
(439, 130),
(194, 131),
(166, 132),
(14, 133),
(194, 133),
(281, 133),
(308, 133),
(326, 133),
(382, 133),
(390, 133),
(411, 133),
(456, 133),
(395, 134),
(194, 135),
(326, 136),
(395, 136),
(233, 137),
(439, 138),
(52, 139),
(434, 139),
(434, 140),
(439, 140),
(162, 141),
(154, 142),
(26, 143),
(144, 143),
(426, 143),
(419, 144),
(395, 145),
(42, 146),
(72, 146),
(334, 146),
(340, 146),
(434, 146),
(1, 147),
(42, 147),
(75, 147),
(233, 148),
(185, 149),
(230, 149),
(20, 150),
(115, 150),
(154, 150),
(193, 150),
(212, 150),
(294, 150),
(467, 150),
(141, 151),
(194, 151),
(387, 152),
(326, 153),
(434, 154),
(439, 154),
(443, 154),
(89, 155),
(136, 155),
(284, 155),
(130, 156),
(326, 156),
(131, 157),
(145, 158),
(326, 158),
(427, 159),
(131, 160),
(166, 161),
(183, 161),
(293, 161),
(393, 161),
(104, 162),
(284, 162),
(339, 162),
(395, 162),
(334, 163),
(212, 164),
(354, 164),
(439, 165),
(371, 166),
(140, 167),
(197, 167),
(439, 167),
(436, 168),
(423, 169),
(116, 170),
(122, 170),
(169, 170),
(328, 170),
(419, 170),
(439, 171),
(49, 172),
(74, 172),
(334, 173),
(1, 174),
(30, 174),
(334, 174),
(395, 175),
(185, 176),
(131, 177),
(230, 178),
(177, 179),
(326, 179),
(1, 180),
(205, 181),
(77, 182),
(185, 182),
(242, 183),
(434, 184),
(395, 185),
(439, 185),
(434, 186),
(334, 187),
(30, 188),
(37, 188),
(42, 188),
(72, 188),
(91, 188),
(395, 188),
(185, 189),
(151, 190),
(439, 190),
(140, 191),
(174, 191),
(197, 191),
(289, 191),
(326, 191),
(194, 192),
(258, 193),
(433, 194),
(1, 195),
(52, 195),
(76, 195),
(89, 195),
(196, 195),
(284, 195),
(288, 195),
(326, 195),
(434, 195),
(439, 195),
(260, 196),
(397, 197),
(336, 198),
(253, 199),
(437, 200),
(1, 201),
(238, 202),
(402, 202),
(334, 203),
(399, 204),
(293, 205),
(20, 206),
(115, 206),
(154, 206),
(193, 206),
(294, 206),
(467, 206),
(185, 207),
(173, 208),
(173, 209),
(362, 210),
(140, 211),
(197, 211),
(238, 211),
(313, 211),
(395, 211),
(402, 211),
(439, 211),
(173, 212),
(52, 213),
(96, 213),
(101, 213),
(165, 213),
(199, 213),
(257, 213),
(259, 213),
(301, 213),
(326, 213),
(336, 213),
(339, 213),
(378, 213),
(391, 213),
(434, 213),
(437, 213),
(439, 213),
(441, 213),
(326, 214),
(344, 214),
(434, 214),
(439, 214),
(439, 215),
(26, 216),
(257, 216),
(439, 216),
(443, 216),
(173, 217),
(334, 218),
(285, 219),
(439, 220),
(290, 221),
(434, 222),
(77, 223),
(173, 224),
(310, 225),
(334, 225),
(340, 225),
(334, 226),
(212, 227),
(295, 227),
(352, 227),
(193, 228),
(77, 229),
(393, 230),
(456, 231),
(227, 232),
(131, 233),
(136, 234),
(307, 234),
(14, 235),
(17, 235),
(52, 235),
(66, 235),
(140, 235),
(194, 235),
(196, 235),
(259, 235),
(281, 235),
(289, 235),
(326, 235),
(426, 235),
(439, 235),
(310, 236),
(185, 237),
(215, 238),
(326, 239),
(424, 239),
(32, 240),
(151, 240),
(326, 240),
(344, 240),
(435, 240),
(439, 241),
(355, 242),
(132, 243),
(94, 244),
(437, 245),
(439, 246),
(318, 247),
(391, 248),
(37, 249),
(323, 250),
(238, 251),
(435, 252),
(301, 253),
(14, 254),
(18, 254),
(21, 254),
(32, 254),
(50, 254),
(58, 254),
(71, 254),
(109, 254),
(119, 254),
(122, 254),
(130, 254),
(145, 254),
(151, 254),
(177, 254),
(178, 254),
(199, 254),
(207, 254),
(259, 254),
(263, 254),
(264, 254),
(275, 254),
(288, 254),
(289, 254),
(308, 254),
(309, 254),
(313, 254),
(326, 254),
(328, 254),
(344, 254),
(377, 254),
(424, 254),
(456, 254),
(459, 254),
(439, 255),
(185, 256),
(230, 256),
(285, 256),
(334, 256),
(307, 257),
(439, 258),
(109, 259),
(24, 260),
(49, 260),
(74, 260),
(214, 260),
(306, 260),
(323, 260),
(463, 260),
(353, 261),
(132, 262),
(296, 262),
(294, 263),
(93, 264),
(353, 265),
(37, 266),
(237, 266),
(241, 266),
(282, 266),
(334, 266),
(145, 267),
(326, 267),
(126, 268),
(66, 269),
(185, 269),
(173, 270),
(169, 271),
(427, 272),
(20, 273),
(97, 273),
(353, 274),
(173, 275),
(395, 276),
(106, 277),
(367, 277),
(434, 278),
(21, 279),
(185, 280),
(131, 281),
(173, 282),
(353, 283),
(185, 284),
(326, 285),
(355, 285),
(360, 286),
(77, 287),
(109, 287),
(334, 287),
(434, 288),
(334, 289),
(185, 290),
(75, 291),
(185, 291),
(334, 292),
(373, 293),
(77, 294),
(136, 294),
(162, 294),
(173, 295),
(395, 296),
(46, 297),
(305, 297),
(185, 298),
(110, 299),
(173, 300),
(353, 301),
(131, 302),
(419, 302),
(383, 303),
(353, 304),
(129, 305),
(20, 306),
(96, 307),
(206, 307),
(434, 307),
(52, 308),
(144, 308),
(185, 308),
(197, 308),
(411, 308),
(434, 308),
(439, 309),
(1, 310),
(1, 311),
(334, 311),
(1, 312),
(326, 313),
(328, 313),
(395, 314),
(399, 315),
(66, 316),
(185, 316),
(447, 316),
(212, 317),
(436, 317),
(334, 318),
(93, 319),
(461, 320),
(58, 321),
(326, 321),
(257, 322),
(419, 323),
(334, 324),
(391, 325),
(439, 326),
(131, 327),
(306, 327),
(71, 328),
(391, 329),
(353, 330),
(185, 331),
(353, 332),
(185, 333),
(439, 333),
(443, 333),
(415, 334),
(263, 335),
(419, 336),
(420, 337),
(115, 338),
(26, 339),
(257, 339),
(443, 339),
(48, 340),
(419, 341),
(73, 342),
(190, 342),
(347, 342),
(428, 342),
(73, 343),
(140, 343),
(190, 343),
(292, 343),
(171, 344),
(307, 345),
(439, 346),
(131, 347),
(305, 347),
(431, 348),
(24, 349),
(26, 349),
(140, 349),
(174, 349),
(257, 349),
(448, 349),
(434, 350),
(435, 351),
(66, 352),
(206, 352),
(311, 352),
(439, 353),
(93, 354),
(293, 355),
(288, 356),
(326, 356),
(434, 356),
(42, 357),
(72, 357),
(93, 357),
(109, 357),
(334, 357),
(52, 358),
(91, 358),
(434, 358),
(439, 358),
(443, 358),
(439, 359),
(214, 360),
(334, 361),
(37, 362),
(91, 362),
(455, 362),
(441, 363),
(434, 364),
(439, 364),
(224, 365),
(439, 365),
(439, 366),
(443, 366),
(30, 367),
(116, 368),
(122, 368),
(328, 368),
(419, 368),
(140, 369),
(174, 369),
(197, 369),
(289, 369),
(326, 369),
(73, 370),
(347, 370),
(443, 370),
(452, 371),
(437, 372),
(31, 373),
(46, 373),
(130, 373),
(207, 373),
(305, 373),
(395, 374),
(238, 375),
(334, 376),
(340, 376),
(434, 377),
(395, 378),
(439, 379),
(463, 380),
(185, 381),
(0, 382),
(84, 382),
(270, 382),
(285, 382),
(334, 382),
(340, 382),
(361, 382),
(405, 382),
(464, 383),
(30, 384),
(101, 384),
(307, 384),
(395, 384),
(437, 384),
(441, 384),
(173, 385),
(185, 386),
(30, 387),
(119, 387),
(275, 387),
(326, 387),
(462, 388),
(23, 389),
(17, 390),
(245, 390),
(459, 391),
(185, 392),
(91, 393),
(334, 393),
(196, 394),
(93, 395),
(434, 395),
(439, 395),
(326, 396),
(32, 397),
(50, 397),
(104, 397),
(173, 397),
(246, 397),
(339, 397),
(435, 397),
(193, 398),
(439, 398),
(184, 399),
(439, 400);

-- --------------------------------------------------------

--
-- Table structure for table `help_topic`
--

CREATE TABLE `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY  (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

--
-- Dumping data for table `help_topic`
--

INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(0, 'MIN', 14, 'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(1, 'JOIN', 25, 'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint)]\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON condition\n  | table_reference LEFT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [LEFT [OUTER]] JOIN table_factor\n  | table_reference RIGHT [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [RIGHT [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint:\n    USE {INDEX|KEY} [FOR JOIN] (index_list)\n  | IGNORE {INDEX|KEY} [FOR JOIN] (index_list)\n  | FORCE {INDEX|KEY} [FOR JOIN] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER\nJOIN is used with an ON clause, CROSS JOIN is used otherwise.\n\nIn versions of MySQL prior to 5.0.1, parentheses in table_references\nwere just omitted and all join operations were grouped to the left. In\ngeneral, parentheses can be ignored in join expressions containing only\ninner join operations. As of 5.0.1, nested joins are allowed (see\nhttp://dev.mysql.com/doc/refman/5.0/en/nested-joins.html).\n\nFurther changes in join processing were made in 5.0.12 to make MySQL\nmore compliant with standard SQL. These charges are described later in\nthis section.\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.0/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/join.html\n\n', 'SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n', 'http://dev.mysql.com/doc/refman/5.0/en/join.html'),
(2, 'HEX', 33, 'Syntax:\nHEX(N_or_S)\n\nIf N_or_S is a number, returns a string representation of the\nhexadecimal value of N, where N is a longlong (BIGINT) number. This is\nequivalent to CONV(N,10,16).\n\nIf N_or_S is a string, returns a hexadecimal string representation of\nN_or_S where each character in N_or_S is converted to two hexadecimal\ndigits. The inverse of this operation is performed by the UNHEX()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT HEX(255);\n        -> ''FF''\nmysql> SELECT 0x616263;\n        -> ''abc''\nmysql> SELECT HEX(''abc'');\n        -> 616263\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(3, 'REPLACE', 33, 'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT REPLACE(''www.mysql.com'', ''w'', ''Ww'');\n        -> ''WwWwWw.mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(4, 'CONTAINS', 26, 'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(5, 'SRID', 32, 'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT SRID(GeomFromText(''LineString(1 1,2 2)'',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(''LineString(1 1,2 2)'',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(6, 'CURRENT_TIMESTAMP', 28, 'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(7, 'VARIANCE', 14, 'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. As of MySQL 5.0.3, the standard SQL function VAR_POP()\ncan be used instead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(8, 'VAR_SAMP', 14, 'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one. This function was added in MySQL 5.0.3.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(9, 'CONCAT', 33, 'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are non-binary strings,\nthe result is a non-binary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent binary string form; if you want to avoid that, you\ncan use an explicit type cast, as in this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT CONCAT(''My'', ''S'', ''QL'');\n        -> ''MySQL''\nmysql> SELECT CONCAT(''My'', NULL, ''QL'');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> ''14.3''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(10, 'GEOMETRY HIERARCHY', 30, 'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnon-instantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-geometry-class-hierarchy.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-geometry-class-hierarchy.html'),
(11, 'CHAR FUNCTION', 33, 'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nAs of MySQL 5.0.15, CHAR() arguments larger than 255 are converted into\nmultiple result bytes. For example, CHAR(256) is equivalent to\nCHAR(1,0), and CHAR(256*256) is equivalent to CHAR(1,0,0):\n\nmysql> SELECT HEX(CHAR(1,0)), HEX(CHAR(256));\n+----------------+----------------+\n| HEX(CHAR(1,0)) | HEX(CHAR(256)) |\n+----------------+----------------+\n| 0100           | 0100           |\n+----------------+----------------+\nmysql> SELECT HEX(CHAR(1,0,0)), HEX(CHAR(256*256));\n+------------------+--------------------+\n| HEX(CHAR(1,0,0)) | HEX(CHAR(256*256)) |\n+------------------+--------------------+\n| 010000           | 010000             |\n+------------------+--------------------+\n\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nBefore MySQL 5.0.15, CHAR() returns a string in the connection\ncharacter set and the USING clause is unavailable. In addition, each\nargument is interpreted modulo 256, so CHAR(256) and CHAR(256*256) both\nare equivalent to CHAR(0).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT CHAR(77,121,83,81,''76'');\n        -> ''MySQL''\nmysql> SELECT CHAR(77,77.3,''77.3'');\n        -> ''MMM''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(12, 'DATETIME', 20, 'DATETIME\n\nA date and time combination. The supported range is ''1000-01-01\n00:00:00'' to ''9999-12-31 23:59:59''. MySQL displays DATETIME values in\n''YYYY-MM-DD HH:MM:SS'' format, but allows assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),
(13, 'OPEN', 35, 'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/open.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/open.html'),
(14, 'SHOW CREATE PROCEDURE', 25, 'Syntax:\nSHOW CREATE {PROCEDURE | FUNCTION} sp_name\n\nThese statements are MySQL extensions. Similar to SHOW CREATE TABLE,\nthey return the exact string that can be used to re-create the named\nroutine. The statements require that you be the owner of the routine or\nhave SELECT access to the mysql.proc table. If you do not have\nprivileges for the routine itself, the value displayed for the Create\nProcedure or Create Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-procedure.html\n\n', 'mysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n       Function: hello\n       sql_mode:\nCreate Function: CREATE FUNCTION `test`.`hello`(s CHAR(20)) RETURNS CHAR(50)\n                 RETURN CONCAT(''Hello, '',s,''!'')\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-create-procedure.html'),
(15, 'INTEGER', 20, 'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(16, 'LOWER', 33, 'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LOWER(''QUADRATICALLY'');\n        -> ''quadratically''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(17, 'CREATE TRIGGER', 21, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_stmt\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. CREATE TRIGGER was added in\nMySQL 5.0.2. Currently, its use requires the SUPER privilege.\n\nThe trigger becomes associated with the table named tbl_name, which\nmust refer to a permanent table. You cannot associate a trigger with a\nTEMPORARY table or a view.\n\nWhen the trigger is activated, the DEFINER clause determines the\nprivileges that apply, as described later in this section.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after the statement that\nactivated it.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE statements on the table do not activate this\n  trigger, because they do not use DELETE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-trigger.html'),
(18, 'SHOW COLUMNS', 25, 'Syntax:\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views as of MySQL 5.0.1. The LIKE clause, if present,\nindicates which column names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nIf the data types differ from what you expect them to be based on your\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions for which this occurs\nare described in\nhttp://dev.mysql.com/doc/refman/5.0/en/silent-column-changes.html.\n\nThe FULL keyword causes the output to include the privileges you have\nas well as any per-column comments for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table''s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee [HELP DESCRIBE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-columns.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-columns.html'),
(19, 'MONTH', 28, 'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as ''0000-00-00'' or ''2008-00-00'' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTH(''1998-02-03'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(20, 'TINYINT', 20, 'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(21, 'SHOW TRIGGERS', 25, 'Syntax:\nSHOW TRIGGERS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined on the MySQL server.\nThis statement requires the SUPER privilege. It was implemented in\nMySQL 5.0.10. The LIKE clause, if present, indicates which trigger\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.0/en/using-triggers.html, the output\nof this statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE ''acc%''\\G\n*************************** 1. row ***************************\n  Trigger: ins_sum\n    Event: INSERT\n    Table: account\nStatement: SET @sum = @sum + NEW.amount\n   Timing: BEFORE\n  Created: NULL\n sql_mode:\n  Definer: myname@localhost\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-triggers.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-triggers.html'),
(22, 'MASTER_POS_WAIT', 13, 'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave''s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(23, 'REGEXP', 33, 'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n"\\n" to represent the newline character), you must double any "\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''Monty!'' REGEXP ''m%y%%'';\n        -> 0\nmysql> SELECT ''Monty!'' REGEXP ''.*'';\n        -> 1\nmysql> SELECT ''new*\\n*line'' REGEXP ''new\\\\*.\\\\*line'';\n        -> 1\nmysql> SELECT ''a'' REGEXP ''A'', ''a'' REGEXP BINARY ''A'';\n        -> 1  0\nmysql> SELECT ''a'' REGEXP ''^[a-d]'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),
(24, 'IF STATEMENT', 35, 'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nIF implements a basic conditional construct. If the search_condition\nevaluates to true, the corresponding SQL statement list is executed. If\nno search_condition matches, the statement list in the ELSE clause is\nexecuted. Each statement_list consists of one or more statements.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See [HELP CASE operator].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/if-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/if-statement.html'),
(25, '^', 18, 'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(26, 'DROP VIEW', 36, 'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which non-existing\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon''t exist. When this clause is given, a NOTE is generated for each\nnon-existent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-view.html'),
(27, 'WITHIN', 26, 'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(28, 'WEEK', 28, 'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() allows you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEK(''1998-02-20'');\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',0);\n        -> 7\nmysql> SELECT WEEK(''1998-02-20'',1);\n        -> 8\nmysql> SELECT WEEK(''1998-12-31'',1);\n        -> 53\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(29, 'PREPARE', 25, 'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a statement and assigns it a name,\nstmt_name, by which to refer to the statement later. Statement names\nare not case sensitive. preparable_stmt is either a string literal or a\nuser variable that contains the text of the statement. The text must\nrepresent a single SQL statement, not multiple statements. Within the\nstatement, "?" characters can be used as parameter markers to indicate\nwhere data values are to be bound to the query later when you execute\nit. The "?" characters should not be enclosed within quotes, even if\nyou intend to bind them to string values. Parameter markers can be used\nonly where data values should appear, not for SQL keywords,\nidentifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nThe scope of a prepared statement is the client session within which it\nis created. Other clients cannot see it.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),
(30, 'LOCK', 7, 'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nLOCK TABLES acquires table locks for the current thread. It locks base\ntables but not views. To use LOCK TABLES, you must have the LOCK TABLES\nprivilege, and the SELECT privilege for each table to be locked.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nthread. Another use for UNLOCK TABLES is to release the global read\nlock acquired with FLUSH TABLES WITH READ LOCK. (You can lock all\ntables in all databases with read locks with the FLUSH TABLES WITH READ\nLOCK statement. See [HELP FLUSH]. This is a very convenient way to get\nbackups if you have a filesystem such as Veritas that can take\nsnapshots in time.)\n\nThe following general rules apply to acquisition and release of locks\nby a given thread:\n\no Table locks are acquired with LOCK TABLES.\n\no If the LOCK TABLES statement must wait due to locks held by other\n  threads on any of the tables, it blocks until all locks can be\n  acquired.\n\no Table locks are released explicitly with UNLOCK TABLES.\n\no Table locks are released implicitly under these conditions:\n\n  o LOCK TABLES releases any table locks currently held by the thread\n    before acquiring new locks.\n\n  o Beginning a transaction (for example, with START TRANSACTION)\n    implicitly performs an UNLOCK TABLES. (Additional information about\n    the interaction between table locking and transactions is given\n    later in the section.)\n\n  o If a client connection drops, the server releases table locks held\n    by the client. If the client reconnects, the locks will no longer\n    be in effect. For this reason, clients may wish to disable\n    auto-reconnect. With auto-reconnect in effect, the client is not\n    notified if reconnect occurs but any table locks will have been\n    lost. With auto-reconnect disabled, if the connection drops, an\n    error occurs for the next statement issued. The client can detect\n    the error and take appropriate action such as reacquiring the\n    locks. See\n    http://dev.mysql.com/doc/refman/5.0/en/auto-reconnect.html.\n\no One thread cannot release locks held by another thread.\n\n*Note*: If you use ALTER TABLE on a locked table, it may become\nunlocked. See\nhttp://dev.mysql.com/doc/refman/5.0/en/alter-table-problems.html.\n\nThe main reasons to use LOCK TABLES are to emulate transactions or to\nget more speed when updating tables. This is explained in more detail\nlater in this section.\n\nA table lock protects only against inappropriate reads or writes by\nother clients. The client holding the lock, even a read lock, can\nperform table-level operations such as DROP TABLE. Truncate operations\nare not transaction-safe, so an error occurs if the client attempts one\nduring an active transaction or while holding a table lock.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/lock-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/lock-tables.html'),
(31, 'RESET SLAVE', 25, 'Syntax:\nRESET SLAVE\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster''s binary logs. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay logs, and starts a new relay log.\n\n*Note*: All relay logs are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nConnection information stored in the master.info file is immediately\nreset using any values specified in the corresponding startup options.\nThis information includes values such as master host, master port,\nmaster user, and master password. If the slave SQL thread was in the\nmiddle of replicating temporary tables when it was stopped, and RESET\nSLAVE is issued, these replicated temporary tables are deleted on the\nslave.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/reset-slave.html'),
(32, 'SHOW BINARY LOGS', 25, 'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE MASTER LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-binary-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-binary-logs.html'),
(33, 'POLYGON', 22, 'Polygon(ls1,ls2,...)\n\nConstructs a WKB Polygon value from a number of WKB LineString\narguments. If any argument does not represent the WKB of a LinearRing\n(that is, not a closed and simple LineString) the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(34, 'MINUTE', 28, 'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MINUTE(''98-02-03 10:05:03'');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(35, 'DAY', 28, 'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(36, 'MID', 33, 'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(37, 'REPLACE INTO', 25, 'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL ---\nthat either inserts or updates --- see\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/replace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/replace.html'),
(38, 'UUID', 13, 'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n"DCE 1.1: Remote Procedure Call" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a string of five hexadecimal\nnumbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID();\n        -> ''6ccd780c-baba-1026-9564-0040f4311e29''\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(39, 'LINESTRING', 22, 'LineString(pt1,pt2,...)\n\nConstructs a WKB LineString value from a number of WKB Point arguments.\nIf any argument is not a WKB Point, the return value is NULL. If the\nnumber of Point arguments is less than two, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(40, 'SLEEP', 13, 'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part given in microseconds. This\nfunction was added in MySQL 5.0.12.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(41, 'CONNECTION_ID', 15, 'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT CONNECTION_ID();\n        -> 23786\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(42, 'DELETE', 25, 'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name. The number of rows deleted is returned by the ROW_COUNT()\nfunction (see [HELP BENCHMARK]). The WHERE clause, if given, specifies\nthe conditions that identify which rows to delete. With no WHERE\nclause, all rows are deleted. If the ORDER BY clause is specified, the\nrows are deleted in the order that is specified. The LIMIT clause\nplaces a limit on the number of rows that can be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in [HELP SELECT].\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not want to know the number of\ndeleted rows, is to use TRUNCATE TABLE. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/delete.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/delete.html'),
(43, 'ROUND', 4, 'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(44, 'NULLIF', 6, 'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n', 'mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),
(45, 'CLOSE', 35, 'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor.\n\nIf not closed explicitly, a cursor is closed at the end of the compound\nstatement in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/close.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/close.html'),
(46, 'STOP SLAVE', 25, 'Syntax:\nSTOP SLAVE [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/stop-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/stop-slave.html'),
(47, 'TIMEDIFF', 28, 'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMEDIFF(''2000:01:01 00:00:00'',\n    ->                 ''2000:01:01 00:00:00.000001'');\n        -> ''-00:00:00.000001''\nmysql> SELECT TIMEDIFF(''1997-12-31 23:59:59.000001'',\n    ->                 ''1997-12-30 01:01:01.000002'');\n        -> ''46:58:57.999999''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(48, 'LINEFROMTEXT', 3, 'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(49, 'CASE OPERATOR', 6, 'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n', 'mysql> SELECT CASE 1 WHEN 1 THEN ''one''\n    ->     WHEN 2 THEN ''two'' ELSE ''more'' END;\n        -> ''one''\nmysql> SELECT CASE WHEN 1>0 THEN ''true'' ELSE ''false'' END;\n        -> ''true''\nmysql> SELECT CASE BINARY ''B''\n    ->     WHEN ''a'' THEN 1 WHEN ''b'' THEN 2 END;\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),
(50, 'SHOW MASTER STATUS', 25, 'Syntax:\nSHOW MASTER STATUS\n\nProvides status information about the binary log files of the master.\nExample:\n\nmysql > SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-master-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-master-status.html'),
(51, 'ADDTIME', 28, 'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDTIME(''1997-12-31 23:59:59.999999'',\n    ->                ''1 1:1:1.000002'');\n        -> ''1998-01-02 01:01:01.000001''\nmysql> SELECT ADDTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''03:00:01.999997''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(52, 'SPATIAL', 30, 'MySQL can create spatial indexes using syntax similar to that for\ncreating regular indexes, but extended with the SPATIAL keyword.\nCurrently, columns in spatial indexes must be declared NOT NULL. The\nfollowing examples demonstrate how to create spatial indexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g));\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support non-spatial indexing of spatial columns, the\nengine creates a B-tree index. A B-tree index on spatial values will be\nuseful for exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-indexes.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-indexes.html'),
(53, 'TIMESTAMPDIFF', 28, 'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns the integer difference between the date or datetime expressions\ndatetime_expr1 and datetime_expr2. The unit for the result is given by\nthe unit argument. The legal values for unit are the same as those\nlisted in the description of the TIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPDIFF(MONTH,''2003-02-01'',''2003-05-01'');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,''2002-05-01'',''2001-01-01'');\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(54, 'UPPER', 33, 'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT UPPER(''Hej'');\n        -> ''HEJ''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(55, 'FROM_UNIXTIME', 28, 'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n''YYYY-MM-DD HH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on\nwhether the function is used in a string or numeric context. The value\nis expressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> ''2007-11-30 10:30:19''\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      ''%Y %D %M %h:%i:%s %x'');\n        -> ''2007 30th November 10:30:59 2007''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(56, 'MEDIUMBLOB', 20, 'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a three-byte length prefix that\nindicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(57, 'IFNULL', 6, 'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n', 'mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,''yes'');\n        -> ''yes''\n', 'http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),
(58, 'SHOW ERRORS', 25, 'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that instead of\ndisplaying errors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-errors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-errors.html'),
(59, 'LEAST', 17, 'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If any argument is a case-sensitive string, the arguments are\n  compared as case-sensitive strings.\n\no In all other cases, the arguments are compared as case-insensitive\n  strings.\n\nBefore MySQL 5.0.13, LEAST() returns NULL only if all arguments are\nNULL. As of 5.0.13, it returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(''B'',''A'',''C'');\n        -> ''A''\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(60, '=', 17, '=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT ''0'' = 0;\n        -> 1\nmysql> SELECT ''0.0'' = 0;\n        -> 1\nmysql> SELECT ''0.01'' = 0;\n        -> 0\nmysql> SELECT ''.01'' = 0.01;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(61, 'REVERSE', 33, 'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT REVERSE(''abc'');\n        -> ''cba''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(62, 'ISNULL', 17, 'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(63, 'BINARY', 20, 'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than non-binary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(64, 'BLOB DATA TYPE', 20, 'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.0/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/blob.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/blob.html'),
(65, 'BOUNDARY', 32, 'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(66, 'CREATE USER', 8, 'Syntax:\nCREATE USER user [IDENTIFIED BY [PASSWORD] ''password'']\n    [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n\nThe CREATE USER statement was added in MySQL 5.0.2. This statement\ncreates new MySQL accounts. To use it, you must have the global CREATE\nUSER privilege or the INSERT privilege for the mysql database. For each\naccount, CREATE USER creates a new record in the mysql.user table that\nhas no privileges. An error occurs if the account already exists. Each\naccount is named using the same format as for the GRANT statement; for\nexample, ''jeffrey''@''localhost''. If you specify only the username part\nof the account name, a hostname part of ''%'' is used. For additional\ninformation about specifying account names, see [HELP GRANT].\n\nThe account can be given a password with the optional IDENTIFIED BY\nclause. The user value and the password are given the same way as for\nthe GRANT statement. In particular, to specify the password in plain\ntext, omit the PASSWORD keyword. To specify the password as the hashed\nvalue as returned by the PASSWORD() function, include the PASSWORD\nkeyword. See [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-user.html'),
(67, 'POINT', 22, 'Point(x,y)\n\nConstructs a WKB Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(68, 'CURRENT_USER', 15, 'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the username and hostname combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. As of MySQL 5.0.10, within a stored\nroutine that is defined with the SQL SECURITY DEFINER characteristic,\nCURRENT_USER() returns the creator of the routine. The return value is\na string in the utf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user ''''@''localhost'' to\ndatabase ''mysql''\nmysql> SELECT CURRENT_USER();\n        -> ''@localhost''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(69, 'LCASE', 33, 'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(70, '<=', 17, 'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 0.1 <= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(71, 'SHOW PROFILES', 25, 'Syntax:\nSHOW PROFILES\n\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT n [OFFSET n]]\n\ntype:\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n\nThe SHOW PROFILES and SHOW PROFILE statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\nProfiling is controlled by the profiling session variable, which has a\ndefault value of 0 (OFF). Profiling is enabled by setting profiling to\n1 or ON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nmaster. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILES and SHOW PROFILE, so\nyou will find neither of those statements in the profile list.\nMalformed statements are profiled. For example, SHOW PROFILING is an\nillegal statement, and a syntax error occurs if you try to execute it,\nbut it will show up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT n clause may be given to limit the output to n rows. If LIMIT\nis given, OFFSET n may be added to begin the output n rows into the\nfull set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthought there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttp://dev.mysql.com/doc/refman/5.0/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-profiles.html\n\n', 'mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-profiles.html'),
(72, 'UPDATE', 25, 'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] tbl_name\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1=expr1 [, col_name2=expr2 ...]\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in tbl_name with new values. The SET clause indicates\nwhich columns to modify and the values they should be given. The WHERE\nclause, if given, specifies the conditions that identify which rows to\nupdate. With no WHERE clause, all rows are updated. If the ORDER BY\nclause is specified, the rows are updated in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. It is specified as described in [HELP SELECT].\n\nThe UPDATE statement supports the following modifiers:\n\no If you use the LOW_PRIORITY keyword, execution of the UPDATE is\n  delayed until no other clients are reading from the table. This\n  affects only storage engines that use only table-level locking\n  (MyISAM, MEMORY, MERGE).\n\no If you use the IGNORE keyword, the update statement does not abort\n  even if errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/update.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/update.html'),
(73, 'IS NOT NULL', 17, 'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(74, 'CASE STATEMENT', 35, 'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored routines implements a complex conditional\nconstruct. If a search_condition evaluates to true, the corresponding\nSQL statement list is executed. If no search condition matches, the\nstatement list in the ELSE clause is executed. Each statement_list\nconsists of one or more statements.\n\n*Note*: The syntax of the CASE statement shown here for use inside\nstored routines differs slightly from that of the SQL CASE expression\ndescribed in [HELP CASE operator]. The CASE statement cannot have an\nELSE NULL clause, and it is terminated with END CASE instead of END.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/case-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/case-statement.html'),
(75, 'EXECUTE STATEMENT', 25, 'Syntax:\nEXECUTE stmt_name [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement, you execute it with an EXECUTE statement\nthat refers to the prepared statement name. If the prepared statement\ncontains any parameter markers, you must supply a USING clause that\nlists user variables containing the values to be bound to the\nparameters. Parameter values can be supplied only by user variables,\nand the USING clause must name exactly as many variables as the number\nof parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),
(76, 'DROP INDEX', 36, 'Syntax:\nDROP INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-index.html'),
(77, 'MATCH AGAINST', 33, 'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables, and can be\n  created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a literal string, not a variable or a column name. There\nare three types of full-text searches:\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as "some" or\n  "then" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.0/en/fulltext-boolean.html.\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in 50% or more of the rows are considered common and do not\n  match. Full-text searches are natural language searches if no\n  modifier is given.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The WITH QUERY\n  EXPANSION modifier specifies a query expansion search. For more\n  information, see\n  http://dev.mysql.com/doc/refman/5.0/en/fulltext-query-expansion.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/fulltext-search.html\n\n', 'mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root'') AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root'');\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/fulltext-search.html'),
(78, 'ABS', 4, 'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(79, 'POLYFROMWKB', 29, 'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(80, 'NOT LIKE', 33, 'Syntax:\nexpr NOT LIKE pat [ESCAPE ''escape_char'']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE ''escape_char'']).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),
(81, 'SPACE', 33, 'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT SPACE(6);\n        -> ''      ''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(82, 'MBR DEFINITION', 5, 'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-class-geometry.html\n\n', '((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n', 'http://dev.mysql.com/doc/refman/5.0/en/gis-class-geometry.html'),
(83, 'GEOMETRYCOLLECTION', 22, 'GeometryCollection(g1,g2,...)\n\nConstructs a WKB GeometryCollection. If any argument is not a\nwell-formed WKB representation of a geometry, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(84, 'MAX', 14, 'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(85, '*', 4, 'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\nmysql> SELECT 18014398509481984*18014398509481984;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(86, 'TIMESTAMP', 20, 'TIMESTAMP\n\nA timestamp. The range is ''1970-01-01 00:00:01'' UTC to partway through\nthe year 2038. TIMESTAMP values are stored as the number of seconds\nsince the epoch (''1970-01-01 00:00:00'' UTC). A TIMESTAMP cannot\nrepresent the value ''1970-01-01 00:00:00'' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n''0000-00-00 00:00:00'', the "zero" TIMESTAMP value.\n\nA TIMESTAMP column is useful for recording the date and time of an\nINSERT or UPDATE operation. By default, the first TIMESTAMP column in a\ntable is automatically set to the date and time of the most recent\noperation if you do not assign it a value yourself. You can also set\nany TIMESTAMP column to the current date and time by assigning it a\nNULL value. Variations on automatic initialization and update\nproperties are described in\nhttp://dev.mysql.com/doc/refman/5.0/en/timestamp.html.\n\nA TIMESTAMP value is returned as a string in the format ''YYYY-MM-DD\nHH:MM:SS'' with a display width fixed at 19 characters. To obtain the\nvalue as a number, you should add +0 to the timestamp column.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.0; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),
(87, 'DES_DECRYPT', 10, 'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.0/en/secure-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(88, 'ENDPOINT', 11, 'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),
(89, 'CACHE INDEX', 25, 'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cache-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/cache-index.html'),
(90, 'COMPRESS', 10, 'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(''''));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(''a''));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',16)));\n        -> 15\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(91, 'INSERT', 25, 'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    VALUES ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/insert.html'),
(92, 'COUNT', 14, 'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(93, 'HANDLER', 25, 'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\nHANDLER tbl_name READ index_name { = | >= | <= | < } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for MyISAM and InnoDB tables.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/handler.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/handler.html'),
(94, 'MLINEFROMTEXT', 3, 'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(95, 'GEOMCOLLFROMWKB', 29, 'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(96, 'RENAME TABLE', 36, 'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nthread can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/rename-table.html\n\n', 'CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n', 'http://dev.mysql.com/doc/refman/5.0/en/rename-table.html'),
(97, 'BOOLEAN', 20, 'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Non-zero values are considered true:\n\nmysql> SELECT IF(0, ''true'', ''false'');\n+------------------------+\n| IF(0, ''true'', ''false'') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, ''true'', ''false'');\n+------------------------+\n| IF(1, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, ''true'', ''false'');\n+------------------------+\n| IF(2, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(0 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(1 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(2 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(2 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nWe intend to implement full boolean type handling, in accordance with\nstandard SQL, in a future MySQL release.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(98, 'DEFAULT', 13, 'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. Starting with MySQL\n5.0.2, an error results if the column has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(99, 'MOD', 4, 'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(100, 'TINYTEXT', 20, 'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a one-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(101, 'OPTIMIZE TABLE', 19, 'Syntax:\nOPTIMIZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nOPTIMIZE TABLE should be used if you have deleted a large part of a\ntable or if you have made many changes to a table with variable-length\nrows (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns).\nDeleted rows are maintained in a linked list and subsequent INSERT\noperations reuse old row positions. You can use OPTIMIZE TABLE to\nreclaim the unused space and to defragment the data file.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/optimize-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/optimize-table.html'),
(102, 'DECODE', 10, 'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(103, '<=>', 17, 'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(104, 'LOAD DATA FROM MASTER', 25, 'Syntax:\nLOAD DATA FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nThis statement takes a snapshot of the master and copies it to the\nslave. It updates the values of MASTER_LOG_FILE and MASTER_LOG_POS so\nthat the slave starts replicating from the correct position. Any table\nand database exclusion rules specified with the --replicate-*-do-* and\n--replicate-*-ignore-* options are honored. --replicate-rewrite-db is\nnot taken into account because a user could use this option to set up a\nnon-unique mapping such as --replicate-rewrite-db="db1->db3" and\n--replicate-rewrite-db="db2->db3", which would confuse the slave when\nloading tables from the master.\n\nUse of this statement is subject to the following conditions:\n\no It works only for MyISAM tables. Attempting to load a non-MyISAM\n  table results in the following error:\n\nERROR 1189 (08S01): Net error reading from master\n\no It acquires a global read lock on the master while taking the\n  snapshot, which prevents updates on the master during the load\n  operation.\n\nIf you are loading large tables, you might have to increase the values\nof net_read_timeout and net_write_timeout on both the master and slave\nservers. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nNote that LOAD DATA FROM MASTER does not copy any tables from the mysql\ndatabase. This makes it easy to have different users and privileges on\nthe master and the slave.\n\nTo use LOAD DATA FROM MASTER, the replication account that is used to\nconnect to the master must have the RELOAD and SUPER privileges on the\nmaster and the SELECT privilege for all master tables you want to load.\nAll master tables for which the user does not have the SELECT privilege\nare ignored by LOAD DATA FROM MASTER. This is because the master hides\nthem from the user: LOAD DATA FROM MASTER calls SHOW DATABASES to know\nthe master databases to load, but SHOW DATABASES returns only databases\nfor which the user has some privilege. See [HELP SHOW DATABASES]. On\nthe slave side, the user that issues LOAD DATA FROM MASTER must have\nprivileges for dropping and creating the databases and tables that are\ncopied.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-data-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/load-data-from-master.html'),
(105, 'RESET', 25, 'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/reset.html'),
(106, 'HELP STATEMENT', 24, 'Syntax:\nHELP ''search_string''\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.0/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/help.html'),
(107, 'GET_LOCK', 13, 'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This allows clients that agree on\na given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also allows a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> SELECT GET_LOCK(''lock1'',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT GET_LOCK(''lock2'',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock1'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(108, 'UCASE', 33, 'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(109, 'SHOW BINLOG EVENTS', 25, 'Syntax:\nSHOW BINLOG EVENTS\n   [IN ''log_name''] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify ''log_name'',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-binlog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-binlog-events.html'),
(110, 'MPOLYFROMWKB', 29, 'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(111, 'ITERATE', 35, 'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means "do the loop again."\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/iterate-statement.html\n\n', 'CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND\n', 'http://dev.mysql.com/doc/refman/5.0/en/iterate-statement.html'),
(112, 'DO', 25, 'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/do.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/do.html'),
(113, 'CURTIME', 28, 'Syntax:\nCURTIME()\n\nReturns the current time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURTIME();\n        -> ''23:50:26''\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(114, 'CHAR_LENGTH', 33, 'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five two-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(115, 'BIGINT', 20, 'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(116, 'SET', 25, 'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-option.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-option.html'),
(117, 'CONV', 4, 'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT CONV(''a'',16,2);\n        -> ''1010''\nmysql> SELECT CONV(''6E'',18,8);\n        -> ''172''\nmysql> SELECT CONV(-17,10,-18);\n        -> ''-H''\nmysql> SELECT CONV(10+''10''+''10''+0xa,10,10);\n        -> ''40''\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(118, 'DATE', 20, 'DATE\n\nA date. The supported range is ''1000-01-01'' to ''9999-12-31''. MySQL\ndisplays DATE values in ''YYYY-MM-DD'' format, but allows assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),
(119, 'SHOW OPEN TABLES', 25, 'Syntax:\nSHOW OPEN TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.0/en/table-cache.html. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-open-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-open-tables.html'),
(120, 'EXTRACT', 28, 'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT EXTRACT(YEAR FROM ''1999-07-02'');\n       -> 1999\nmysql> SELECT EXTRACT(YEAR_MONTH FROM ''1999-07-02 01:02:03'');\n       -> 199907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM ''1999-07-02 01:02:03'');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM ''2003-01-02 10:30:00.000123'');\n        -> 123\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(121, 'ENCRYPT', 10, 'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument should be a string with at least two\ncharacters. If no salt argument is given, a random value is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT ENCRYPT(''hello'');\n        -> ''VxuFAJXVARROc''\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(122, 'SHOW STATUS', 25, 'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE ''Key%'';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nThe GLOBAL and SESSION options are new in MySQL 5.0.2. With the GLOBAL\nmodifier, SHOW STATUS displays the status values for all connections to\nMySQL. With SESSION, it displays the status values for the current\nconnection. If no modifier is present, the default is SESSION. LOCAL is\na synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.0/en/server-status-variables.html.\n\n*Note*: Before MySQL 5.0.2, SHOW STATUS returned global status values.\nBecause the default as of 5.0.2 is to return session values, this is\nincompatible with previous versions. To issue a SHOW STATUS statement\nthat will retrieve global status values for all versions of MySQL,\nwrite it like this:\n\nSHOW /*!50002 GLOBAL */ STATUS;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-status.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(123, 'OLD_PASSWORD', 10, 'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added to MySQL when the implementation of PASSWORD()\nwas changed to improve security. OLD_PASSWORD() returns the value of\nthe old (pre-4.1) implementation of PASSWORD() as a binary string, and\nis intended to permit you to reset passwords for any pre-4.1 clients\nthat need to connect to your version 5.0 MySQL server without locking\nthem out. See\nhttp://dev.mysql.com/doc/refman/5.0/en/password-hashing.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(124, 'SET VARIABLE', 35, 'Syntax:\nSET var_name = expr [, var_name = expr] ...\n\nThe SET statement in stored routines is an extended version of the\ngeneral SET statement. Referenced variables may be ones declared inside\na routine, or global system variables.\n\nThe SET statement in stored routines is implemented as part of the\npre-existing SET syntax. This allows an extended syntax of SET a=x,\nb=y, ... where different variable types (locally declared variables and\nglobal and session server variables) can be mixed. This also allows\ncombinations of local variables and some options that make sense only\nfor system variables; in that case, the options are recognized but\nignored.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-statement.html'),
(125, 'FORMAT', 33, 'Syntax:\nFORMAT(X,D)\n\nFormats the number X to a format like ''#,###,###.##'', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT FORMAT(12332.123456, 4);\n        -> ''12,332.1235''\nmysql> SELECT FORMAT(12332.1,4);\n        -> ''12,332.1000''\nmysql> SELECT FORMAT(12332.2,0);\n        -> ''12,332''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(126, '||', 12, 'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is non-zero, and 0 otherwise. With a NULL operand, the result\nis 1 if the other operand is non-zero, and NULL otherwise. If both\noperands are NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n', 'mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),
(127, 'BIT_LENGTH', 33, 'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT BIT_LENGTH(''text'');\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(128, 'EXTERIORRING', 2, 'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),
(129, 'GEOMFROMWKB', 29, 'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(130, 'SHOW SLAVE HOSTS', 25, 'Syntax:\n          SHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. Only slaves started with the --report-host=slave_name option\nare visible in this list.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this: mysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+ | Server_id | Host | Port\n| Master_id | +------------+-----------+------+-----------+ | 192168010\n| iconnect2 | 3306 | 192168011 | | 1921680101 | athena | 3306 |\n192168011 | +------------+-----------+------+-----------+ Server_id:\nThe unique server ID of the slave server, as configured in the server''s\noption file, or on the command line with --server-id=value . Host: The\nhost name of the slave server, as configured in the server''s option\nfile, or on the command line with --report-host=value. Note that this\ncan differ from the machine name as configured in the operating system.\nPort: The port the slave server is listening on. Master_id: The unique\nserver ID of the master server that the slave server is replicating\nfrom. Some MySQL versions report another variable, Rpl_recovery_rank.\nThis variable was never used, and was eventually removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-slave-hosts.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-slave-hosts.html'),
(131, 'START TRANSACTION', 7, 'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT] | BEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET AUTOCOMMIT = {0 | 1}\n\nThe START TRANSACTION and BEGIN statement begin a new transaction.\nCOMMIT commits the current transaction, making its changes permanent.\nROLLBACK rolls back the current transaction, canceling its changes. The\nSET AUTOCOMMIT statement disables or enables the default autocommit\nmode for the current connection.\n\nBeginning with MySQL 5.0.3, the optional WORK keyword is supported for\nCOMMIT and ROLLBACK, as are the CHAIN and RELEASE clauses. CHAIN and\nRELEASE can be used for additional control over transaction completion.\nThe value of the completion_type system variable determines the default\ncompletion behavior. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-system-variables.html.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client connection after terminating\nthe current transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk.\n\nIf you are using a transaction-safe storage engine (such as InnoDB,\nBDB, or NDB Cluster), you can disable autocommit mode with the\nfollowing statement:\n\nSET AUTOCOMMIT=0;\n\nAfter disabling autocommit mode by setting the AUTOCOMMIT variable to\nzero, you must use COMMIT to store your changes to disk or ROLLBACK if\nyou want to ignore the changes you have made since the beginning of\nyour transaction.\n\nTo disable autocommit mode for a single series of statements, use the\nSTART TRANSACTION statement:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/commit.html\n\n', 'START TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n', 'http://dev.mysql.com/doc/refman/5.0/en/commit.html'),
(132, 'BETWEEN AND', 17, 'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.0/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT ''b'' BETWEEN ''a'' AND ''c'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''3'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''x-3'';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(133, 'MULTIPOLYGON', 22, 'MultiPolygon(poly1,poly2,...)\n\nConstructs a WKB MultiPolygon value from a set of WKB Polygon\narguments. If any argument is not a WKB Polygon, the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(134, 'TIME_FORMAT', 28, 'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, and seconds. Other\nspecifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_FORMAT(''100:00:00'', ''%H %k %h %I %l'');\n        -> ''100 100 04 04 4''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(135, 'LEFT', 33, 'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LEFT(''foobarbar'', 5);\n        -> ''fooba''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(136, 'FLUSH QUERY CACHE', 24, 'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/query-cache-status-and-maintenance.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/query-cache-status-and-maintenance.html'),
(137, 'SET DATA TYPE', 20, 'SET(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values ''value1'', ''value2'', ... A SET\ncolumn can have a maximum of 64 members. SET values are represented\ninternally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(138, 'RAND', 4, 'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT RAND();\n        -> 0.9233482386203\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\nmysql> SELECT RAND();\n        -> 0.63553050033332\nmysql> SELECT RAND();\n        -> 0.70100469486881\nmysql> SELECT RAND(20);\n        -> 0.15888261251047\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(139, 'RPAD', 33, 'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT RPAD(''hi'',5,''?'');\n        -> ''hi???''\nmysql> SELECT RPAD(''hi'',1,''?'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(140, 'CREATE DATABASE', 36, 'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification ...]\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE as of MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-database.html'),
(141, 'DEC', 20, 'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(142, 'VAR_POP', 14, 'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. This function was added in MySQL 5.0.3. Before 5.0.3,\nyou can use VARIANCE(), which is equivalent but is not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(143, 'ELT', 33, 'Syntax:\nELT(N,str1,str2,str3,...)\n\nReturns str1 if N = 1, str2 if N = 2, and so on. Returns NULL if N is\nless than 1 or greater than the number of arguments. ELT() is the\ncomplement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT ELT(1, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''ej''\nmysql> SELECT ELT(4, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''foo''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(144, 'ALTER VIEW', 36, 'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. As of\nMySQL 5.0.52, ALTER VIEW is allowed only to the original definer or\nusers with the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/alter-view.html'),
(145, 'SHOW DATABASES', 25, 'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES as of MySQL 5.0.2. The LIKE\nclause, if present, indicates which database names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-databases.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-databases.html'),
(146, '~', 18, 'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 5 & ~1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(147, 'TEXT', 20, 'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a two-byte length prefix\nthat indicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(148, 'CONCAT_WS', 33, 'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT CONCAT_WS('','',''First name'',''Second name'',''Last Name'');\n        -> ''First name,Second name,Last Name''\nmysql> SELECT CONCAT_WS('','',''First name'',NULL,''Last Name'');\n        -> ''First name,Last Name''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(149, 'ROW_COUNT', 15, 'Syntax:\nROW_COUNT()\n\nROW_COUNT() returns the number of rows updated, inserted, or deleted by\nthe preceding statement. This is the same as the row count that the\nmysql client displays and the value from the mysql_affected_rows() C\nAPI function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(150, 'ASIN', 4, 'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(''foo'');\n\n+-------------+\n| ASIN(''foo'') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: ''foo'' |\n+---------+------+-----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(151, 'SHOW LOGS', 25, 'Syntax:\nSHOW [BDB] LOGS\n\nIn MySQL 5.0, this is a deprecated synonym for SHOW ENGINE BDB LOGS.\nSee [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-logs.html'),
(152, 'SIGN', 4, 'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(153, 'SEC_TO_TIME', 28, 'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT SEC_TO_TIME(2378);\n        -> ''00:39:38''\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(154, 'FLOAT', 20, 'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Allowable values are\n-3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.0/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(155, 'LOCATE', 33, 'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LOCATE(''bar'', ''foobarbar'');\n        -> 4\nmysql> SELECT LOCATE(''xbar'', ''foobar'');\n        -> 0\nmysql> SELECT LOCATE(''bar'', ''foobarbar'', 5);\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(156, 'CHARSET', 15, 'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT CHARSET(''abc'');\n        -> ''latin1''\nmysql> SELECT CHARSET(CONVERT(''abc'' USING utf8));\n        -> ''utf8''\nmysql> SELECT CHARSET(USER());\n        -> ''utf8''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(157, 'SUBDATE', 28, 'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT SUBDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\n\nThe second form allows the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(''1998-01-02 12:00:00'', 31);\n        -> ''1997-12-02 12:00:00''\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(158, 'DAYOFYEAR', 28, 'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFYEAR(''1998-02-03'');\n        -> 34\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(159, 'LONGTEXT', 20, 'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\nfour-byte length prefix that indicates the number of bytes in the\nvalue.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(160, '%', 4, 'Syntax:\nN % M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in [HELP ABS].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(161, 'DISJOINT', 26, 'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(162, 'KILL', 25, 'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nIn MySQL 5.0.0, KILL allows the optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library,\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/kill.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/kill.html'),
(163, 'ASTEXT', 3, 'AsText(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html\n\n', 'mysql> SET @g = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html'),
(164, 'LPAD', 33, 'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LPAD(''hi'',4,''??'');\n        -> ''??hi''\nmysql> SELECT LPAD(''hi'',1,''??'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(165, 'RESTORE TABLE', 19, 'Syntax:\nRESTORE TABLE tbl_name [, tbl_name] ... FROM ''/path/to/backup/directory''\n\nRESTORE TABLE restores the table or tables from a backup that was made\nwith BACKUP TABLE. The directory should be specified as a full\npathname.\n\nExisting tables are not overwritten; if you try to restore over an\nexisting table, an error occurs. Just as for BACKUP TABLE, RESTORE\nTABLE currently works only for MyISAM tables. Restored tables are not\nreplicated from master to slave.\n\nThe backup for each table consists of its .frm format file and .MYD\ndata file. The restore operation restores those files, and then uses\nthem to rebuild the .MYI index file. Restoring takes longer than\nbacking up due to the need to rebuild the indexes. The more indexes the\ntable has, the longer it takes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/restore-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/restore-table.html'),
(166, 'DECLARE CONDITION', 35, 'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | mysql_error_code\n\nThis statement specifies conditions that need specific handling. It\nassociates a name with a specified error condition. The name can\nsubsequently be used in a DECLARE HANDLER statement. See [HELP DECLARE\nHANDLER].\n\nA condition_value can be an SQLSTATE value or a MySQL error code.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-conditions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/declare-conditions.html'),
(167, 'OVERLAPS', 26, 'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(168, 'NUMGEOMETRIES', 23, 'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html'),
(169, 'SET GLOBAL SQL_SLAVE_SKIP_COUNTER', 25, 'Syntax:\nSET GLOBAL SQL_SLAVE_SKIP_COUNTER = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave thread is not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-global-sql-slave-skip-counter.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-global-sql-slave-skip-counter.html'),
(170, 'MONTHNAME', 28, 'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. As of MySQL 5.0.25, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.0/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTHNAME(''1998-02-05'');\n        -> ''February''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(171, 'PROCEDURE ANALYSE', 34, 'Syntax:\nanalyse([max_elements[,max_memory]])\n\nThis procedure is defined in the sql/sql_analyse.cc file. It examines\nthe result from a query and returns an analysis of the results that\nsuggests optimal data types for each column. To obtain this analysis,\nappend PROCEDURE ANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that analyse notices per column. This is used by analyse to check\n  whether the optimal data type should be of type ENUM.\n\no max_memory (default 8192) is the maximum amount of memory that\n  analyse should allocate per column while trying to find all distinct\n  values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/procedure-analyse.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/procedure-analyse.html'),
(172, 'MBREQUAL', 5, 'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(173, 'CHANGE MASTER TO', 25, 'Syntax:\nCHANGE MASTER TO master_def [, master_def] ...\n\nmaster_def:\n    MASTER_HOST = ''host_name''\n  | MASTER_USER = ''user_name''\n  | MASTER_PASSWORD = ''password''\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = count\n  | MASTER_LOG_FILE = ''master_log_name''\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = ''relay_log_name''\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = ''ca_file_name''\n  | MASTER_SSL_CAPATH = ''ca_directory_name''\n  | MASTER_SSL_CERT = ''cert_file_name''\n  | MASTER_SSL_KEY = ''key_file_name''\n  | MASTER_SSL_CIPHER = ''cipher_list''\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to and communicating with the master server. It also updates\nthe contents of the master.info and relay-log.info files.\n\nMASTER_USER, MASTER_PASSWORD, MASTER_SSL, MASTER_SSL_CA,\nMASTER_SSL_CAPATH, MASTER_SSL_CERT, MASTER_SSL_KEY, and\nMASTER_SSL_CIPHER provide information to the slave about how to connect\nto its master.\n\nThe SSL options (MASTER_SSL, MASTER_SSL_CA, MASTER_SSL_CAPATH,\nMASTER_SSL_CERT, MASTER_SSL_KEY, and MASTER_SSL_CIPHER) can be changed\neven on slaves that are compiled without SSL support. They are saved to\nthe master.info file, but are ignored unless you use a server that has\nSSL support enabled.\n\nIf you don''t specify a given parameter, it keeps its old value, except\nas indicated in the following discussion. For example, if the password\nto connect to your MySQL master has changed, you just need to issue\nthese statements to tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=''new3cret'';\nSTART SLAVE; -- if you want to restart replication\n\nThere is no need to specify the parameters that do not change (host,\nport, user, and so forth).\n\nMASTER_HOST and MASTER_PORT are the hostname (or IP address) of the\nmaster host and its TCP/IP port. Note that if MASTER_HOST is equal to\nlocalhost, then, like in other parts of MySQL, the port number might be\nignored.\n\n*Note*: Replication cannot use Unix socket files. You must be able to\nconnect to the master MySQL server using TCP/IP.\n\nIf you specify MASTER_HOST or MASTER_PORT, the slave assumes that the\nmaster server is different from before (even if you specify a host or\nport value that is the same as the current value.) In this case, the\nold values for the master binary log name and position are considered\nno longer applicable, so if you do not specify MASTER_LOG_FILE and\nMASTER_LOG_POS in the statement, MASTER_LOG_FILE='''' and\nMASTER_LOG_POS=4 are silently appended to it.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. If you specify either of them, you cannot specify\nRELAY_LOG_FILE or RELAY_LOG_POS. If neither of MASTER_LOG_FILE or\nMASTER_LOG_POS are specified, the slave uses the last coordinates of\nthe slave SQL thread before CHANGE MASTER was issued. This ensures that\nthere is no discontinuity in replication, even if the slave SQL thread\nwas late compared to the slave I/O thread, when you merely want to\nchange, say, the password to use.\n\nCHANGE MASTER deletes all relay log files and starts a new one, unless\nyou specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay logs\nare kept; the relay_log_purge global variable is set silently to 0.\n\nCHANGE MASTER is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the log and the offset\ncorresponding to it. After loading the snapshot into the slave, you can\nrun CHANGE MASTER TO MASTER_LOG_FILE=''log_name_on_master'',\nMASTER_LOG_POS=log_offset_on_master on the slave.\n\nThe following example changes the master and master''s binary log\ncoordinates. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=''master2.mycompany.com'',\n  MASTER_USER=''replication'',\n  MASTER_PASSWORD=''bigs3cret'',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=''master2-bin.001'',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay logs that you want it to execute\nagain for some reason. To do this, the master need not be reachable.\nYou need only use CHANGE MASTER TO and start the SQL thread (START\nSLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=''slave-relay-bin.006'',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/change-master-to.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/change-master-to.html'),
(174, 'DROP DATABASE', 36, 'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE as of MySQL 5.0.2.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-database.html'),
(175, 'TIMESTAMP FUNCTION', 28, 'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMP(''2003-12-31'');\n        -> ''2003-12-31 00:00:00''\nmysql> SELECT TIMESTAMP(''2003-12-31 12:00:00'',''12:00:00'');\n        -> ''2004-01-01 00:00:00''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(176, 'CHARACTER_LENGTH', 33, 'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(177, 'SHOW GRANTS', 25, 'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, ''jeffrey''@''localhost''. If you specify only the\nusername part of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR ''root''@''localhost'';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO ''root''@''localhost'' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nAs of MySQL 5.0.24, if SHOW GRANTS FOR CURRENT_USER (or any of the\nequivalent syntaxes) is used in DEFINER context, such as within a\nstored procedure that is defined with SQL SECURITY DEFINER), the grants\ndisplayed are those of the definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-grants.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-grants.html'),
(178, 'SHOW PRIVILEGES', 25, 'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-privileges.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-privileges.html'),
(179, 'INSERT FUNCTION', 33, 'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT INSERT(''Quadratic'', 3, 4, ''What'');\n        -> ''QuWhattic''\nmysql> SELECT INSERT(''Quadratic'', -1, 4, ''What'');\n        -> ''Quadratic''\nmysql> SELECT INSERT(''Quadratic'', 3, 100, ''What'');\n        -> ''QuWhat''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(180, 'CRC32', 4, 'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT CRC32(''MySQL'');\n        -> 3259397556\nmysql> SELECT CRC32(''mysql'');\n        -> 2501908538\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(181, 'XOR', 12, 'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is non-zero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n', 'mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),
(182, 'STARTPOINT', 11, 'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),
(183, 'DECLARE VARIABLE', 35, 'Syntax:\nDECLARE var_name[,...] type [DEFAULT value]\n\nThis statement is used to declare local variables. To provide a default\nvalue for the variable, include a DEFAULT clause. The value can be\nspecified as an expression; it need not be a constant. If the DEFAULT\nclause is missing, the initial value is NULL.\n\nLocal variables are treated like routine parameters with respect to\ndata type and overflow checking. See [HELP CREATE PROCEDURE].\n\nThe scope of a local variable is within the BEGIN ... END block where\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-local-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/declare-local-variables.html'),
(184, 'MPOLYFROMTEXT', 3, 'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(185, 'GRANT', 8, 'Syntax:\nGRANT priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    TO user [IDENTIFIED BY [PASSWORD] ''password'']\n        [, user [IDENTIFIED BY [PASSWORD] ''password'']] ...\n    [REQUIRE\n        NONE |\n        [{SSL| X509}]\n        [CIPHER ''cipher'' [AND]]\n        [ISSUER ''issuer'' [AND]]\n        [SUBJECT ''subject'']]\n    [WITH with_option [with_option] ...]\n\nobject_type =\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\nwith_option =\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement enables system administrators to create MySQL user\naccounts and to grant rights to from accounts. To use GRANT, you must\nhave the GRANT OPTION privilege, and you must have the privileges that\nyou are granting. The REVOKE statement is related and enables\nadministrators to remove account privileges. See [HELP REVOKE].\n\nMySQL account information is stored in the tables of the mysql\ndatabase. This database and the access control system are discussed\nextensively in\nhttp://dev.mysql.com/doc/refman/5.0/en/server-administration.html,\nwhich you should consult for additional details.\n\n*Important*: Some releases of MySQL introduce changes to the structure\nof the grant tables to add new privileges or features. Whenever you\nupdate to a new version of MySQL, you should update your grant tables\nto make sure that they have the current structure so that you can take\nadvantage of any new capabilities. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-upgrade.html.\n\nIf the grant tables hold privilege rows that contain mixed-case\ndatabase or table names and the lower_case_table_names system variable\nis set to a non-zero value, REVOKE cannot be used to revoke these\nprivileges. It will be necessary to manipulate the grant tables\ndirectly. (GRANT will not create such rows when lower_case_table_names\nis set, but such rows might have been created prior to setting the\nvariable.)\n\nPrivileges can be granted at several levels. The examples shown here\ninclude no IDENTIFIED BY ''password'' clause for brevity, but you should\ninclude one if the account does not already exist to avoid creating an\naccount with no password.\n\no Global level\n\n  Global privileges apply to all databases on a given server. These\n  privileges are stored in the mysql.user table. GRANT ALL ON *.* and\n  REVOKE ALL ON *.* grant and revoke only global privileges.\n\nGRANT ALL ON *.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON *.* TO ''someuser''@''somehost'';\n\no Database level\n\n  Database privileges apply to all objects in a given database. These\n  privileges are stored in the mysql.db and mysql.host tables. GRANT\n  ALL ON db_name.* and REVOKE ALL ON db_name.* grant and revoke only\n  database privileges.\n\nGRANT ALL ON mydb.* TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.* TO ''someuser''@''somehost'';\n\no Table level\n\n  Table privileges apply to all columns in a given table. These\n  privileges are stored in the mysql.tables_priv table. GRANT ALL ON\n  db_name.tbl_name and REVOKE ALL ON db_name.tbl_name grant and revoke\n  only table privileges.\n\nGRANT ALL ON mydb.mytbl TO ''someuser''@''somehost'';\nGRANT SELECT, INSERT ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Column level\n\n  Column privileges apply to single columns in a given table. These\n  privileges are stored in the mysql.columns_priv table. When using\n  REVOKE, you must specify the same columns that were granted. The\n  column or columns for which the privileges are to be granted must be\n  enclosed within parentheses.\n\nGRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO ''someuser''@''somehost'';\n\no Routine level\n\n  The CREATE ROUTINE, ALTER ROUTINE, EXECUTE, and GRANT privileges\n  apply to stored routines (functions and procedures). They can be\n  granted at the global and database levels. Also, except for CREATE\n  ROUTINE, these privileges can be granted at the routine level for\n  individual routines and are stored in the mysql.procs_priv table.\n\nGRANT CREATE ROUTINE ON mydb.* TO ''someuser''@''somehost'';\nGRANT EXECUTE ON PROCEDURE mydb.myproc TO ''someuser''@''somehost'';\n\nThe object_type clause was added in MySQL 5.0.6. It should be specified\nas TABLE, FUNCTION, or PROCEDURE when the following object is a table,\na stored function, or a stored procedure.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/grant.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/grant.html'),
(186, 'MBRINTERSECTS', 5, 'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(187, 'BIT_OR', 14, 'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(188, 'YEARWEEK', 28, 'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEARWEEK(''1987-01-01'');\n        -> 198653\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(189, 'NOT BETWEEN', 17, 'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(190, 'IS NOT', 17, 'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(191, 'LOG10', 4, 'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(192, 'SQRT', 4, 'Syntax:\nSQRT(X)\n\nReturns the square root of a non-negative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL        \n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(193, 'DECIMAL', 20, 'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nFor MySQL 5.0.3 and above:\n\nA packed "exact" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the "-" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65 (64\nfrom 5.0.3 to 5.0.5). The maximum number of supported decimals (D) is\n30. If D is omitted, the default is 0. If M is omitted, the default is\n10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nBefore MySQL 5.0.3:\n\nAn unpacked fixed-point number. Behaves like a CHAR column; "unpacked"\nmeans the number is stored as a string, using one character for each\ndigit of the value. M is the total number of digits and D is the number\nof digits after the decimal point. The decimal point and (for negative\nnumbers) the "-" sign are not counted in M, although space for them is\nreserved. If D is 0, values have no decimal point or fractional part.\nThe maximum range of DECIMAL values is the same as for DOUBLE, but the\nactual range for a given DECIMAL column may be constrained by the\nchoice of M and D. If D is omitted, the default is 0. If M is omitted,\nthe default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(194, 'CREATE FUNCTION', 34, 'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction''s return value. As of MySQL 5.0.3, DECIMAL is a legal value\nafter RETURNS, but currently DECIMAL functions return string values and\nshould be written like STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in a directory that is searched by your system''s dynamic\nlinker.\n\nTo create a function, you must have the INSERT and privilege for the\nmysql database. This is necessary because CREATE FUNCTION adds a row to\nthe mysql.func system table that records the function''s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-function.html'),
(195, 'GEOMETRYN', 23, 'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/geometrycollection-property-functions.html'),
(196, 'CREATE INDEX', 36, 'Syntax:\nCREATE [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-index.html'),
(197, 'ALTER DATABASE', 36, 'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\n\nalter_specification:\n    [DEFAULT] CHARACTER SET charset_name\n  | [DEFAULT] COLLATE collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE as of\nMySQL 5.0.2.\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.0/en/charset.html, discusses\ncharacter set and collation names.\n\nThe database name can be omitted, in which case the statement applies\nto the default database.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/alter-database.html'),
(198, '<<', 18, 'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 1 << 2;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(199, 'SHOW TABLE STATUS', 25, 'Syntax:\nSHOW TABLE STATUS [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each table. You can also get this list using the\nmysqlshow --status db_name command. The LIKE clause, if present,\nindicates which table names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-table-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-table-status.html'),
(200, 'MD5', 10, 'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a binary string of 32 hex digits, or NULL if the argument\nwas NULL. The return value can, for example, be used as a hash key.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT MD5(''testing'');\n        -> ''ae2b1fca515949e5d54fb22b8ed95575''\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(201, '<', 17, 'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 2 < 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(202, 'UNIX_TIMESTAMP', 28, 'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n''1970-01-01 00:00:00'' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since ''1970-01-01 00:00:00'' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(''2007-11-30 10:30:19'');\n        -> 1196440219\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(203, 'DAYOFMONTH', 28, 'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as ''0000-00-00'' or ''2008-00-00'' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFMONTH(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(204, 'ASCII', 33, 'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT ASCII(''2'');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(''dx'');\n        -> 100\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(205, 'DIV', 4, 'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT 5 DIV 2;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(206, 'RENAME USER', 8, 'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account is named using the same\nformat as for the GRANT statement; for example, ''jeffrey''@''localhost''.\nIf you specify only the username part of the account name, a hostname\npart of ''%'' is used. For additional information about specifying\naccount names, see [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/rename-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/rename-user.html'),
(207, 'SHOW SLAVE STATUS', 25, 'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. If you issue this statement using the mysql client,\nyou can use a \\G statement terminator rather than a semicolon to obtain\na more readable vertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n       Slave_IO_State: Waiting for master to send event\n          Master_Host: localhost\n          Master_User: root\n          Master_Port: 3306\n        Connect_Retry: 3\n      Master_Log_File: gbichot-bin.005\n  Read_Master_Log_Pos: 79\n       Relay_Log_File: gbichot-relay-bin.005\n        Relay_Log_Pos: 548\nRelay_Master_Log_File: gbichot-bin.005\n     Slave_IO_Running: Yes\n    Slave_SQL_Running: Yes\n      Replicate_Do_DB:\n  Replicate_Ignore_DB:\n           Last_Errno: 0\n           Last_Error:\n         Skip_Counter: 0\n  Exec_Master_Log_Pos: 79\n      Relay_Log_Space: 552\n      Until_Condition: None\n       Until_Log_File:\n        Until_Log_Pos: 0\n   Master_SSL_Allowed: No\n   Master_SSL_CA_File:\n   Master_SSL_CA_Path:\n      Master_SSL_Cert:\n    Master_SSL_Cipher:\n       Master_SSL_Key:\nSeconds_Behind_Master: 8\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-slave-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-slave-status.html'),
(208, 'GEOMETRY', 30, 'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, BDB, and ARCHIVE\ntables. (Support for storage engines other than MyISAM was added in\nMySQL 5.0.16.) See also the annotations about spatial indexes under\n[HELP SPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-columns.html\n\n', 'CREATE TABLE geom (g GEOMETRY);\n', 'http://dev.mysql.com/doc/refman/5.0/en/creating-spatial-columns.html'),
(209, 'NUMPOINTS', 11, 'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),
(210, '&', 18, 'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 29 & 15;\n        -> 13\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(211, 'LOCALTIMESTAMP', 28, 'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(212, 'CONVERT', 33, 'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take a value of one type and produce\na value of another type.\n\nThe type can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.0/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. As of MySQL 5.0.17, values shorter than N bytes are padded\nwith 0x00 bytes to a length of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nThe DECIMAL type is available as of MySQL 5.0.8.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string ''abc'' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(''abc'' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n', 'SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n', 'http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),
(213, 'ADDDATE', 28, 'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\nmysql> SELECT ADDDATE(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1998-02-02''\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDDATE(''1998-01-02'', 31);\n        -> ''1998-02-02''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(214, 'REPEAT LOOP', 35, 'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition is true. Thus, a REPEAT always enters the loop at\nleast once. statement_list consists of one or more statements.\n\nA REPEAT statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/repeat-statement.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/repeat-statement.html'),
(215, 'SMALLINT', 20, 'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(216, 'DOUBLE PRECISION', 20, 'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(217, 'ORD', 33, 'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code x 256)\n+ (3rd byte code x 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT ORD(''2'');\n        -> 50\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(218, 'ENVELOPE', 32, 'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT AsText(Envelope(GeomFromText(''LineString(1 1,2 2)'')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(''LineString(1 1,2 2)''))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(219, 'DEALLOCATE PREPARE', 25, 'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement, use the DEALLOCATE PREPARE\nstatement. Attempting to execute a prepared statement after\ndeallocating it results in an error.\n\nIf you terminate a client session without deallocating a previously\nprepared statement, the server deallocates it automatically.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/sqlps.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/sqlps.html'),
(220, 'IS_FREE_LOCK', 13, 'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(221, 'TOUCHES', 26, 'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(222, 'INET_ATON', 13, 'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of a network address as a string,\nreturns an integer that represents the numeric value of the address.\nAddresses may be 4- or 8-byte addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_ATON(''209.207.224.40'');\n        -> 3520061480\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(223, 'UNCOMPRESS', 10, 'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESS(COMPRESS(''any string''));\n        -> ''any string''\nmysql> SELECT UNCOMPRESS(''any string'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(224, 'AUTO_INCREMENT', 20, 'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/example-auto-increment.html\n\n', 'CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n );\n\nINSERT INTO animals (name) VALUES \n    (''dog''),(''cat''),(''penguin''),\n    (''lax''),(''whale''),(''ostrich'');\n\nSELECT * FROM animals;\n', 'http://dev.mysql.com/doc/refman/5.0/en/example-auto-increment.html'),
(225, 'ISSIMPLE', 32, 'IsSimple(g)\n\nCurrently, this function is a placeholder and should not be used. If\nimplemented, its behavior will be as described in the next paragraph.\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and -1 if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(226, '- BINARY', 4, 'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3-5;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(227, 'GEOMCOLLFROMTEXT', 3, 'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(228, 'WKT DEFINITION', 3, 'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-format.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-format.html'),
(229, 'CURRENT_TIME', 28, 'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(230, 'REVOKE', 8, 'Syntax:\nREVOKE priv_type [(column_list)] [, priv_type [(column_list)]] ...\n    ON [object_type] {tbl_name | * | *.* | db_name.*}\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. To use REVOKE, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nEach account is named using the same format as for the GRANT statement;\nfor example, ''jeffrey''@''localhost''. If you specify only the username\npart of the account name, a hostname part of ''%'' is used. For\nadditional information about specifying account names, see [HELP\nGRANT].\n\nFor details on the levels at which privileges exist, the allowable\npriv_type values, and the syntax for specifying users and passwords,\nsee [HELP GRANT]\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/revoke.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/revoke.html'),
(231, 'LAST_INSERT_ID', 15, 'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nLAST_INSERT_ID() (with no argument) returns the first automatically\ngenerated value that was set for an AUTO_INCREMENT column by the most\nrecently executed INSERT statement to affect such a column. For\nexample, after inserting a row that generates an AUTO_INCREMENT value,\nyou can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value will be seen by statements that\n  follow the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(232, 'LAST_DAY', 28, 'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT LAST_DAY(''2003-02-05'');\n        -> ''2003-02-28''\nmysql> SELECT LAST_DAY(''2004-02-05'');\n        -> ''2004-02-29''\nmysql> SELECT LAST_DAY(''2004-01-01 01:01:01'');\n        -> ''2004-01-31''\nmysql> SELECT LAST_DAY(''2003-03-32'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(233, 'MEDIUMINT', 20, 'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(234, 'FLOOR', 4, 'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(235, 'RTRIM', 33, 'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT RTRIM(''barbar   '');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(236, 'DEGREES', 4, 'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(237, 'EXPLAIN', 25, 'Syntax:\nEXPLAIN tbl_name\n\nOr:\n\nEXPLAIN [EXTENDED] SELECT select_options\n\nThe EXPLAIN statement can be used either as a synonym for DESCRIBE or\nas a way to obtain information about how MySQL executes a SELECT\nstatement:\n\no EXPLAIN tbl_name is synonymous with DESCRIBE tbl_name or SHOW COLUMNS\n  FROM tbl_name.\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the SELECT,\n  including information about how tables are joined and in which order.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/explain.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/explain.html'),
(238, 'VARCHAR', 20, '[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. In MySQL 5.0, the range of M is 0 to 255 before MySQL\n5.0.3, and 0 to 65,535 in MySQL 5.0.3 and later. The effective maximum\nlength of a VARCHAR in MySQL 5.0.3 and later is subject to the maximum\nrow size (65,535 bytes, which is shared among all columns) and the\ncharacter set used. For example, utf8 characters can require up to\nthree bytes per character, so a VARCHAR column that uses the utf8\ncharacter set can be declared to be a maximum of 21,844 characters.\n\nMySQL stores VARCHAR values as a one-byte or two-byte length prefix\nplus data. The length prefix indicates the number of bytes in the\nvalue. A VARCHAR column uses one length byte if values require no more\nthan 255 bytes, two length bytes if values may require more than 255\nbytes.\n\n*Note*: Before 5.0.3, trailing spaces were removed when VARCHAR values\nwere stored, which differs from the standard SQL specification.\n\nPrior to MySQL 5.0.3, a VARCHAR column with a length specification\ngreater than 255 is converted to the smallest TEXT type that can hold\nvalues of the given length. For example, VARCHAR(500) is converted to\nTEXT, and VARCHAR(200000) is converted to MEDIUMTEXT. However, this\nconversion affects trailing-space removal.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.0/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(239, 'UNHEX', 33, 'Syntax:\n\nUNHEX(str)\n\nPerforms the inverse operation of HEX(str). That is, it interprets each\npair of hexadecimal digits in the argument as a number and converts it\nto the character represented by the number. The resulting characters\nare returned as a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT UNHEX(''4D7953514C'');\n        -> ''MySQL''\nmysql> SELECT 0x4D7953514C;\n        -> ''MySQL''\nmysql> SELECT UNHEX(HEX(''string''));\n        -> ''string''\nmysql> SELECT HEX(UNHEX(''1267''));\n        -> ''1267''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(240, '- UNARY', 4, 'Syntax:\n-\n\nUnary minus. This operator changes the sign of the argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT - 2;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(241, 'SELECT INTO', 35, 'Syntax:\nSELECT col_name[,...] INTO var_name[,...] table_expr\n\nThis SELECT syntax stores selected columns directly into variables.\nTherefore, only a single row may be retrieved.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select-into-statement.html\n\n', 'SELECT id,data INTO x,y FROM test.t1 LIMIT 1;\n', 'http://dev.mysql.com/doc/refman/5.0/en/select-into-statement.html'),
(242, 'STD', 14, 'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. As of MySQL 5.0.3, the standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(243, 'COS', 4, 'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT COS(PI());\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(244, 'DATE FUNCTION', 28, 'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE(''2003-12-31 01:02:03'');\n        -> ''2003-12-31''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(245, 'DROP TRIGGER', 21, 'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER was added in MySQL 5.0.2. Its use requires the\nSUPER privilege.\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a non-existent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS]. The IF EXISTS clause was\nadded in MySQL 5.0.32.\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-trigger.html'),
(246, 'RESET MASTER', 25, 'Syntax:\nRESET MASTER\n\nDeletes all binary logs listed in the index file, resets the binary log\nindex file to be empty, and creates a new binary log file.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/reset-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/reset-master.html'),
(247, 'TAN', 4, 'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(248, 'PI', 4, 'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(249, 'WEEKOFYEAR', 28, 'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKOFYEAR(''1998-02-20'');\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(250, '/', 4, 'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3/5;\n        -> 0.60\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(251, 'STDDEV_SAMP', 14, 'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP(). This function was added in MySQL 5.0.3.\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(252, 'SCHEMA', 15, 'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE(). It was added in MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(253, 'MLINEFROMWKB', 29, 'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(254, 'LOG2', 4, 'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(255, 'SUBTIME', 28, 'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT SUBTIME(''1997-12-31 23:59:59.999999'',''1 1:1:1.000002'');\n        -> ''1997-12-30 22:58:58.999997''\nmysql> SELECT SUBTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''-00:59:59.999999''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(256, 'UNCOMPRESSED_LENGTH', 10, 'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(''a'',30)));\n        -> 30\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(257, 'DROP TABLE', 36, 'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich non-existing tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each non-existent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are allowed to make porting easier. In MySQL 5.0,\nthey do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-table.html'),
(258, 'POW', 4, 'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(259, 'SHOW CREATE TABLE', 25, 'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. As of\nMySQL 5.0.1, this statement also works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the SQL_QUOTE_SHOW_CREATE option. See [HELP SET].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-table.html\n\n', 'mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-create-table.html'),
(260, 'DUAL', 25, 'You are allowed to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/select.html'),
(261, 'INSTR', 33, 'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT INSTR(''foobarbar'', ''bar'');\n        -> 4\nmysql> SELECT INSTR(''xbar'', ''foobar'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(262, 'NOW', 28, 'Syntax:\nNOW()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context. The value is expressed in the\ncurrent time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT NOW();\n        -> ''2007-12-15 23:50:26''\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(263, 'SHOW ENGINES', 25, 'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server''s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is. SHOW TABLE\nTYPES is a deprecated synonym.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-engines.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-engines.html'),
(264, 'SHOW MUTEX STATUS', 25, 'Syntax:\nSHOW MUTEX STATUS\n\nSHOW MUTEX STATUS displays InnoDB mutex statistics. From MySQL 5.0.3 to\n5.0.32, the statement displays the following output fields:\n\no Mutex\n\n  The mutex name. The name indicates the mutex purpose. For example,\n  the log_sys mutex is used by the InnoDB logging subsystem and\n  indicates how intensive logging activity is. The buf_pool mutex\n  protects the InnoDB buffer pool.\n\no Module\n\n  The source file where the mutex is implemented.\n\no Count indicates how many times the mutex was requested.\n\no Spin_waits indicates how many times the spinlock had to run.\n\no Spin_rounds indicates the number of spinlock rounds. (spin_rounds\n  divided by spin_waits provides the average round count.)\n\no OS_waits indicates the number of operating system waits. This occurs\n  when the spinlock did not work (the mutex was not locked during the\n  spinlock and it was necessary to yield to the operating system and\n  wait).\n\no OS_yields indicates the number of times that a thread trying to lock\n  a mutex gave up its timeslice and yielded to the operating system (on\n  the presumption that allowing other threads to run will free the\n  mutex so that it can be locked).\n\no OS_waits_time indicates the amount of time (in ms) spent in operating\n  system waits, if the timed_mutexes system variable is 1 (ON). If\n  timed_mutexes is 0 (OFF), timing is disabled, so OS_waits_time is 0.\n  timed_mutexes is off by default.\n\nFrom MySQL 5.0.33 on, the statement uses the same output format as that\njust described, but only if UNIV_DEBUG was defined at MySQL compilation\ntime (for example, in include/univ.h in the InnoDB part of the MySQL\nsource tree). If UNIV_DEBUG was not defined, the statement displays the\nfollowing fields. In the latter case (without UNIV_DEBUG), the\ninformation on which the statement output is based is insufficient to\ndistinguish regular mutexes and mutexes that protect rw-locks (which\nallow multiple readers or a single writer). Consequently, the output\nmay appear to contain multiple rows for the same mutex.\n\no File\n\n  The source file where the mutex is implemented.\n\no Line\n\n  The line number in the source file where the mutex is created. This\n  may change depending on your version of MySQL.\n\no OS_waits\n\n  Same as OS_waits_time.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nSHOW MUTEX STATUS was added in MySQL 5.0.3. In MySQL 5.1, SHOW MUTEX\nSTATUS is renamed to SHOW ENGINE INNODB MUTEX. The latter statement\ndisplays similar information but in a somewhat different output format.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-mutex-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-mutex-status.html'),
(265, '>=', 17, 'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 2 >= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(266, 'EXP', 4, 'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(267, 'LONGBLOB', 20, 'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a four-byte\nlength prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(268, 'POINTN', 11, 'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(269, 'YEAR DATA TYPE', 20, 'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. In four-digit format, the allowable values are 1901 to 2155,\nand 0000. In two-digit format, the allowable values are 70 to 69,\nrepresenting years from 1970 to 2069. MySQL displays YEAR values in\nYYYY format, but allows you to assign values to YEAR columns using\neither strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),
(270, 'SUM', 14, 'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used in MySQL 5.0 to sum only the\ndistinct values of expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(271, 'OCT', 33, 'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT OCT(12);\n        -> ''14''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(272, 'SYSDATE', 28, 'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context.\n\nAs of MySQL 5.0.13, SYSDATE() returns the time at which it executes.\nThis differs from the behavior for NOW(), which returns a constant time\nthat indicates the time at which the statement began to execute.\n(Within a stored routine or trigger, NOW() returns the time at which\nthe routine or triggering statement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is\nnon-deterministic and therefore unsafe for replication. If that is a\nproblem, you can start the server with the --sysdate-is-now option to\ncause SYSDATE() to be an alias for NOW(). The non-deterministic nature\nof SYSDATE() also means that indexes cannot be used for evaluating\nexpressions that refer to it.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(273, 'ASBINARY', 29, 'AsBinary(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html\n\n', 'SELECT AsBinary(g) FROM geom;\n', 'http://dev.mysql.com/doc/refman/5.0/en/functions-to-convert-geometries-between-formats.html'),
(274, 'REPEAT FUNCTION', 33, 'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT REPEAT(''MySQL'', 3);\n        -> ''MySQLMySQLMySQL''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(275, 'SHOW TABLES', 25, 'Syntax:\nSHOW [FULL] TABLES [FROM db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nBefore MySQL 5.0.1, the output from SHOW TABLES contains a single\ncolumn of table names. Beginning with MySQL 5.0.1, this statement also\nlists any views in the database. As of MySQL 5.0.2, the FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\n*Note*: If you have no privileges for a table, the table does not show\nup in the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-tables.html'),
(276, 'MAKEDATE', 28, 'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKEDATE(2001,31), MAKEDATE(2001,32);\n        -> ''2001-01-31'', ''2001-02-01''\nmysql> SELECT MAKEDATE(2001,365), MAKEDATE(2004,365);\n        -> ''2001-12-31'', ''2004-12-30''\nmysql> SELECT MAKEDATE(2001,0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(277, 'BINARY OPERATOR', 33, 'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column isn''t defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n', 'mysql> SELECT ''a'' = ''A'';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''A'';\n        -> 0\nmysql> SELECT ''a'' = ''a '';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''a '';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),
(278, 'MBROVERLAPS', 5, 'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(279, 'SOUNDEX', 33, 'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All non-alphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See\n  Bug#22638 (http://bugs.mysql.com/22638) for more information.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT SOUNDEX(''Hello'');\n        -> ''H400''\nmysql> SELECT SOUNDEX(''Quadratically'');\n        -> ''Q36324''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(280, 'MBRTOUCHES', 5, 'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(281, 'CREATE PROCEDURE', 35, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n    \nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n    \nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nroutine_body:\n    Valid SQL procedure statement\n\nThese statements create stored routines. As of MySQL 5.0.3, to execute\nthese statements, it is necessary to have the CREATE ROUTINE privilege.\nIf binary logging is enabled, these statements might also require the\nSUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/stored-procedure-logging.html.\nMySQL automatically grants the ALTER ROUTINE and EXECUTE privileges to\nthe routine creator.\n\nBy default, the routine is associated with the default database. To\nassociate the routine explicitly with a given database, specify the\nname as db_name.sp_name when you create it.\n\nIf the routine name is the same as the name of a built-in SQL function,\nyou must use a space between the name and the following parenthesis\nwhen defining the routine, or a syntax error occurs. This is also true\nwhen you invoke the routine later. For this reason, we suggest that it\nis better to avoid re-using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always allowable to have spaces after a routine name,\nregardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused.\n\nEach parameter can be declared to use any valid data type, except that\nthe COLLATE attribute cannot be used.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. (FUNCTION parameters are always regarded as IN parameters.)\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable so that\nyou can obtain its value when the procedure returns. (For an example,\nsee [HELP CALL].) If you are calling the procedure from within another\nstored procedure or function, you can also pass a routine parameter or\nlocal routine variable as an IN or INOUT parameter.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe routine_body consists of a valid SQL procedure statement. This can\nbe a simple statement such as SELECT or INSERT, or it can be a compound\nstatement written using BEGIN and END. Compound statement syntax is\ndescribed in [HELP BEGIN END]. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described later in this chapter. See, for\nexample, http://dev.mysql.com/doc/refman/5.0/en/declare.html, and [HELP\nIF statement]. Some statements are not allowed in stored routines; see\nhttp://dev.mysql.com/doc/refman/5.0/en/routine-restrictions.html.\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the current server SQL mode.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-procedure.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/create-procedure.html'),
(282, 'INSERT SELECT', 25, 'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert-select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/insert-select.html'),
(283, 'VARBINARY', 20, 'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than non-binary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(284, 'LOAD INDEX', 25, 'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise. LOAD INDEX INTO\nCACHE is used only for MyISAM tables.\n\nThe IGNORE LEAVES modifier causes only blocks for the non-leaf nodes of\nthe index to be preloaded.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/load-index.html'),
(285, 'UNION', 25, 'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/union.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/union.html'),
(286, 'TO_DAYS', 28, 'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(''1997-10-07'');\n        -> 729669\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(287, 'NOT REGEXP', 33, 'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),
(288, 'SHOW INDEX', 25, 'Syntax:\nSHOW INDEX FROM tbl_name [FROM db_name]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC.\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nSHOW KEYS is a synonym for SHOW INDEX. You can also list a table''s\nindexes with the mysqlshow -k db_name tbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-index.html'),
(289, 'SHOW CREATE DATABASE', 25, 'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nShows the CREATE DATABASE statement that creates the given database.\nSHOW CREATE SCHEMA is a synonym for SHOW CREATE DATABASE as of MySQL\n5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-database.html\n\n', 'mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-create-database.html'),
(290, 'LEAVE', 35, 'Syntax:\nLEAVE label\n\nThis statement is used to exit any labeled flow control construct. It\ncan be used within BEGIN ... END or loop constructs (LOOP, REPEAT,\nWHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/leave-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/leave-statement.html'),
(291, 'NOT IN', 17, 'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(292, '!', 12, 'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnon-zero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n', 'mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),
(293, 'DECLARE HANDLER', 35, 'Syntax:\nDECLARE handler_type HANDLER FOR condition_value[,...] statement\n\nhandler_type:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n  | mysql_error_code\n\nThe DECLARE ... HANDLER statement specifies handlers that each may deal\nwith one or more conditions. If one of these conditions occurs, the\nspecified statement is executed. statement can be a simple statement\n(for example, SET var_name = value), or it can be a compound statement\nwritten using BEGIN and END (see [HELP BEGIN END]).\n\nFor a CONTINUE handler, execution of the current routine continues\nafter execution of the handler statement. For an EXIT handler,\nexecution terminates for the BEGIN ... END compound statement in which\nthe handler is declared. (This is true even if the condition occurs in\nan inner block.) The UNDO handler type statement is not yet supported.\n\nIf a condition occurs for which no handler has been declared, the\ndefault action is EXIT.\n\nA condition_value can be any of the following values:\n\no An SQLSTATE value or a MySQL error code.\n\no A condition name previously specified with DECLARE ... CONDITION. See\n  [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for all SQLSTATE codes that begin with 01.\n\no NOT FOUND is shorthand for all SQLSTATE codes that begin with 02.\n  This is relevant only within the context of cursors and is used to\n  control what happens when a cursor reaches the end of a data set.\n\no SQLEXCEPTION is shorthand for all SQLSTATE codes not caught by\n  SQLWARNING or NOT FOUND.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-handlers.html\n\n', 'mysql> CREATE TABLE test.t (s1 int,primary key (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE ''23000'' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/declare-handlers.html'),
(294, 'DOUBLE', 20, 'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Allowable\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits allowed by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(295, 'TIME', 20, 'TIME\n\nA time. The range is ''-838:59:59'' to ''838:59:59''. MySQL displays TIME\nvalues in ''HH:MM:SS'' format, but allows assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-type-overview.html'),
(296, '&&', 12, 'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are non-zero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html\n\n', 'mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/logical-operators.html'),
(297, 'X', 9, 'X(p)\n\nReturns the X-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT X(GeomFromText(@pt));\n+----------------------+\n| X(GeomFromText(@pt)) |\n+----------------------+\n|                 56.7 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html'),
(298, 'FOUND_ROWS', 15, 'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(299, 'SYSTEM_USER', 15, 'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(300, 'CROSSES', 26, 'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(301, 'TRUNCATE TABLE', 25, 'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. Logically, this is\nequivalent to a DELETE statement that deletes all rows, but there are\npractical differences under some circumstances.\n\nFor InnoDB before version 5.0.3, TRUNCATE TABLE is mapped to DELETE, so\nthere is no difference. Starting with MySQL 5.0.3, fast TRUNCATE TABLE\nis available. However, the operation is still mapped to DELETE if there\nare foreign key constraints that reference the table. (When fast\ntruncate is used, it resets any AUTO_INCREMENT counter. From MySQL\n5.0.13 on, the AUTO_INCREMENT counter is reset by TRUNCATE TABLE,\nregardless of whether there is a foreign key constraint.)\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the\nfollowing ways in MySQL 5.0:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one.\n\no Truncate operations are not transaction-safe; an error occurs when\n  attempting one in the course of an active transaction or active table\n  lock.\n\no The number of deleted rows is not returned.\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no The table handler does not remember the last used AUTO_INCREMENT\n  value, but starts counting from the beginning. This is true even for\n  MyISAM and InnoDB, which normally do not reuse sequence values.\n\no Since truncation of a table does not make any use of DELETE, the\n  TRUNCATE statement does not invoke ON DELETE triggers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/truncate.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/truncate.html'),
(302, 'BIT_XOR', 14, 'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(303, 'CURRENT_DATE', 28, 'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(304, 'AREA', 2, 'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n', 'mysql> SET @poly = ''Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))'';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),
(305, 'START SLAVE', 25, 'Syntax:\nSTART SLAVE [thread_type [, thread_type] ... ]\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = ''log_name'', MASTER_LOG_POS = log_pos\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = ''log_name'', RELAY_LOG_POS = log_pos\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads queries from the master server and stores\nthem in the relay log. The SQL thread reads the relay log and executes\nthe queries. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary logs, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave''s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/start-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/start-slave.html'),
(306, 'BEGIN END', 35, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored routines and triggers. A compound statement can\ncontain multiple statements, enclosed by the BEGIN and END keywords.\nstatement_list represents a list of one or more statements. Each\nstatement within statement_list must be terminated by a semicolon (;)\nstatement delimiter. Note that statement_list is optional, which means\nthat the empty compound statement (BEGIN END) is legal.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. This is handled\nin the mysql command-line client with the delimiter command. Changing\nthe ; end-of-statement delimiter (for example, to //) allows ; to be\nused in a routine body. For an example, see [HELP CREATE PROCEDURE].\n\nA compound statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/begin-end.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/begin-end.html'),
(307, 'FLUSH', 25, 'Syntax:\nFLUSH [LOCAL | NO_WRITE_TO_BINLOG]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement clears or reloads various internal caches used by\nMySQL. To execute FLUSH, you must have the RELOAD privilege.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/flush.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/flush.html'),
(308, 'SHOW PROCEDURE STATUS', 25, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nThese statements are MySQL extensions. They return characteristics of\nroutines, such as the database, name, type, creator, and creation and\nmodification dates. The LIKE clause, if present, indicates which\nprocedure or function names to match. The WHERE clause can be given to\nselect rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-procedure-status.html\n\n', 'mysql> SHOW FUNCTION STATUS LIKE ''hello''\\G\n*************************** 1. row ***************************\n           Db: test\n         Name: hello\n         Type: FUNCTION\n      Definer: testuser@localhost\n     Modified: 2004-08-03 15:29:37\n      Created: 2004-08-03 15:29:37\nSecurity_type: DEFINER\n      Comment:\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-procedure-status.html'),
(309, 'SHOW WARNINGS', 25, 'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted\nfrom the last statement that generated messages, or nothing if the last\nstatement that used a table generated no messages. A related statement,\nSHOW ERRORS, shows only the errors. See [HELP SHOW ERRORS].\n\nThe list of messages is reset for each new statement that uses a table.\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is\nset so low that not all messages are stored. An example shown later in\nthis section demonstrates how this can happen.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\n[HELP SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-warnings.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-warnings.html'),
(310, 'DESCRIBE', 24, 'Syntax:\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. As of MySQL 5.0.1, these statements\nalso display information for views. (See [HELP SHOW COLUMNS].)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/describe.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/describe.html'),
(311, 'DROP USER', 8, 'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the DELETE privilege\nfor the mysql database. Each account is named using the same format as\nfor the GRANT statement; for example, ''jeffrey''@''localhost''. If you\nspecify only the username part of the account name, a hostname part of\n''%'' is used. For additional information about specifying account names,\nsee [HELP GRANT].\n\nDROP USER as present in MySQL 5.0.0 removes only accounts that have no\nprivileges. In MySQL 5.0.2, it was modified to remove account\nprivileges as well. This means that the procedure for removing an\naccount depends on your version of MySQL.\n\nAs of MySQL 5.0.2, you can remove an account and its privileges as\nfollows:\n\nDROP USER user;\n\nThe statement removes privilege rows for the account from all grant\ntables.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-user.html'),
(312, 'STDDEV_POP', 14, 'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). This function was added in MySQL 5.0.3. Before 5.0.3, you\ncan use STD() or STDDEV(), which are equivalent but not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(313, 'SHOW CHARACTER SET', 25, 'Syntax:\nSHOW CHARACTER SET\n    [LIKE ''pattern'' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE ''latin%'';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-character-set.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-character-set.html'),
(314, 'SUBSTRING', 33, 'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING(''Quadratically'',5);\n        -> ''ratically''\nmysql> SELECT SUBSTRING(''foobarbar'' FROM 4);\n        -> ''barbar''\nmysql> SELECT SUBSTRING(''Quadratically'',5,6);\n        -> ''ratica''        \nmysql> SELECT SUBSTRING(''Sakila'', -3);\n        -> ''ila''        \nmysql> SELECT SUBSTRING(''Sakila'', -5, 3);\n        -> ''aki''\nmysql> SELECT SUBSTRING(''Sakila'' FROM -4 FOR 2);\n        -> ''ki''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(315, 'ISEMPTY', 32, 'IsEmpty(g)\n\nReturns 1 if the geometry value g is the empty geometry, 0 if it is not\nempty, and -1 if the argument is NULL. If the geometry is empty, it\nrepresents the empty point set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(316, 'LTRIM', 33, 'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LTRIM(''  barbar'');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(317, 'INTERSECTS', 26, 'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(318, 'CALL', 35, 'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a procedure that was defined previously with\nCREATE PROCEDURE.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. It also "returns" the number of\nrows affected, which a client program can obtain at the SQL level by\ncalling the ROW_COUNT() function and from C by calling the\nmysql_affected_rows() C API function.\n\nAs of MySQL 5.1.13, stored procedures that take no arguments now can be\ninvoked without parentheses. That is, CALL p() and CALL p are\nequivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/call.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/call.html'),
(319, 'MBRDISJOINT', 5, 'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(320, 'VALUES', 13, 'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in INSERT ... ON DUPLICATE KEY UPDATE\nstatements and returns NULL otherwise.\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(321, 'SUBSTRING_INDEX', 33, 'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', 2);\n        -> ''www.mysql''\nmysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', -2);\n        -> ''mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(322, 'ENCODE', 10, 'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(323, 'LOOP', 35, 'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements. The\nstatements within the loop are repeated until the loop is exited;\nusually this is accomplished with a LEAVE statement.\n\nA LOOP statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/loop-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/loop-statement.html'),
(324, 'TRUNCATE', 4, 'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(325, 'TIMESTAMPADD', 28, 'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: FRAC_SECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPADD(MINUTE,1,''2003-01-02'');\n        -> ''2003-01-02 00:01:00''\nmysql> SELECT TIMESTAMPADD(WEEK,1,''2003-01-02'');\n        -> ''2003-01-09''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(326, 'SHOW', 25, 'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CREATE DATABASE db_name\nSHOW CREATE FUNCTION funcname\nSHOW CREATE PROCEDURE procname\nSHOW CREATE TABLE tbl_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {LOGS | STATUS }\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW FUNCTION CODE sp_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW INNODB STATUS\nSHOW PROCEDURE CODE sp_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW [BDB] LOGS\nSHOW MUTEX STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE ''pattern''\n  | WHERE expr\n\nThe SHOW statement also has forms that provide information about\nreplication master and slave servers and are described in [HELP PURGE\nMASTER LOGS]:\n\nSHOW BINARY LOGS\nSHOW BINLOG EVENTS\nSHOW MASTER STATUS\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\n\nIf the syntax for a given SHOW statement includes a LIKE ''pattern''\npart, ''pattern'' is a string that can contain the SQL "%" and "_"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show.html'),
(327, 'GREATEST', 17, 'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(''B'',''A'',''C'');\n        -> ''C''\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(328, 'SHOW VARIABLES', 25, 'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. With SESSION, it displays the values\nthat are in effect for the current connection. If no modifier is\npresent, the default is SESSION. LOCAL is a synonym for SESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE ''max_join_size'';\nSHOW SESSION VARIABLES LIKE ''max_join_size'';\n\nTo get a list of variables whose name match a pattern, use the "%"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE ''%size%'';\nSHOW GLOBAL VARIABLES LIKE ''%size%'';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because "_" is a wildcard that matches\nany single character, you should escape it as "\\_" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-variables.html'),
(329, 'BIT_AND', 14, 'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(330, 'SECOND', 28, 'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT SECOND(''10:05:03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(331, 'ATAN2', 4, 'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(332, 'MBRCONTAINS', 5, 'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Point(1 1)'');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(333, 'HOUR', 28, 'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT HOUR(''10:05:03'');\n        -> 10\nmysql> SELECT HOUR(''272:59:59'');\n        -> 272\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(334, 'SELECT', 25, 'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr, ...\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE ''file_name'' export_options\n      | INTO DUMPFILE ''file_name''\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.0/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE clause, you can use any of the functions and operators\n  that MySQL supports, except for aggregate (summary) functions. See\n  [HELP =].\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/select.html'),
(335, 'COT', 4, 'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(336, 'BACKUP TABLE', 19, 'Syntax:\nBACKUP TABLE tbl_name [, tbl_name] ... TO ''/path/to/backup/directory''\n\n*Note*: This statement is deprecated. We are working on a better\nreplacement for it that will provide online backup capabilities. In the\nmeantime, the mysqlhotcopy script can be used instead.\n\nBACKUP TABLE copies to the backup directory the minimum number of table\nfiles needed to restore the table, after flushing any buffered changes\nto disk. The statement works only for MyISAM tables. It copies the .frm\ndefinition and .MYD data files. The .MYI index file can be rebuilt from\nthose two files. The directory should be specified as a full pathname.\nTo restore the table, use RESTORE TABLE.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/backup-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/backup-table.html'),
(337, 'LOAD_FILE', 33, 'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full pathname to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nAs of MySQL 5.0.19, the character_set_filesystem system variable\ncontrols interpretation of filenames that are given as literal strings.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> UPDATE t\n            SET blob_col=LOAD_FILE(''/tmp/picture'')\n            WHERE id=1;\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(338, 'POINTFROMTEXT', 3, 'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(339, 'LOAD TABLE FROM MASTER', 25, 'Syntax:\nLOAD TABLE tbl_name FROM MASTER\n\nThis feature is deprecated. We recommend not using it anymore. It is\nsubject to removal in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated in\nversions 4.1 of MySQL and above. We will introduce a more advanced\ntechnique (called "online backup") in a future version. That technique\nwill have the additional advantage of working with more storage\nengines.\n\nFor MySQL 5.1 and earlier, the recommended alternative solution to\nusing LOAD DATA FROM MASTER or LOAD TABLE FROM MASTER is using\nmysqldump or mysqlhotcopy. The latter requires Perl and two Perl\nmodules (DBI and DBD:mysql) and works for MyISAM and ARCHIVE tables\nonly. With mysqldump, you can create SQL dumps on the master and pipe\n(or copy) these to a mysql client on the slave. This has the advantage\nof working for all storage engines, but can be quite slow, since it\nworks using SELECT.\n\nTransfers a copy of the table from the master to the slave. This\nstatement is implemented mainly debugging LOAD DATA FROM MASTER\noperations. To use LOAD TABLE, the account used for connecting to the\nmaster server must have the RELOAD and SUPER privileges on the master\nand the SELECT privilege for the master table to load. On the slave\nside, the user that issues LOAD TABLE FROM MASTER must have privileges\nfor dropping and creating the table.\n\nThe conditions for LOAD DATA FROM MASTER apply here as well. For\nexample, LOAD TABLE FROM MASTER works only for MyISAM tables. The\ntimeout notes for LOAD DATA FROM MASTER apply as well.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-table-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/load-table-from-master.html'),
(340, 'GROUP_CONCAT', 14, 'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(341, 'DATE_FORMAT', 28, 'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%W %M %Y'');\n        -> ''Saturday October 1997''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'', ''%H:%i:%s'');\n        -> ''22:23:00''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%D %y %a %d %m %b %j'');\n        -> ''4th 97 Sat 04 10 Oct 277''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n                          ''%H %k %I %r %T %S %w'');\n        -> ''22 22 10 10:23:00 PM 22:23:00 00 6''\nmysql> SELECT DATE_FORMAT(''1999-01-01'', ''%X %V'');\n        -> ''1998 52''\nmysql> SELECT DATE_FORMAT(''2006-06-00'', ''%d'');\n        -> ''00''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(342, 'BENCHMARK', 15, 'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT BENCHMARK(1000000,ENCODE(''hello'',''goodbye''));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(''hello'',''goodbye'')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(343, 'YEAR', 28, 'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n"zero" date.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEAR(''98-02-03'');\n        -> 1998\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(344, 'SHOW ENGINE', 25, 'Syntax:\nSHOW ENGINE engine_name {LOGS | STATUS }\n\nSHOW ENGINE displays log or status information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE BDB LOGS\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE NDB STATUS\nSHOW ENGINE NDBCLUSTER STATUS\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-engine.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-engine.html'),
(345, 'NAME_CONST', 13, 'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(''myname'', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(346, 'RELEASE_LOCK', 13, 'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(347, 'IS NULL', 17, 'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(348, 'CONVERT_TZ', 28, 'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''GMT'',''MET'');\n        -> ''2004-01-01 13:00:00''\nmysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''+00:00'',''+10:00'');\n        -> ''2004-01-01 22:00:00''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(349, 'TIME_TO_SEC', 28, 'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_TO_SEC(''22:23:00'');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(''00:39:38'');\n        -> 2378\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(350, 'WEEKDAY', 28, 'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKDAY(''1998-02-03 22:23:00'');\n        -> 1\nmysql> SELECT WEEKDAY(''1997-11-05'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(351, 'EXPORT_SET', 33, 'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter ","). The number of bits examined is given by number_of_bits\n(defaults to 64).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT EXPORT_SET(5,''Y'',''N'','','',4);\n        -> ''Y,N,Y,N''\nmysql> SELECT EXPORT_SET(6,''1'',''0'','','',10);\n        -> ''0,1,1,0,0,0,0,0,0,0''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(352, 'TIME FUNCTION', 28, 'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME(''2003-12-31 01:02:03'');\n        -> ''01:02:03''\nmysql> SELECT TIME(''2003-12-31 01:02:03.000123'');\n        -> ''01:02:03.000123''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(353, 'DATE_ADD', 28, 'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. date is a DATETIME or DATE\nvalue specifying the starting date. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a "-" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT ''1997-12-31 23:59:59'' + INTERVAL 1 SECOND;\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT INTERVAL 1 DAY + ''1997-12-31'';\n        -> ''1998-01-01''\nmysql> SELECT ''1998-01-01'' - INTERVAL 1 SECOND;\n        -> ''1997-12-31 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 SECOND);\n        -> ''1998-01-01 00:00:00''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL 1 DAY);\n        -> ''1998-01-01 23:59:59''\nmysql> SELECT DATE_ADD(''1997-12-31 23:59:59'',\n    ->                 INTERVAL ''1:1'' MINUTE_SECOND);\n        -> ''1998-01-01 00:01:00''\nmysql> SELECT DATE_SUB(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''1 1:1:1'' DAY_SECOND);\n        -> ''1997-12-30 22:58:59''\nmysql> SELECT DATE_ADD(''1998-01-01 00:00:00'',\n    ->                 INTERVAL ''-1 10'' DAY_HOUR);\n        -> ''1997-12-30 14:00:00''\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT DATE_ADD(''1992-12-31 23:59:59.000002'',\n    ->            INTERVAL ''1.999999'' SECOND_MICROSECOND);\n        -> ''1993-01-01 00:00:01.000001''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(354, 'CAST', 33, 'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes a value of one type and produce a value of\nanother type, similar to CONVERT(). See the description of CONVERT()\nfor more information.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/cast-functions.html'),
(355, 'SOUNDS LIKE', 33, 'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(356, 'PERIOD_DIFF', 28, 'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_DIFF(9802,199703);\n        -> 11\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(357, 'LIKE', 33, 'Syntax:\nexpr LIKE pat [ESCAPE ''escape_char'']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''David!'' LIKE ''David_'';\n        -> 1\nmysql> SELECT ''David!'' LIKE ''%D%v%'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html'),
(358, 'MULTIPOINT', 22, 'MultiPoint(pt1,pt2,...)\n\nConstructs a WKB MultiPoint value using WKB Point arguments. If any\nargument is not a WKB Point, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(359, '>>', 18, 'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 4 >> 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(360, 'FETCH', 35, 'Syntax:\nFETCH cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row (if a row exists) using the\nspecified open cursor, and advances the cursor pointer.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue 02000. To detect this condition, you can set up a handler for it\n(or for a NOT FOUND condition). An example is shown in [HELP DECLARE\nCURSOR].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/fetch.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/fetch.html'),
(361, 'AVG', 14, 'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used as\nof MySQL 5.0.3 to return the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(362, 'TRUE FALSE', 27, 'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/boolean-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/boolean-values.html'),
(363, 'MBRWITHIN', 5, 'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Polygon((0 0,0 5,5 5,5 0,0 0))'');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/relations-on-geometry-mbr.html'),
(364, 'IN', 17, 'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.0/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT ''wefwf'' IN (''wee'',''wefwf'',''weg'');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(365, 'QUOTE', 33, 'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotes and with each instance of single quote ("''"),\nbackslash ("\\"), ASCII NUL, and Control-Z preceded by a backslash. If\nthe argument is NULL, the return value is the word "NULL" without\nenclosing single quotes.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT QUOTE(''Don\\''t!'');\n        -> ''Don\\''t!''\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(366, 'SESSION_USER', 15, 'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(367, 'HELP COMMAND', 24, 'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.0/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run ''help contents'' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: "Contents"\nFor more information, type ''help <item>'', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type ''help <item>'',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: ''SHOW BINARY LOGS''\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-master-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mysql-server-side-help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/mysql-server-side-help.html'),
(368, 'QUARTER', 28, 'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT QUARTER(''98-04-01'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(369, 'POSITION', 33, 'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(370, 'IS_USED_LOCK', 13, 'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(371, 'POLYFROMTEXT', 3, 'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(372, 'DES_ENCRYPT', 10, 'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.0/en/secure-connections.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'key_num des_key_str\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(373, 'CEIL', 4, 'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(374, 'LENGTH', 33, 'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT LENGTH(''text'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(375, 'STR_TO_DATE', 28, 'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts.\n\nThe date, time, or datetime values contained in str should be given in\nthe format indicated by format. For the specifiers that can be used in\nformat, see the DATE_FORMAT() function description. If str contains an\nillegal date, time, or datetime value, STR_TO_DATE() returns NULL.\nStarting from MySQL 5.0.3, an illegal value also produces a warning.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(376, 'Y', 9, 'Y(p)\n\nReturns the Y-coordinate value for the point p as a double-precision\nnumber.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html\n\n', 'mysql> SET @pt = ''Point(56.7 53.34)'';\nmysql> SELECT Y(GeomFromText(@pt));\n+----------------------+\n| Y(GeomFromText(@pt)) |\n+----------------------+\n|                53.34 |\n+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/point-property-functions.html'),
(377, 'SHOW INNODB STATUS', 25, 'Syntax:\nSHOW INNODB STATUS\n\nIn MySQL 5.0, this is a deprecated synonym for SHOW ENGINE INNODB\nSTATUS. See [HELP SHOW ENGINE].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-innodb-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-innodb-status.html'),
(378, 'CHECKSUM TABLE', 19, 'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a non-existent table, CHECKSUM TABLE returns NULL and, as of MySQL\n5.0.3, generates a warning.\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum will change. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/checksum-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/checksum-table.html'),
(379, 'NUMINTERIORRINGS', 2, 'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),
(380, 'INTERIORRINGN', 2, 'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/polygon-property-functions.html'),
(381, 'UTC_TIME', 28, 'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> ''18:07:53'', 180753.000000\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(382, 'DROP FUNCTION', 34, 'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function''s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-function.html'),
(383, 'STDDEV', 14, 'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. As of MySQL 5.0.3, the standard\nSQL function STDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(384, 'DATE_SUB', 28, 'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(385, 'PERIOD_ADD', 28, 'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_ADD(9801,2);\n        -> 199803\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(386, '|', 18, 'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT 29 | 15;\n        -> 31\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(387, 'GEOMFROMTEXT', 3, 'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(388, 'RIGHT', 33, 'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT RIGHT(''foobarbar'', 4);\n        -> ''rbar''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(389, 'DATEDIFF', 28, 'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATEDIFF(''1997-12-31 23:59:59'',''1997-12-30'');\n        -> 1\nmysql> SELECT DATEDIFF(''1997-11-30 23:59:59'',''1997-12-31'');\n        -> -31\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(390, 'DROP PROCEDURE', 35, 'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. As of MySQL 5.0.3,\nyou must have the ALTER ROUTINE privilege for the routine. (That\nprivilege is granted automatically to the routine creator.)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/drop-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/drop-procedure.html'),
(391, 'CHECK TABLE', 19, 'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nMyISAM, InnoDB, and (as of MySQL 5.0.16) ARCHIVE tables. For MyISAM\ntables, the key statistics are updated as well.\n\nAs of MySQL 5.0.2, CHECK TABLE can also check views for problems, such\nas tables that are referenced in the view definition that no longer\nexist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/check-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/check-table.html'),
(392, 'BIN', 33, 'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT BIN(12);\n        -> ''1100''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(393, 'DECLARE CURSOR', 35, 'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor. Multiple cursors may be declared in a\nroutine, but each cursor in a given block must have a unique name.\n\nThe SELECT statement cannot have an INTO clause.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/declare-cursors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/declare-cursors.html'),
(394, 'MULTILINESTRING', 22, 'MultiLineString(ls1,ls2,...)\n\nConstructs a WKB MultiLineString value using WKB LineString arguments.\nIf any argument is not a WKB LineString, the return value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-mysql-specific-functions.html'),
(395, 'LOAD DATA', 25, 'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE ''file_name''\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [FIELDS\n        [TERMINATED BY ''string'']\n        [[OPTIONALLY] ENCLOSED BY ''char'']\n        [ESCAPED BY ''char'']\n    ]\n    [LINES\n        [STARTING BY ''string'']\n        [TERMINATED BY ''string'']\n    ]\n    [IGNORE number LINES]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The filename must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\n[HELP SELECT].) To write data from a table to a file, use SELECT ...\nINTO OUTFILE. To read the file back into a table, use LOAD DATA INFILE.\nThe syntax of the FIELDS and LINES clauses is the same for both\nstatements. Both clauses are optional, but FIELDS must precede LINES if\nboth are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.0/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. Beginning with MySQL 5.0.38, if the contents of the input file\nuse a character set that differs from the default, it is possible (and\nusually preferable) to use the CHARACTER SET clause to specify the\ncharacter set of the file.\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\nNote that it is currently not possible to load data files that use the\nucs2 character set.\n\nAs of MySQL 5.0.19, the character_set_filesystem system variable\ncontrols the interpretation of the filename.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.0/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (MyISAM, MEMORY,\nMERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  pathname to specify its exact location. If given as a relative\n  pathname, the name is interpreted relative to the directory in which\n  the client program was started.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the filename is an absolute pathname, the server uses it as\n    given.\n\n  o If the filename is a relative pathname with one or more leading\n    components, the server searches for the file relative to the\n    server''s data directory.\n\n  o If a filename with no leading components is given, the server looks\n    for the file in the database directory of the default database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server''s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE ''data.txt'' INTO TABLE db2.my_table;\n\nWindows pathnames are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.0/en/privileges-provided.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/load-data.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/load-data.html'),
(396, 'LOCALTIME', 28, 'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(397, 'MPOINTFROMTEXT', 3, 'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkt-functions.html'),
(398, 'BLOB', 20, 'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a two-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(399, 'SHA1', 10, 'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a binary\nstring of 40 hex digits, or NULL if the argument was NULL. One of the\npossible uses for this function is as a hash key. You can also use it\nas a cryptographic function for storing passwords. SHA() is synonymous\nwith SHA1().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT SHA1(''abc'');\n        -> ''a9993e364706816aba3e25717850c26c9cd0d89d''\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(400, 'SUBSTR', 33, 'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(401, 'PASSWORD', 10, 'Syntax:\nPASSWORD(str)\n\nCalculates and returns a password string from the plaintext password\nstr and returns a binary string, or NULL if the argument was NULL. This\nis the function that is used for encrypting MySQL passwords for storage\nin the Password column of the user grant table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'mysql> SELECT PASSWORD(''badpwd'');\n        -> ''*AAB3E285149C0135D51A520E1940DD3263DC008C''\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(402, 'CHAR', 20, '[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved.\n\nBefore MySQL 5.0.3, a CHAR column with a length specification greater\nthan 255 is converted to the smallest TEXT type that can hold values of\nthe given length. For example, CHAR(500) is converted to TEXT, and\nCHAR(200000) is converted to MEDIUMTEXT. However, this conversion\ncauses the column to become a variable-length column, and also affects\ntrailing-space removal.\n\nIn MySQL 5.0.3 and later, a CHAR length greater than 255 is illegal and\nfails with an error:\n\nmysql> CREATE TABLE c1 (col1 INT, col2 CHAR(500));\nERROR 1074 (42000): Column length too big for column ''col'' (max = 255);\nuse BLOB or TEXT instead\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(403, 'UTC_DATE', 28, 'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in ''YYYY-MM-DD'' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> ''2003-08-14'', 20030814\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(404, 'DIMENSION', 32, 'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in [HELP MBR\ndefinition].\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT Dimension(GeomFromText(''LineString(1 1,2 2)''));\n+------------------------------------------------+\n| Dimension(GeomFromText(''LineString(1 1,2 2)'')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(405, 'COUNT DISTINCT', 14, 'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of different non-NULL values.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html\n\n', 'mysql> SELECT COUNT(DISTINCT results) FROM student;\n', 'http://dev.mysql.com/doc/refman/5.0/en/group-by-functions.html'),
(406, 'BIT', 20, 'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nThis data type was added in MySQL 5.0.3 for MyISAM, and extended in\n5.0.5 to MEMORY, InnoDB, and BDB. Before 5.0.3, BIT is a synonym for\nTINYINT(1).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(407, 'EQUALS', 26, 'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/functions-that-test-spatial-relationships-between-geometries.html'),
(408, 'SHOW CREATE VIEW', 25, 'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-create-view.html'),
(409, 'INTERVAL', 17, 'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(410, 'FROM_DAYS', 28, 'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_DAYS(729669);\n        -> ''1997-10-07''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(411, 'ALTER PROCEDURE', 35, 'Syntax:\nALTER {PROCEDURE | FUNCTION} sp_name [characteristic ...]\n\ncharacteristic:\n    { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nThis statement can be used to change the characteristics of a stored\nprocedure or function. As of MySQL 5.0.3, you must have the ALTER\nROUTINE privilege for the routine. (That privilege is granted\nautomatically to the routine creator.) If binary logging is enabled,\nthis statement might also require the SUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.0/en/stored-procedure-logging.html.\n\nMore than one change may be specified in an ALTER PROCEDURE or ALTER\nFUNCTION statement.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/alter-procedure.html'),
(412, 'BIT_COUNT', 18, 'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html\n\n', 'mysql> SELECT BIT_COUNT(29), BIT_COUNT(b''101010'');\n        -> 4, 3\n', 'http://dev.mysql.com/doc/refman/5.0/en/bit-functions.html'),
(413, 'OCTET_LENGTH', 33, 'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(414, 'UTC_TIMESTAMP', 28, 'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in ''YYYY-MM-DD\nHH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on whether the\nfunction is used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> ''2003-08-14 18:08:04'', 20030814180804.000000\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(415, 'AES_ENCRYPT', 10, 'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() allow encryption and decryption of data\nusing the official AES (Advanced Encryption Standard) algorithm,\npreviously known as "Rijndael." Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 x (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', 'INSERT INTO t VALUES (1,AES_ENCRYPT(''text'',''password''));\n', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(416, '+', 4, 'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3+5;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.0/en/arithmetic-functions.html'),
(417, 'INET_NTOA', 13, 'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric network address (4 or 8 byte), returns the dotted-quad\nrepresentation of the address as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_NTOA(3520061480);\n        -> ''209.207.224.40''\n', 'http://dev.mysql.com/doc/refman/5.0/en/miscellaneous-functions.html'),
(418, 'ACOS', 4, 'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(419, 'ISOLATION', 7, 'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n{ READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SERIALIZABLE }\n\nThis statement sets the transaction isolation level for the next\ntransaction, globally, or for the current session.\n\nThe default behavior of SET TRANSACTION is to set the isolation level\nfor the next (not yet started) transaction. If you use the GLOBAL\nkeyword, the statement sets the default transaction level globally for\nall new connections created from that point on. Existing connections\nare unaffected. You need the SUPER privilege to do this. Using the\nSESSION keyword sets the default transaction level for all future\ntransactions performed on the current connection.\n\nFor descriptions of each InnoDB transaction isolation level, see\nhttp://dev.mysql.com/doc/refman/5.0/en/innodb-transaction-isolation.htm\nl. InnoDB supports each of these levels in MySQL 5.0. The default level\nis REPEATABLE READ.\n\nTo set the initial default global isolation level for mysqld, use the\n--transaction-isolation option. See\nhttp://dev.mysql.com/doc/refman/5.0/en/server-options.html.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-transaction.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-transaction.html'),
(420, 'CEILING', 4, 'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(421, 'SIN', 4, 'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(422, 'DAYOFWEEK', 28, 'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFWEEK(''1998-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(423, 'LINEFROMWKB', 29, 'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(424, 'SHOW PROCESSLIST', 25, 'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information using the mysqladmin processlist command. If you have\nthe PROCESS privilege, you can see all threads. Otherwise, you can see\nonly your own threads (that is, threads associated with the MySQL\naccount that you are using). If you do not use the FULL keyword, only\nthe first 100 characters of each statement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-processlist.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-processlist.html'),
(425, 'GEOMETRYTYPE', 32, 'GeometryType(g)\n\nReturns as a string the name of the geometry type of which the geometry\ninstance g is a member. The name corresponds to one of the instantiable\nGeometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html\n\n', 'mysql> SELECT GeometryType(GeomFromText(''POINT(1 1)''));\n+------------------------------------------+\n| GeometryType(GeomFromText(''POINT(1 1)'')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/general-geometry-property-functions.html'),
(426, 'CREATE VIEW', 36, 'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. This statement was added in\nMySQL 5.0.1. If the view does not exist, CREATE OR REPLACE VIEW is the\nsame as CREATE VIEW. If the view does exist, CREATE OR REPLACE VIEW is\nthe same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is "frozen" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it.\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nBase tables and views share the same namespace within a database, so a\ndatabase cannot contain a base table and a view that have the same\nname.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\nWhen you modify an existing view, the current view definition is backed\nup and saved. It is stored in that table''s database directory, in a\nsub-folder named arc. The backup file will be named\nview_name.frm-00001. If you alter the view again, the next backup will\nbe named view_name.frm-00002. The three latest view backup definitions\nwill be stored.\n\n*Note*: Backed up view definitions will not be preserved by mysqldump,\nor any other such programs, but you could retain it from a file copy.\nHowever, they are not needed for anything, but to provide you with a\nbackup of your previous view definition.\n\nAlso note that while it is safe to remove these, it is not safe to do\nso while mysqld is running. If you delete this folder (or sub-files)\nwhile mysqld is running, you will receive an error the next time you\ntry to alter that view:\n\nmysql> ALTER VIEW v AS SELECT * FROM t;\nERROR 6 (HY000): Error on delete of ''.\\test\\arc/v.frm-0004'' (Errcode:\n2)\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Within a stored routine, the definition cannot refer to routine\n  parameters or local variables.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no The tables named in the view definition must already exist.\n\no You cannot associate a trigger with a view.\n\nORDER BY is allowed in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT ''abc'';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = '''';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol | \n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = ''ANSI_QUOTES'';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   | \n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at view invocation time. They were\naddded in MySQL 5.0.13, but have no effect until MySQL 5.0.16.\n\nThe default DEFINER value is the user who executes the CREATE VIEW\nstatement. This is the same as specifying DEFINER = CURRENT_USER\nexplicitly. CURRENT_USER also can be given as CURRENT_USER(). If a user\nvalue is given, it should be a MySQL account in ''user_name''@''host_name''\nformat (the same format used in the GRANT statement). The user_name and\nhost_name values both are required.\n\nIf you specify the DEFINER clause, you cannot set the value to any user\nbut your own unless you have the SUPER privilege. These rules determine\nthe legal DEFINER user values:\n\no If you do not have the SUPER privilege, the only legal user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  legal account name. If the account does not actually exist, a warning\n  is generated.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine creator. This also\naffects a view defined within such a routine, if the view definition\ncontains a DEFINER value of CURRENT_USER.\n\nThe SQL SECURITY characteristic determines which MySQL account to use\nwhen checking access privileges for the view when a statement is\nexecuted that references the view. The legal characteristic values are\nDEFINER and INVOKER. These indicate that the required privileges must\nbe held by the user who defined or invoked the view, respectively. The\ndefault SQL SECURITY value is DEFINER. If the value is DEFINER but the\ndefiner account does not exist when the view is referenced, an error\noccurs.\n\nAs of MySQL 5.0.16 (when the DEFINER and SQL SECURITY clauses were\nimplemented), view privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have privileges for the columns, as described previously. If the\n  definition refers to a stored function, only the privileges needed to\n  invoke the function can be checked. The privileges required when the\n  function runs can be checked only as it executes: For different\n  invocations of the function, different execution paths within the\n  function might be taken.\n\no When a view is referenced, privileges for objects accessed by the\n  view are checked against the privileges held by the view creator or\n  invoker, depending on whether the SQL SECURITY characteristic is\n  DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function is defined with a SQL SECURITY characteristic\n  of DEFINER or INVOKER. If the security characteristic is DEFINER, the\n  function runs with the privileges of its creator. If the\n  characteristic is INVOKER, the function runs with the privileges\n  determined by the view''s SQL SECURITY characteristic.\n\nPrior to MySQL 5.0.16 (before the DEFINER and SQL SECURITY clauses were\nimplemented), privileges required for objects used in a view are\nchecked at view creation time.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY INVOKER.\n\nIf you invoke a view that was created before MySQL 5.0.13, it is\ntreated as though it was created with a SQL SECURITY DEFINER clause and\nwith a DEFINER value that is the same as your account. However, because\nthe actual definer is unknown, MySQL issues a warning. To make the\nwarning go away, it is sufficient to re-create the view so that the\nview definition includes a DEFINER clause.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present.\n\nFor MERGE, the text of a statement that refers to the view and the view\ndefinition are merged such that parts of the view definition replace\ncorresponding parts of the statement.\n\nFor TEMPTABLE, the results from the view are retrieved into a temporary\ntable, which then is used to execute the statement.\n\nFor UNDEFINED, MySQL chooses which algorithm to use. It prefers MERGE\nover TEMPTABLE if possible, because MERGE is usually more efficient and\nbecause a view cannot be updatable if a temporary table is used.\n\nA reason to choose TEMPTABLE explicitly is that locks can be released\non underlying tables after the temporary table has been created and\nbefore it is used to finish processing the statement. This might result\nin quicker lock release than the MERGE algorithm so that other clients\nthat use the view are not blocked as long.\n\nA view algorithm can be UNDEFINED for three reasons:\n\no No ALGORITHM clause is present in the CREATE VIEW statement.\n\no The CREATE VIEW statement has an explicit ALGORITHM = UNDEFINED\n  clause.\n\no ALGORITHM = MERGE is specified for a view that can be processed only\n  with a temporary table. In this case, MySQL generates a warning and\n  sets the algorithm to UNDEFINED.\n\nAs mentioned earlier, MERGE is handled by merging corresponding parts\nof a view definition into the statement that refers to the view. The\nfollowing examples briefly illustrate how the MERGE algorithm works.\nThe examples assume that there is a view v_merge that has this\ndefinition:\n\nCREATE ALGORITHM = MERGE VIEW v_merge (vc1, vc2) AS\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 1: Suppose that we issue this statement:\n\nSELECT * FROM v_merge;\n\nMySQL handles the statement as follows:\n\no v_merge becomes t\n\no * becomes vc1, vc2, which corresponds to c1, c2\n\no The view WHERE clause is added\n\nThe resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE c3 > 100;\n\nExample 2: Suppose that we issue this statement:\n\nSELECT * FROM v_merge WHERE vc1 < 100;\n\nThis statement is handled similarly to the previous one, except that\nvc1 < 100 becomes c1 < 100 and the view WHERE clause is added to the\nstatement WHERE clause using an AND connective (and parentheses are\nadded to make sure the parts of the clause are executed with correct\nprecedence). The resulting statement to be executed becomes:\n\nSELECT c1, c2 FROM t WHERE (c3 > 100) AND (c1 < 100);\n\nEffectively, the statement to be executed has a WHERE clause of this\nform:\n\nWHERE (select WHERE) AND (view WHERE)\n\nThe MERGE algorithm requires a one-to-one relationship between the rows\nin the view and the rows in the underlying table. If this relationship\ndoes not hold, a temporary table must be used instead. Lack of a\none-to-one relationship occurs if the view contains any of a number of\nconstructs:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Refers only to literal values (in this case, there is no underlying\n  table)\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview non-updatable. To be more specific, a view is not updatable if it\ncontains any of the following:\n\no Aggregate functions (SUM(), MIN(), MAX(), COUNT(), and so forth)\n\no DISTINCT\n\no GROUP BY\n\no HAVING\n\no UNION or UNION ALL\n\no Subquery in the select list\n\no Certain joins (see additional join discussion later in this section)\n\no Non-updatable view in the FROM clause\n\no A subquery in the WHERE clause that refers to a table in the FROM\n  clause\n\no Refers only to literal values (in this case, there is no underlying\n  table to update)\n\no ALGORITHM = TEMPTABLE (use of a temporary table always makes a view\n  non-updatable)\n\nWith respect to insertability (being updatable with INSERT statements),\nan updatable view is insertable if it also satisfies these additional\nrequirements for the view columns:\n\no There must be no duplicate view column names.\n\no The view must contain all columns in the base table that do not have\n  a default value.\n\no The view columns must be simple column references and not derived\n  columns. A derived column is one that is not a simple column\n  reference but is derived from an expression. These are examples of\n  derived columns:\n\n3.14159\ncol1 + 3\nUPPER(col2)\ncol3 / col4\n(subquery)\n\nA view that has a mix of simple column references and derived columns\nis not insertable, but it can be updatable if you update only those\ncolumns that are not derived. Consider this view:\n\nCREATE VIEW v AS SELECT col1, 1 AS col2 FROM t;\n\nThis view is not insertable because col2 is derived from an expression.\nBut it is updatable if the update does not try to update col2. This\nupdate is allowable:\n\nUPDATE v SET col1 = 0;\n\nThis update is not allowable because it attempts to update a derived\ncolumn:\n\nUPDATE v SET col2 = 0;\n\nIt is sometimes possible for a multiple-table view to be updatable,\nassuming that it can be processed with the MERGE algorithm. For this to\nwork, the view must use an inner join (not an outer join or a UNION).\nAlso, only a single table in the view definition can be updated, so the\nSET clause must name only columns from one of the tables in the view.\nViews that use UNION ALL are disallowed even though they might be\ntheoretically updatable, because the implementation uses temporary\ntables to process them.\n\nFor a multiple-table updatable view, INSERT can work if it inserts into\na single table. DELETE is not supported.\n\nINSERT DELAYED is not supported for views.\n\nIf a table contains an AUTO_INCREMENT column, inserting into an\ninsertable view on the table that does not include the AUTO_INCREMENT\ncolumn does not change the value of LAST_INSERT_ID(), because the side\neffects of inserting default values into columns not part of the view\nshould not be visible.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true. The WITH CHECK OPTION clause\nwas implemented in MySQL 5.0.2.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-view.html'),
(427, 'TRIM', 33, 'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT TRIM(''  bar   '');\n        -> ''bar''\nmysql> SELECT TRIM(LEADING ''x'' FROM ''xxxbarxxx'');\n        -> ''barxxx''\nmysql> SELECT TRIM(BOTH ''x'' FROM ''xxxbarxxx'');\n        -> ''bar''\nmysql> SELECT TRIM(TRAILING ''xyz'' FROM ''barxxyz'');\n        -> ''barx''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(428, 'IS', 17, 'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(429, 'GET_FORMAT', 28, 'Syntax:\nGET_FORMAT(DATE|TIME|DATETIME, ''EUR''|''USA''|''JIS''|''ISO''|''INTERNAL'')\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''2003-10-03'',GET_FORMAT(DATE,''EUR''));\n        -> ''03.10.2003''\nmysql> SELECT STR_TO_DATE(''10.31.2003'',GET_FORMAT(DATE,''USA''));\n        -> ''2003-10-31''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(430, 'TINYBLOB', 20, 'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a one-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(431, 'SAVEPOINT', 7, 'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO SAVEPOINT identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT and ROLLBACK TO SAVEPOINT.\nStarting from MySQL 5.0.3, RELEASE SAVEPOINT and the optional WORK\nkeyword for ROLLBACK are supported as well.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/savepoints.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/savepoints.html'),
(432, 'USER', 15, 'Syntax:\nUSER()\n\nReturns the current MySQL username and hostname as a string in the utf8\ncharacter set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(433, 'MPOINTFROMWKB', 29, 'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(434, 'ALTER TABLE', 36, 'Syntax:\nALTER [IGNORE] TABLE tbl_name\n    alter_specification [, alter_specification] ...\n\nalter_specification:\n    table_option ...\n  | ADD [COLUMN] col_name column_definition [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        PRIMARY KEY [index_type] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name] [index_type] (index_col_name,...)\n  | ADD [FULLTEXT|SPATIAL] [INDEX|KEY] [index_name] (index_col_name,...)\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] col_name column_definition [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET charset_name [COLLATE collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nALTER TABLE enables you to change the structure of an existing table.\nFor example, you can add or delete columns, create or destroy indexes,\nchange the type of existing columns, or rename columns or the table\nitself. You can also change the comment for the table and type of the\ntable.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/alter-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/alter-table.html'),
(435, 'PURGE MASTER LOGS', 25, 'Syntax:\nPURGE {MASTER | BINARY} LOGS TO ''log_name''\nPURGE {MASTER | BINARY} LOGS BEFORE ''date''\n\nDeletes all the binary logs listed in the log index prior to the\nspecified log or date. The logs also are removed from the list recorded\nin the log index file, so that the given log becomes the first.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/purge-master-logs.html\n\n', 'PURGE MASTER LOGS TO ''mysql-bin.010'';\nPURGE MASTER LOGS BEFORE ''2003-04-02 22:46:26'';\n', 'http://dev.mysql.com/doc/refman/5.0/en/purge-master-logs.html'),
(436, 'CHAR BYTE', 20, 'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(437, 'REPAIR TABLE', 19, 'Syntax:\nREPAIR [LOCAL | NO_WRITE_TO_BINLOG] TABLE\n    tbl_name [, tbl_name] ... [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM and for ARCHIVE tables. See\nhttp://dev.mysql.com/doc/refman/5.0/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.0/en/archive-storage-engine.html.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/repair-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/repair-table.html'),
(438, 'MERGE', 36, 'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n"Identical" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.0/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/merge-storage-engine.html\n\n', 'mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (''Testing''),(''table''),(''t1'');\nmysql> INSERT INTO t2 (message) VALUES (''Testing''),(''table''),(''t2'');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n', 'http://dev.mysql.com/doc/refman/5.0/en/merge-storage-engine.html'),
(439, 'CREATE TABLE', 36, 'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_option ...]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_option ...]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT ''string''] [reference_definition]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL]\n  | NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY(length)\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH | RTREE}\n\nreference_definition:\n    REFERENCES tbl_name [(index_col_name,...)]\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_option:\n    {ENGINE|TYPE} [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET charset_name\n  | CHECKSUM [=] {0 | 1}\n  | COLLATE collation_name\n  | COMMENT [=] ''string''\n  | CONNECTION [=] ''connect_string''\n  | DATA DIRECTORY [=] ''absolute path to directory''\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] ''absolute path to directory''\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] ''string''\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | UNION [=] (tbl_name[,tbl_name]...)\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for allowable table names are given in\nhttp://dev.mysql.com/doc/refman/5.0/en/identifiers.html. By default,\nthe table is created in the default database. An error occurs if the\ntable exists, if there is no default database, or if the database does\nnot exist.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/create-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/create-table.html'),
(440, '>', 17, 'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT 2 > 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(441, 'ANALYZE TABLE', 19, 'Syntax:\nANALYZE [LOCAL | NO_WRITE_TO_BINLOG] TABLE tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for MyISAM\nand BDB. For InnoDB the table is locked with a write lock. This\nstatement works with MyISAM, BDB, and InnoDB tables. For MyISAM tables,\nthis statement is equivalent to using myisamchk --analyze.\n\nFor more information on how the analysis works withinInnoDB, see\nhttp://dev.mysql.com/doc/refman/5.0/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/analyze-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/analyze-table.html'),
(442, 'MICROSECOND', 28, 'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MICROSECOND(''12:00:00.123456'');\n        -> 123456\nmysql> SELECT MICROSECOND(''1997-12-31 23:59:59.000010'');\n        -> 10\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(443, 'CONSTRAINT', 36, 'InnoDB also supports foreign key constraints. The syntax for a foreign\nkey constraint definition in InnoDB looks like this:\n\n[CONSTRAINT symbol] FOREIGN KEY [id] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name, ...)\n    [ON DELETE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n    [ON UPDATE {RESTRICT | CASCADE | SET NULL | NO ACTION}]\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/innodb-foreign-key-constraints.html\n\n', 'CREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n                      price DECIMAL,\n                      PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n                       PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n                            product_category INT NOT NULL,\n                            product_id INT NOT NULL,\n                            customer_id INT NOT NULL,\n                            PRIMARY KEY(no),\n                            INDEX (product_category, product_id),\n                            FOREIGN KEY (product_category, product_id)\n                              REFERENCES product(category, id)\n                              ON UPDATE CASCADE ON DELETE RESTRICT,\n                            INDEX (customer_id),\n                            FOREIGN KEY (customer_id)\n                              REFERENCES customer(id)) ENGINE=INNODB;\n', 'http://dev.mysql.com/doc/refman/5.0/en/innodb-foreign-key-constraints.html'),
(444, 'FIELD', 33, 'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT FIELD(''ej'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 2\nmysql> SELECT FIELD(''fo'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(445, 'MAKETIME', 28, 'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKETIME(12,15,30);\n        -> ''12:15:30''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(446, 'CURDATE', 28, 'Syntax:\nCURDATE()\n\nReturns the current date as a value in ''YYYY-MM-DD'' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURDATE();\n        -> ''1997-12-15''\nmysql> SELECT CURDATE() + 0;\n        -> 19971215\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(447, 'SET PASSWORD', 8, 'Syntax:\nSET PASSWORD [FOR user] = PASSWORD(''some password'')\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount.\n\nWith no FOR clause, this statement sets the password for the current\nuser. Any client that has connected to the server using a non-anonymous\naccount can change the password for that account.\n\nWith a FOR clause, this statement sets the password for a specific\naccount on the current server host. Only clients that have the UPDATE\nprivilege for the mysql database can do this. The user value should be\ngiven in user_name@host_name format, where user_name and host_name are\nexactly as they are listed in the User and Host columns of the\nmysql.user table entry. For example, if you had an entry with User and\nHost column values of ''bob'' and ''%.loc.gov'', you would write the\nstatement like this:\n\nSET PASSWORD FOR ''bob''@''%.loc.gov'' = PASSWORD(''newpass'');\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-password.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-password.html'),
(448, 'IF FUNCTION', 6, 'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html\n\n', 'mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,''yes'',''no'');\n        -> ''yes''\nmysql> SELECT IF(STRCMP(''test'',''test1''),''no'',''yes'');\n        -> ''no''\n', 'http://dev.mysql.com/doc/refman/5.0/en/control-flow-functions.html'),
(449, 'ENUM', 20, 'ENUM(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values ''value1'', ''value2'', ..., NULL or the special ''''\nerror value. An ENUM column can have a maximum of 65,535 distinct\nvalues. ENUM values are represented internally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(450, 'DATABASE', 15, 'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT DATABASE();\n        -> ''test''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(451, 'POINTFROMWKB', 29, 'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/gis-wkb-functions.html'),
(452, 'POWER', 4, 'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(453, 'ATAN', 4, 'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(454, 'STRCMP', 33, 'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html\n\n', 'mysql> SELECT STRCMP(''text'', ''text2'');\n        -> -1\nmysql> SELECT STRCMP(''text2'', ''text'');\n        -> 1\nmysql> SELECT STRCMP(''text'', ''text'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-comparison-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(455, 'INSERT DELAYED', 25, 'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, and ARCHIVE tables.\n  See\n  http://dev.mysql.com/doc/refman/5.0/en/myisam-storage-engine.html,\n  http://dev.mysql.com/doc/refman/5.0/en/memory-storage-engine.html,\n  and\n  http://dev.mysql.com/doc/refman/5.0/en/archive-storage-engine.html.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no DELAYED is ignored on slave replication servers because it could\n  cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/insert-delayed.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/insert-delayed.html'),
(456, 'SHOW PROCEDURE CODE', 25, 'Syntax:\nSHOW {PROCEDURE | FUNCTION} CODE sp_name\n\nThese statements are MySQL extensions that are available only for\nservers that have been built with debugging support. They display a\nrepresentation of the internal implementation of the named routine. The\nstatements require that you be the owner of the routine or have SELECT\naccess to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one "instruction" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-procedure-code.html\n\n', 'mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 "DROP TABLE t2"                 |\n|   2 | stmt 5 "INSERT INTO t3 VALUES (fanta)" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.0/en/show-procedure-code.html'),
(457, 'MEDIUMTEXT', 20, 'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a three-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/string-type-overview.html'),
(458, 'LN', 4, 'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(459, 'SHOW COLLATION', 25, 'Syntax:\nSHOW COLLATION\n    [LIKE ''pattern'' | WHERE expr]\n\nThe output from SHOW COLLATION includes all available character sets.\nThe LIKE clause, if present, indicates which collation names to match.\nThe WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.0/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE ''latin1%'';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/show-collation.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/show-collation.html'),
(460, 'LOG', 4, 'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(461, 'SET SQL_LOG_BIN', 25, 'Syntax:\nSET SQL_LOG_BIN = {0|1}\n\nDisables or enables binary logging for the current connection\n(SQL_LOG_BIN is a session variable) if the client has the SUPER\nprivilege. The statement is refused with an error if the client does\nnot have that privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/set-sql-log-bin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/set-sql-log-bin.html'),
(462, '!=', 17, 'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT ''.01'' <> ''0.01'';\n        -> 1\nmysql> SELECT .01 <> ''0.01'';\n        -> 0\nmysql> SELECT ''zapp'' <> ''zappp'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(463, 'WHILE', 35, 'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition is true. statement_list consists of one or more\nstatements.\n\nA WHILE statement can be labeled. end_label cannot be given unless\nbegin_label also is present. If both are present, they must be the\nsame.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/while-statement.html\n\n', 'CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND\n', 'http://dev.mysql.com/doc/refman/5.0/en/while-statement.html'),
(464, 'AES_DECRYPT', 10, 'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function allows decryption of data using the official AES\n(Advanced Encryption Standard) algorithm. For more information, see the\ndescription of AES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/encryption-functions.html'),
(465, 'DAYNAME', 28, 'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. As of MySQL 5.0.25, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.0/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYNAME(''1998-02-05'');\n        -> ''Thursday''\n', 'http://dev.mysql.com/doc/refman/5.0/en/date-and-time-functions.html'),
(466, 'COERCIBILITY', 15, 'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT COERCIBILITY(''abc'' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(''abc'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(467, 'INT', 20, 'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.0/en/numeric-type-overview.html'),
(468, 'GLENGTH', 11, 'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n', 'http://dev.mysql.com/doc/refman/5.0/en/linestring-property-functions.html'),
(469, 'RADIANS', 4, 'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html\n\n', 'mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html'),
(470, 'COLLATION', 15, 'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT COLLATION(''abc'');\n        -> ''latin1_swedish_ci''\nmysql> SELECT COLLATION(_utf8''abc'');\n        -> ''utf8_general_ci''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(471, 'COALESCE', 17, 'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html\n\n', 'mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.0/en/comparison-operators.html'),
(472, 'VERSION', 15, 'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/information-functions.html\n\n', 'mysql> SELECT VERSION();\n        -> ''5.0.56-standard''\n', 'http://dev.mysql.com/doc/refman/5.0/en/information-functions.html'),
(473, 'MAKE_SET', 33, 'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by ","\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT MAKE_SET(1,''a'',''b'',''c'');\n        -> ''a''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',''world'');\n        -> ''hello,world''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',NULL,''world'');\n        -> ''hello''\nmysql> SELECT MAKE_SET(0,''a'',''b'',''c'');\n        -> ''''\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html'),
(474, 'FIND_IN_SET', 33, 'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by "," characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (",") character.\n\nURL: http://dev.mysql.com/doc/refman/5.0/en/string-functions.html\n\n', 'mysql> SELECT FIND_IN_SET(''b'',''a,b,c,d'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.0/en/string-functions.html');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  PRIMARY KEY  (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

--
-- Dumping data for table `host`
--


-- --------------------------------------------------------

--
-- Table structure for table `proc`
--

CREATE TABLE `proc` (
  `db` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  `name` char(64) NOT NULL default '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL default '',
  `language` enum('SQL') NOT NULL default 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL default 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL default 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL default 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` char(64) NOT NULL default '',
  `body` longblob NOT NULL,
  `definer` char(77) character set utf8 collate utf8_bin NOT NULL default '',
  `created` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL default '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE') NOT NULL default '',
  `comment` char(64) character set utf8 collate utf8_bin NOT NULL default '',
  PRIMARY KEY  (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

--
-- Dumping data for table `proc`
--


-- --------------------------------------------------------

--
-- Table structure for table `procs_priv`
--

CREATE TABLE `procs_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Routine_name` char(64) collate utf8_bin NOT NULL default '',
  `Routine_type` enum('FUNCTION','PROCEDURE') collate utf8_bin NOT NULL,
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Proc_priv` set('Execute','Alter Routine','Grant') character set utf8 NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

--
-- Dumping data for table `procs_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `tables_priv`
--

CREATE TABLE `tables_priv` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `Db` char(64) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Table_name` char(64) collate utf8_bin NOT NULL default '',
  `Grantor` char(77) collate utf8_bin NOT NULL default '',
  `Timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view') character set utf8 NOT NULL default '',
  `Column_priv` set('Select','Insert','Update','References') character set utf8 NOT NULL default '',
  PRIMARY KEY  (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

--
-- Dumping data for table `tables_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL auto_increment,
  `Use_leap_seconds` enum('Y','N') NOT NULL default 'N',
  PRIMARY KEY  (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `time_zone`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_leap_second`
--

CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY  (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

--
-- Dumping data for table `time_zone_leap_second`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_name`
--

CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

--
-- Dumping data for table `time_zone_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition`
--

CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

--
-- Dumping data for table `time_zone_transition`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition_type`
--

CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL default '0',
  `Is_DST` tinyint(3) unsigned NOT NULL default '0',
  `Abbreviation` char(8) NOT NULL default '',
  PRIMARY KEY  (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

--
-- Dumping data for table `time_zone_transition_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Host` char(60) collate utf8_bin NOT NULL default '',
  `User` char(16) collate utf8_bin NOT NULL default '',
  `Password` char(41) character set latin1 collate latin1_bin NOT NULL default '',
  `Select_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Insert_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Update_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Delete_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Drop_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Reload_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Shutdown_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Process_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `File_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Grant_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `References_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Index_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_db_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Super_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_tmp_table_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Lock_tables_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Execute_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_slave_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Repl_client_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Show_view_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Alter_routine_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `Create_user_priv` enum('N','Y') character set utf8 NOT NULL default 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') character set utf8 NOT NULL default '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL default '0',
  `max_updates` int(11) unsigned NOT NULL default '0',
  `max_connections` int(11) unsigned NOT NULL default '0',
  `max_user_connections` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Host`, `User`, `Password`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`) VALUES
('localhost', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('production.mysql.com', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('127.0.0.1', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('localhost', '', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0),
('production.mysql.com', '', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0);
