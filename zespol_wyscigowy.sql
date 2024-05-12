-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 11:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zespol_wyscigowy`
--

-- --------------------------------------------------------

--
-- Table structure for table `dostawy_czesci`
--

CREATE TABLE `dostawy_czesci` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `typ_czesci` varchar(255) DEFAULT NULL,
  `marka_pojazdu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dostawy_czesci`
--

INSERT INTO `dostawy_czesci` (`id`, `nazwa`, `typ_czesci`, `marka_pojazdu`) VALUES
(1, 'Honda', 'Silnik', 1),
(2, 'Toyota TRD', 'Skrzynia biegów', 2),
(3, 'Audi', 'Hamulce', 3),
(4, 'Subaru', 'Zawieszenie', 4),
(5, 'Subaru', 'Silnik', 5),
(6, 'WRC Hyundai', 'Skrzynia biegów', 6),
(7, 'Renault', 'Hamulce', 7),
(8, 'Mitsubishi', 'Zawieszenie', 8),
(9, 'Toyota TRD', 'Silnik', 9),
(10, 'Nissan', 'Skrzynia biegów', 10);

-- --------------------------------------------------------

--
-- Table structure for table `kierowcy`
--

CREATE TABLE `kierowcy` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `kraj_pochodzenia` varchar(255) DEFAULT NULL,
  `plec` varchar(255) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `doswiadczenie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kierowcy`
--

INSERT INTO `kierowcy` (`id`, `imie`, `nazwisko`, `kraj_pochodzenia`, `plec`, `wiek`, `doswiadczenie`) VALUES
(1, 'Jan', 'Kowalski', 'Poland', 'M', 30, '5 lat'),
(2, 'Anna', 'Nowak', 'Poland', 'F', 28, '4 lata'),
(3, 'John', 'Smith', 'USA', 'M', 32, '6 lat'),
(4, 'Emma', 'Johnson', 'USA', 'F', 27, '3 lata'),
(5, 'Max', 'Müller', 'Germany', 'M', 31, '5 lat'),
(6, 'Sophia', 'Schmidt', 'Germany', 'F', 29, '4 lata'),
(7, 'Luca', 'Rossi', 'Italy', 'M', 33, '7 lat'),
(8, 'Giulia', 'Russo', 'Italy', 'F', 26, '2 lata'),
(9, 'Lucas', 'Lefevre', 'France', 'M', 34, '8 lat'),
(10, 'Emma', 'Lemaire', 'France', 'F', 25, '1 rok');

-- --------------------------------------------------------

--
-- Table structure for table `mechanicy`
--

CREATE TABLE `mechanicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) DEFAULT NULL,
  `nazwisko` varchar(255) DEFAULT NULL,
  `stanowisko` varchar(255) DEFAULT NULL,
  `doswiadczenie` varchar(255) DEFAULT NULL,
  `wynagrodzenie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mechanicy`
--

INSERT INTO `mechanicy` (`id`, `imie`, `nazwisko`, `stanowisko`, `doswiadczenie`, `wynagrodzenie`) VALUES
(1, 'Zbigniew', 'Kucharski', 'Inżynier', '10 lat', '5000'),
(2, 'Marek', 'Nowak', 'Technik', '8 lat', '4000'),
(3, 'Marek', 'Chrobak', 'Inżynier', '9 lat', '4500'),
(4, 'Matthew', 'Johnson', 'Technik', '7 lat', '3500'),
(5, 'Jordan', 'Jackson', 'Inżynier', '11 lat', '5500'),
(6, 'Makuba', 'Dembele', 'Technik', '6 lat', '3000'),
(7, 'Wojtek', 'Cecot', 'Inżynier', '12 lat', '6000'),
(8, 'Jan', 'Mela', 'Technik', '5 lat', '2500'),
(9, 'Mirek', 'Mucha', 'Inżynier', '13 lat', '6500'),
(10, 'Kacper', 'Król', 'Technik', '4 lata', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `samochody`
--

CREATE TABLE `samochody` (
  `id` int(11) NOT NULL,
  `marka` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `mechanik_pojazdu` int(11) DEFAULT NULL,
  `naped` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samochody`
--

INSERT INTO `samochody` (`id`, `marka`, `model`, `mechanik_pojazdu`, `naped`) VALUES
(1, 'BMW', 'E 3śmieć', 1, 'RWD'),
(2, 'Honda', 'Civic EK9', 2, 'FWD'),
(3, 'Subaru', 'Impreza WRX STI', 3, 'AWD'),
(4, 'Mazda', 'RX7 FD-3S', 4, 'RWD'),
(5, 'Ford', 'Focus', 5, 'FWD'),
(6, 'Mitsubishi', 'Lancer EVO 8', 6, 'AWD'),
(7, 'Nissan', 'Silvia S15', 7, 'RWD'),
(8, 'Honda', 'Accord 8 GEN', 8, 'FWD'),
(9, 'Ford', 'Transit', 9, 'AWD'),
(10, 'BMW', 'M3 E30', 10, 'RWD');

-- --------------------------------------------------------

--
-- Table structure for table `sponsorzy`
--

CREATE TABLE `sponsorzy` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `stawka` varchar(255) DEFAULT NULL,
  `branza_sponsora` varchar(255) DEFAULT NULL,
  `na_bolidzie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsorzy`
--

INSERT INTO `sponsorzy` (`id`, `nazwa`, `stawka`, `branza_sponsora`, `na_bolidzie`) VALUES
(1, 'Falken', '1000523', 'Motoryzacja', 1),
(2, 'Verva', '2000746', 'Benzyna', 1),
(3, 'Logitech', '1500524', 'Technologia', 1),
(4, 'KitKat', '1200312', 'Jedzenie', 1),
(5, 'Real Madryt', '1800523', 'Sport', 1),
(6, 'Nike', '13006345', 'Moda', 1),
(7, 'Nvidia', '17005243', 'Technologia', 1),
(8, 'Telekomunikacja Polska', '1400412', 'Telekomunikacja', 1),
(9, 'PKO BP', '1600421', 'Finanse', 1),
(10, 'Medilan Real Estate Agent', '150000', 'Biuro Nieruchomościowe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wyniki_kierowcow`
--

CREATE TABLE `wyniki_kierowcow` (
  `id` int(11) NOT NULL,
  `id_kierowcy` int(11) DEFAULT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `id_toru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wyniki_kierowcow`
--

INSERT INTO `wyniki_kierowcow` (`id`, `id_kierowcy`, `id_samochodu`, `id_toru`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dostawy_czesci`
--
ALTER TABLE `dostawy_czesci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marka_pojazdu` (`marka_pojazdu`);

--
-- Indexes for table `kierowcy`
--
ALTER TABLE `kierowcy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanicy`
--
ALTER TABLE `mechanicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samochody`
--
ALTER TABLE `samochody`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mechanik_pojazdu` (`mechanik_pojazdu`);

--
-- Indexes for table `sponsorzy`
--
ALTER TABLE `sponsorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wyniki_kierowcow`
--
ALTER TABLE `wyniki_kierowcow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kierowcy` (`id_kierowcy`),
  ADD KEY `id_samochodu` (`id_samochodu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dostawy_czesci`
--
ALTER TABLE `dostawy_czesci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kierowcy`
--
ALTER TABLE `kierowcy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mechanicy`
--
ALTER TABLE `mechanicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `samochody`
--
ALTER TABLE `samochody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sponsorzy`
--
ALTER TABLE `sponsorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wyniki_kierowcow`
--
ALTER TABLE `wyniki_kierowcow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dostawy_czesci`
--
ALTER TABLE `dostawy_czesci`
  ADD CONSTRAINT `dostawy_czesci_ibfk_1` FOREIGN KEY (`marka_pojazdu`) REFERENCES `samochody` (`id`);

--
-- Constraints for table `samochody`
--
ALTER TABLE `samochody`
  ADD CONSTRAINT `samochody_ibfk_1` FOREIGN KEY (`mechanik_pojazdu`) REFERENCES `mechanicy` (`id`);

--
-- Constraints for table `wyniki_kierowcow`
--
ALTER TABLE `wyniki_kierowcow`
  ADD CONSTRAINT `wyniki_kierowcow_ibfk_1` FOREIGN KEY (`id_kierowcy`) REFERENCES `kierowcy` (`id`),
  ADD CONSTRAINT `wyniki_kierowcow_ibfk_2` FOREIGN KEY (`id_samochodu`) REFERENCES `samochody` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
