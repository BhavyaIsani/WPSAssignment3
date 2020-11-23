
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `memorecords` (
  `id` int(11) NOT NULL,
  `rlno` varchar(15) NOT NULL,
  `subject` text NOT NULL,
  `marks` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `memorecords` (`id`, `rlno`, `subject`, `marks`, `total`) VALUES
(1, '1602-18-733-014', 'MPMCI', 25, 30),
(4, '1602-18-733-014', 'DAA', 26, 30),
(5, '1602-18-733-014', 'OS', 23, 30),
(6, '1602-18-733-014', 'CN', 15, 30),
(7, '1602-18-733-013', 'MPMCI', 24, 30),
(9, '1602-18-733-013', 'DAA', 28, 30),
(10, '1602-18-733-013', 'OS', 29, 30),
(11, '1602-18-733-013', 'CN', 25, 30),
(12, '1602-18-733-015', 'DAA', 30, 30),
(13, '1602-18-733-015', 'OS', 3, 30),
(14, '1602-18-733-015', 'MPMCI', 2, 30),
(15, '1602-18-733-015', 'CN', 1, 30);


CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `rlno` varchar(15) NOT NULL,
  `name` text NOT NULL,
  `fnam` text NOT NULL,
  `moname` text NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `students` (`id`, `rlno`, `name`, `fnam`, `moname`, `semester`) VALUES
(1, '1602-18-733-014', 'I Bhavya', 'I VenkataRamiReddy','I Tulasi', 4),
(2, '1602-18-733-013', 'P Bhashith', 'Bhashithafathet', 'Bhashithamom', 4),
(3, '1602-18-733-015', 'N Deepika', 'Deepikafather', 'Deepikamom', 4);


ALTER TABLE `memorecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlnoref` (`rlno`);


ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rlno` (`rlno`),
  ADD KEY `rlno_2` (`rlno`);


ALTER TABLE `memorecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `memorecords`
  ADD CONSTRAINT `rlnoref` FOREIGN KEY (`rlno`) REFERENCES `students` (`rlno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;
