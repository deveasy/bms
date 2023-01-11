-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2023 at 05:53 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int NOT NULL,
  `account` int NOT NULL,
  `bank` varchar(150) NOT NULL,
  `branch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
CREATE TABLE IF NOT EXISTS `budget` (
  `budgetId` int NOT NULL,
  `account` varchar(20) NOT NULL,
  `unit` int NOT NULL,
  `month` varchar(30) NOT NULL,
  `budget` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheques`
--

DROP TABLE IF EXISTS `cheques`;
CREATE TABLE IF NOT EXISTS `cheques` (
  `payId` varchar(30) NOT NULL,
  `chqNo` varchar(30) NOT NULL,
  `payee` varchar(30) NOT NULL,
  `chqDate` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `description` tinytext NOT NULL,
  `transType` varchar(30) NOT NULL,
  `rec1` varchar(50) NOT NULL,
  `rec2` varchar(50) NOT NULL,
  `rec3` varchar(50) NOT NULL,
  `inputter` varchar(30) NOT NULL,
  `currency` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(20) NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `department` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(50) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeId`, `staff_id`, `firstname`, `lastname`, `phone`, `gender`, `unit`, `department`, `title`, `rank`, `active`, `email`, `password`) VALUES
(1, 'TM2224', 'Emmanuel', 'Yartey', '0242819631', 'Male', 'Programming', 'Information Technology', 'Systems Programmer', 'Senior Programmer', 1, 'emmayartey@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(2, '', 'Raymond', 'Asante-Appah', '', 'Male', '', '', '', '', 0, 'rasane-appah@gmail.com', NULL),
(3, '', '', '', '', '', '', '', '', '', 1, '', NULL),
(4, '', 'Michael', 'Dapaah', '0208840550', 'Male', 'Software', 'Infomation Technology', 'Systems Programmer', 'Level 5', 1, 'mdapaah@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_transactions`
--

DROP TABLE IF EXISTS `employee_transactions`;
CREATE TABLE IF NOT EXISTS `employee_transactions` (
  `TransType` varchar(50) NOT NULL,
  `RecordId` varchar(20) NOT NULL,
  `RecDate` datetime NOT NULL,
  `PayeeId` varchar(20) NOT NULL,
  `PayeeName` varchar(100) NOT NULL,
  `TransDesc` text NOT NULL,
  `Currency` varchar(20) NOT NULL,
  `CurrencyRate` decimal(10,0) NOT NULL,
  `InvAmount` decimal(10,0) NOT NULL,
  `FuncAmount` decimal(10,0) NOT NULL,
  `Timing` time NOT NULL,
  `SubmittingDept` varchar(50) NOT NULL,
  `Info` datetime NOT NULL,
  `Inputter` varchar(20) NOT NULL,
  `ValidEntry` tinyint(1) NOT NULL,
  `VAT` decimal(10,0) NOT NULL,
  `Submitted` tinyint(1) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `UpdateBy` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `expense_id` int NOT NULL,
  `expense_name` text NOT NULL,
  `acc_line` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_sub_trans`
--

DROP TABLE IF EXISTS `e_sub_trans`;
CREATE TABLE IF NOT EXISTS `e_sub_trans` (
  `EntryId` int NOT NULL,
  `RecordId` varchar(20) NOT NULL,
  `ChargeTo` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `Account` int NOT NULL,
  `Expense` varchar(50) NOT NULL,
  `InvoiceAmount` decimal(10,2) NOT NULL,
  `FXRate` decimal(10,2) NOT NULL,
  `GHSAmount` decimal(10,2) NOT NULL,
  `Beneficiary` varchar(50) NOT NULL,
  `YTDBudget` decimal(10,2) NOT NULL,
  `YTDLeft` decimal(10,2) NOT NULL,
  `YearBudget` decimal(10,2) NOT NULL,
  `Comments` text NOT NULL,
  `Valid` tinyint(1) NOT NULL,
  `BgtAlw` tinyint(1) NOT NULL,
  `Submitted` tinyint(1) NOT NULL,
  `Project` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fx_cur`
--

DROP TABLE IF EXISTS `fx_cur`;
CREATE TABLE IF NOT EXISTS `fx_cur` (
  `cur_id` int NOT NULL AUTO_INCREMENT,
  `note_name` varchar(20) NOT NULL,
  `coin_name` varchar(20) NOT NULL,
  `short_name` varchar(20) NOT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fx_table`
--

DROP TABLE IF EXISTS `fx_table`;
CREATE TABLE IF NOT EXISTS `fx_table` (
  `fx_entry_id` varchar(20) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `currency` varchar(20) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `info_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

DROP TABLE IF EXISTS `general`;
CREATE TABLE IF NOT EXISTS `general` (
  `transaction_type` varchar(20) NOT NULL,
  `record_id` varchar(20) NOT NULL,
  `record_date` datetime NOT NULL,
  `payee_id` varchar(20) NOT NULL,
  `payee_name` varchar(20) NOT NULL,
  `transaction_description` text NOT NULL,
  `currency` varchar(20) NOT NULL,
  `currency_rate` decimal(10,2) NOT NULL,
  `invoice_amount` decimal(10,2) NOT NULL,
  `func_amount` decimal(10,2) NOT NULL,
  `timing` datetime NOT NULL,
  `submitting_department` varchar(20) NOT NULL,
  `info` datetime NOT NULL,
  `return_status` tinyint(1) NOT NULL,
  `return_reason` text NOT NULL,
  `resub_date` datetime NOT NULL,
  `inputter` varchar(20) NOT NULL,
  `pay_approved` tinyint(1) NOT NULL,
  `approved_by` varchar(20) NOT NULL,
  `approved_time` datetime NOT NULL,
  `cheque_sign` tinyint(1) NOT NULL,
  `cheque_sign_time` datetime NOT NULL,
  `on_hold` tinyint(1) NOT NULL,
  `instruction_by` varchar(20) NOT NULL,
  `hold_ins_time` datetime NOT NULL,
  `hold_reason` text NOT NULL,
  `release_time` datetime NOT NULL,
  `await_collect` tinyint(1) NOT NULL,
  `finish_time` datetime NOT NULL,
  `sub_date` datetime NOT NULL,
  `collected` tinyint(1) NOT NULL,
  `collect_time` datetime NOT NULL,
  `return_by` varchar(50) NOT NULL,
  `issuer` varchar(50) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `sub_time` datetime NOT NULL,
  `subby` text NOT NULL,
  `other_info` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `return_time` datetime NOT NULL,
  `cheque_print` tinyint(1) NOT NULL,
  `cheque_print_time` datetime NOT NULL,
  `period` varchar(30) NOT NULL,
  `inv_time_rec` time NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `cheque_number` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gen_sub`
--

DROP TABLE IF EXISTS `gen_sub`;
CREATE TABLE IF NOT EXISTS `gen_sub` (
  `EntryId` int NOT NULL,
  `RecordId` varchar(20) NOT NULL,
  `ChargeTo` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `Account` int NOT NULL,
  `Expense` varchar(50) NOT NULL,
  `InvoiceAmount` decimal(10,2) NOT NULL,
  `FXRate` decimal(10,2) NOT NULL,
  `GHSAmount` decimal(10,2) NOT NULL,
  `Beneficiary` varchar(50) NOT NULL,
  `YTDBudget` decimal(10,2) NOT NULL,
  `YTDLeft` decimal(10,2) NOT NULL,
  `YearBudget` decimal(10,2) NOT NULL,
  `Comments` text NOT NULL,
  `bgt_alw` tinyint(1) NOT NULL,
  `GHS` decimal(10,2) NOT NULL,
  `deal` text NOT NULL,
  `Project` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imp_rets`
--

DROP TABLE IF EXISTS `imp_rets`;
CREATE TABLE IF NOT EXISTS `imp_rets` (
  `req_id` varchar(20) NOT NULL,
  `rec_date` datetime NOT NULL,
  `ret_id` varchar(20) NOT NULL,
  `ret_name` varchar(50) NOT NULL,
  `trans_description` text NOT NULL,
  `currency` varchar(3) NOT NULL,
  `currency_rate` decimal(10,2) NOT NULL,
  `req_amount` decimal(10,2) NOT NULL,
  `func_amount` decimal(10,2) NOT NULL,
  `timing` datetime NOT NULL,
  `info` datetime NOT NULL,
  `inputter` varchar(20) NOT NULL,
  `balance_standing` decimal(10,2) NOT NULL,
  `valid_entry` tinyint(1) NOT NULL,
  `refund` decimal(10,2) NOT NULL,
  `amount_spent` decimal(10,2) NOT NULL,
  `rec_number` varchar(50) NOT NULL,
  `submitting_department` varchar(50) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `update_by` varchar(20) NOT NULL,
  `payee_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i_sub_trans`
--

DROP TABLE IF EXISTS `i_sub_trans`;
CREATE TABLE IF NOT EXISTS `i_sub_trans` (
  `entry_id` int NOT NULL,
  `record_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `charge_to` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account` int NOT NULL,
  `expense` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `invoice_amount` decimal(10,2) NOT NULL,
  `fx_rate` decimal(10,2) NOT NULL,
  `gsh_amount` decimal(10,2) NOT NULL,
  `beneficiary` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ytd_budget` decimal(10,2) NOT NULL,
  `ytd_left` decimal(10,2) NOT NULL,
  `year_budget` decimal(10,2) NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `bgt_alw` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `project` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `permission_id` int NOT NULL,
  `permission_type` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permit`
--

DROP TABLE IF EXISTS `permit`;
CREATE TABLE IF NOT EXISTS `permit` (
  `log_id` int NOT NULL,
  `log_name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `change_pwd` tinyint(1) NOT NULL,
  `days_exp` int NOT NULL,
  `access` int NOT NULL,
  `pw_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petty`
--

DROP TABLE IF EXISTS `petty`;
CREATE TABLE IF NOT EXISTS `petty` (
  `pet_id` int NOT NULL,
  `rec_date` datetime NOT NULL,
  `req_id` varchar(20) NOT NULL,
  `requestor` varchar(20) NOT NULL,
  `trans_desc` varchar(50) NOT NULL,
  `submitting_dept` varchar(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `timing` datetime NOT NULL,
  `info` datetime NOT NULL,
  `valid_entry` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `inputter` varchar(20) NOT NULL,
  `req_amount` decimal(10,2) NOT NULL,
  `updated_by` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_sub`
--

DROP TABLE IF EXISTS `pet_sub`;
CREATE TABLE IF NOT EXISTS `pet_sub` (
  `entry_id` int NOT NULL,
  `pet_id` varchar(50) NOT NULL,
  `charge_to` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `account` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `beneficiary` varchar(20) NOT NULL,
  `ytd_budget` decimal(10,2) NOT NULL,
  `year_budget` decimal(10,2) NOT NULL,
  `ytd_left` decimal(10,2) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `bgt_alw` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `expense` varchar(50) NOT NULL,
  `projects` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int NOT NULL,
  `project_name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recons`
--

DROP TABLE IF EXISTS `recons`;
CREATE TABLE IF NOT EXISTS `recons` (
  `recons_id` varchar(20) NOT NULL,
  `trans_date` datetime NOT NULL,
  `charge_to` varchar(20) NOT NULL,
  `description` varchar(150) NOT NULL,
  `func_amount` decimal(10,2) NOT NULL,
  `account` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_cheque`
--

DROP TABLE IF EXISTS `sub_cheque`;
CREATE TABLE IF NOT EXISTS `sub_cheque` (
  `sub_pay_id` int NOT NULL,
  `account` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `acc_desc` varchar(50) NOT NULL,
  `sup_id` varchar(20) NOT NULL,
  `pay_id` varchar(20) NOT NULL,
  `charge_to` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplier_id` varchar(20) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sup_trans`
--

DROP TABLE IF EXISTS `sup_trans`;
CREATE TABLE IF NOT EXISTS `sup_trans` (
  `trans_type` varchar(20) NOT NULL,
  `record_id` varchar(20) NOT NULL,
  `rec_date` datetime NOT NULL,
  `supp_id` varchar(20) NOT NULL,
  `supp_name` varchar(20) NOT NULL,
  `trans_desc` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `curr_rate` decimal(10,2) NOT NULL,
  `inv_amount` decimal(10,2) NOT NULL,
  `func_amount` decimal(10,2) NOT NULL,
  `timing` datetime NOT NULL,
  `submitting_dept` varchar(20) NOT NULL,
  `info` datetime NOT NULL,
  `inputter` varchar(20) NOT NULL,
  `vat` int NOT NULL,
  `valid_entry` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `savings` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_usage`
--

DROP TABLE IF EXISTS `system_usage`;
CREATE TABLE IF NOT EXISTS `system_usage` (
  `key_id` int NOT NULL,
  `log_id` int NOT NULL,
  `login_time` datetime NOT NULL,
  `computer` varchar(20) NOT NULL,
  `log_off_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_sub_trans`
--

DROP TABLE IF EXISTS `s_sub_trans`;
CREATE TABLE IF NOT EXISTS `s_sub_trans` (
  `entry_id` int NOT NULL,
  `record_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `charge_to` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account` int NOT NULL,
  `expense` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `invoice_amount` decimal(10,2) NOT NULL,
  `fx_rate` decimal(10,2) NOT NULL,
  `gsh_amount` decimal(10,2) NOT NULL,
  `beneficiary` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ytd_budget` decimal(10,2) NOT NULL,
  `ytd_left` decimal(10,2) NOT NULL,
  `year_budget` decimal(10,2) NOT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `bgt_alw` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `project` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_req`
--

DROP TABLE IF EXISTS `travel_req`;
CREATE TABLE IF NOT EXISTS `travel_req` (
  `t_req_id` varchar(20) NOT NULL,
  `sub_date` datetime NOT NULL,
  `emp_id` varchar(20) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `trav_date` datetime NOT NULL,
  `pre_station` varchar(30) NOT NULL,
  `destination1` varchar(30) NOT NULL,
  `destination2` varchar(30) NOT NULL,
  `destination3` varchar(30) NOT NULL,
  `ret_date` datetime NOT NULL,
  `trav_des` varchar(25) NOT NULL,
  `per_diem` decimal(5,2) NOT NULL,
  `int_rds` decimal(5,2) NOT NULL,
  `trans_mode` varchar(20) NOT NULL,
  `trans_fare` decimal(5,2) NOT NULL,
  `accom` varchar(20) NOT NULL,
  `timing` datetime NOT NULL,
  `submitting_dep` varchar(20) NOT NULL,
  `info` datetime NOT NULL,
  `inputter` varchar(20) NOT NULL,
  `valid_entry` tinyint(1) NOT NULL,
  `t_payment` decimal(10,2) NOT NULL,
  `accom_amount` decimal(10,2) NOT NULL,
  `charge_to` varchar(20) NOT NULL,
  `ytd_left` decimal(10,2) NOT NULL,
  `year_budget` decimal(10,2) NOT NULL,
  `ytd_budget` decimal(10,2) NOT NULL,
  `account` int NOT NULL,
  `bgt_alw` tinyint(1) NOT NULL,
  `submitted` tinyint(1) NOT NULL,
  `beneficiary` varchar(20) NOT NULL,
  `project` varchar(50) NOT NULL,
  `expense` varchar(20) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `curr_rate` decimal(10,2) NOT NULL,
  `ghs_pay` decimal(10,2) NOT NULL,
  `updated_by` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `unit_name` varchar(20) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `log_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `logged_in` tinyint(1) NOT NULL,
  `comp_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viament`
--

DROP TABLE IF EXISTS `viament`;
CREATE TABLE IF NOT EXISTS `viament` (
  `vial_d` varchar(20) NOT NULL,
  `req_name` varchar(20) NOT NULL,
  `req_date` datetime NOT NULL,
  `description` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  `inputter` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `via_sub`
--

DROP TABLE IF EXISTS `via_sub`;
CREATE TABLE IF NOT EXISTS `via_sub` (
  `entry_id` int NOT NULL,
  `vial_d` varchar(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `account` int NOT NULL,
  `eff_date` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
