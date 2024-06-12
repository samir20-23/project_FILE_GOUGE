-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 05:02 AM
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
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(30) NOT NULL,
  `book_email` varchar(50) NOT NULL,
  `book_tour` varchar(250) NOT NULL,
  `book_adults` int(11) NOT NULL,
  `book_child5_14` int(11) NOT NULL,
  `book_child2` int(11) NOT NULL,
  `book_depart` varchar(250) NOT NULL,
  `book_return` varchar(250) NOT NULL,
  `book_message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_email`, `book_tour`, `book_adults`, `book_child5_14`, `book_child2`, `book_depart`, `book_return`, `book_message`) VALUES
(1, 'germany', 'germanysamir1@gmail.com', 'FULL DAY TRIP WITH PRIVATE GUIDE IN TANGIER', 2, 2, 2, '234234', '234234', 'dfvsdfv'),
(2, 'samir', 'germanysamir1@gmail.com', '', 6, 6, 6, '234234', '234234', 'ghggggggggggggggggggggg'),
(3, 'samir', 'germanysamir1@gmail.com', '', 6, 6, 6, '234234', '234234', 'ghggggggggggggggggggggg'),
(4, 'samir', 'germanysamir1@gmail.com', '', 6, 6, 6, '234234', '234234', 'ghggggggggggggggggggggg'),
(5, 'samir', 'germanysamir1@gmail.com', '', 3, 4, 5, '234234', '234234', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
(6, 'samir', 'germanysamir1@gmail.com', '', 3, 4, 5, '234234', '234234', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
(7, 'samir', 'germanysamir1@gmail.com', '', 3, 4, 5, '234234', '234234', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
(8, 'germany', 'germanysamir1@gmail.com', '', 8, 8, 9, '234234', '234234', 'llllllllllllllllllllllllllllllllll'),
(9, 'germany', 'germanysamir1@gmail.com', '', 8, 8, 9, '234234', '234234', 'llllllllllllllllllllllllllllllllll'),
(10, 'germany', 'germanysamir1@gmail.com', '', 8, 8, 9, '234234', '234234', 'llllllllllllllllllllllllllllllllll'),
(11, 'germany', 'germanysamir1@gmail.com', '', 8, 8, 9, '234234', '234234', 'llllllllllllllllllllllllllllllllll'),
(12, 'germany', 'germanysamir1@gmail.com', '', 8, 8, 9, '234234', '234234', 'llllllllllllllllllllllllllllllllll'),
(13, 'samir', 'germanysamir1@gmail.com', '', 1, 3, 4, '234234', '234234', 'sssssssss'),
(14, '', '', '', 0, 0, 0, '', '', ''),
(15, '', '', '', 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_fullname` varchar(50) NOT NULL,
  `client_email` varchar(60) NOT NULL,
  `client_ty` int(11) NOT NULL,
  `client_phone` int(11) NOT NULL,
  `client_age` int(11) NOT NULL,
  `client_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_fullname`, `client_email`, `client_ty`, `client_phone`, `client_age`, `client_password`) VALUES
(2, 'samir aoulad aoulad amar', 'germanysamir1@gmail.com', 0, 718087106, 0, 'samir aoulad aoulad amar'),
(3, 'SAMIR', 'germanysamir1@gmail.com2', 212, 718087106, 0, 'samir'),
(4, 'SAMIR', 'germanysamir1@gmail.com3', 212, 718087106, 0, 'samir'),
(5, 'SAMIR', 'germanysamir1@gmail.com4', 212, 2147483647, 0, 'samir');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(50) NOT NULL,
  `tour_price` int(11) NOT NULL,
  `tour_description` varchar(500) NOT NULL,
  `tour_adddescription` varchar(600) NOT NULL,
  `tour_img` varchar(2000) NOT NULL,
  `tour_img2` varchar(2000) NOT NULL,
  `tour_img3` varchar(2000) NOT NULL,
  `tour_img4` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`tour_id`, `tour_name`, `tour_price`, `tour_description`, `tour_adddescription`, `tour_img`, `tour_img2`, `tour_img3`, `tour_img4`) VALUES
(17, 'CHEFCHAOUN', 800, 'Chefchaouen, a small city in the Rif Mountains of northwest Morocco, is famous for its striking blue-washed buildings', 'Chefchaouen, a small city in the Rif Mountains of northwest Morocco, is famous for its striking blue-washed buildings, giving it a unique and picturesque appearance. Founded in 1471, the city has a rich history influenced by Berber, Arab, and Jewish cultures. Key features include the narrow, winding streets of the Medina, the historic Kasbah, and vibrant local markets known for handicrafts like wool garments and woven blankets. Surrounded by the scenic Rif Mountains, Chefchaouen is also popular for hiking and natural attractions like the Ras El Maa waterfall. This charming city attracts touris', '9185-pexels-taryn-elliott-4652066.jpg', '7294-pexels-imadbo-8860849.jpg', '6096-pexels-taryn-elliott-4652060.jpg', '2143-pexels-fazo-19841820.jpg'),
(18, 'Casablanca,Morocco', 945, 'Casablanca, Morocco&#039;s largest city, is a bustling metropolis on the Atlantic coast. It&#039;s renowned for its diverse architecture', 'Casablanca, Morocco&#039;s largest city, is a bustling metropolis on the Atlantic coast. It&#039;s renowned for its diverse architecture, from the towering Hassan II Mosque to French colonial-era buildings. As the country&#039;s economic hub, it boasts a vibrant business scene and modern infrastructure, including a busy port and international airport. The city&#039;s cultural landscape is rich, with a mix of Arab, Berber, European, and African influences, evident in its cuisine, arts, and entertainment offerings. With beautiful beaches, historic sites, and a thriving urban atmosphere, Casablan', '9728-pexels-aiss-digital-112080841-9677615.jpg', '9603-mannie-nami-_aNm8TMzbUI-unsplash.jpg', '8400-pexels-alpha-plus-911302239-24984065.jpg', '8791-steeph-almer-08-J4zppvs0-unsplash.jpg'),
(20, 'Essaouira,Morocco', 300, 'Sure, here&#039;s a summary of Essaouira:  Essaouira is a charming coastal town in Morocco known for its laid-back atmosphere, historic Medina, and artistic vibe', 'Essaouira is a charming coastal town in Morocco known for its laid-back atmosphere, historic Medina, and artistic vibe. Highlights include exploring the UNESCO-listed Medina with its narrow alleyways and vibrant markets, visiting the bustling fishing port, enjoying the picturesque beaches for water sports and relaxation, exploring historical sites like the Skala de la Ville and Skala du Port, experiencing the Gnaoua World Music Festival if visiting during the event, immersing in the local art and culture scene, and savoring delicious Moroccan cuisine at the town&#039;s restaurants and cafes.', '2577-nghia-do-thanh-iESPEeijoko-unsplash.jpg', '9675-pexels-adil-dahmani-157456832-10727341.jpg', '5220-pexels-hilary-wagner-598580192-17180463.jpg', '5218-pexels-hamza-laafou-186688032-11588750.jpg'),
(21, 'FES,Morocco', 400, 'Fes is a historic city in northern Morocco known for its medieval medina, rich craftsmanship, and cultural heritage.', 'Fes is a historic city in northern Morocco known for its medieval medina, rich craftsmanship, and cultural heritage. Highlights include exploring the labyrinthine streets of the medina, visiting historical sites like the Al-Qarawiyyin Mosque and Bou Inania Madrasa, experiencing traditional craftsmanship in pottery and leatherwork, enjoying Moroccan cuisine, and attending cultural festivals like the Fes Festival of World Sacred Music.', '4779-carlos-ibanez-lOr8TW3V8k8-unsplash.jpg', '5164-pexels-ekrulila-13794310.jpg', '4969-pexels-khalil-zarouali-241844717-12299250.jpg', '1095-pexels-vlasceanu-19190380.jpg'),
(22, 'Marrakesh,Morocco', 900, 'Marrakesh is a vibrant city in Morocco known for its bustling medina, stunning architecture, and lively atmosphere', 'Marrakesh is a vibrant city in Morocco known for its bustling medina, stunning architecture, and lively atmosphere. Highlights include exploring the winding streets of the medina, visiting iconic landmarks like the Jemaa el-Fnaa square and Koutoubia Mosque, experiencing traditional Moroccan cuisine and entertainment, shopping in the souks for handmade crafts and spices, and relaxing in the beautiful gardens and palaces scattered throughout the city.', '5703-pexels-domenicobertazzo-15260616.jpg', '8051-pexels-ekrulila-13766866.jpg', '1007-pexels-henrik-le-botos-654782730-18823710.jpg', '1518-pexels-mographe-15360681.jpg'),
(23, 'meknes,Morocco', 550, 'Meknes is a historic city in Morocco, known for its well-preserved medina, impressive gates, and rich cultural heritage', 'Meknes is a historic city in Morocco, known for its well-preserved medina, impressive gates, and rich cultural heritage. Highlights include exploring the intricately designed Bab Mansour gate, visiting the ancient granaries of Heri es-Souani, discovering the Mausoleum of Moulay Ismail, enjoying the serene atmosphere of the Agdal Basin, and experiencing the local crafts and cuisine in the bustling medina.', '2623-closeup-shot-son-joseph-school-marrakech-morocco.jpg', '2666-oriental-market.jpg', '3019-othmane-ferrah-V8mdX_0HajQ-unsplash.jpg', '5769-adil-elouardii-_fcZ5jncgAw-unsplash.jpg'),
(24, 'Oujda,Morocco', 250, 'Oujda is a city in northeastern Morocco known for its diverse culture, historic sites, and vibrant markets', 'Oujda is a city in northeastern Morocco known for its diverse culture, historic sites, and vibrant markets. Highlights include exploring the bustling medina with its traditional souks, visiting historical landmarks like the Kasbah of Oujda and the Sidi Yahya Mosque, experiencing local cuisine at street-side cafes, and immersing yourself in the lively atmosphere of the city&#039;s squares and parks.', '4795-humphrey-muleba-logSCQ41hoY-unsplash.jpg', '3900-nothingshota-nNOIqx2qnP8-unsplash.jpg', '4006-yassine-ghomriche-c8KguneXtgU-unsplash.jpg', '8791-zakaria-bouzia-RLV4QbEilFA-unsplash.jpg'),
(25, 'rabat,Morocco', 380, 'Rabat, the capital city of Morocco, is a blend of historical landmarks, cultural attractions, and modern amenities', 'Rabat, the capital city of Morocco, is a blend of historical landmarks, cultural attractions, and modern amenities. Highlights include exploring the UNESCO-listed Kasbah of the Udayas, visiting the iconic Hassan Tower and the nearby Mausoleum of Mohammed V, strolling along the scenic Bouregreg River, experiencing the vibrant atmosphere of the medina, and discovering the city&#039;s rich art and museum scene.', '5000-pexels-jean-marc-bonnel-387362531-19085093.jpg', '6849-pexels-temlyder-6589626.jpg', '2509-pexels-jean-marc-bonnel-387362531-19085093.jpg', '5738-pexels-abdel-razak-746884544-18650472.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE `view` (
  `singUp` int(11) DEFAULT NULL,
  `singIn` int(11) NOT NULL,
  `forgot` int(11) NOT NULL,
  `editpassword` int(11) NOT NULL,
  `mailercode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`singUp`, `singIn`, `forgot`, `editpassword`, `mailercode`) VALUES
(0, 4, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
