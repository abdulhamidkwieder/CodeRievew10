-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 12:07 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_abdulhamid_kwieder_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(1, 'Katja', 'Brandis'),
(2, 'Wolfgang', 'Herrendorf'),
(3, 'Isaac', 'Asimov'),
(4, 'Gillian', 'Flynn'),
(5, 'Dan', 'Brown'),
(6, 'J.K.', 'Rowling'),
(7, 'Bob', 'Dylan'),
(8, 'Sade', ''),
(9, 'Ed', 'Sheeran'),
(10, 'Pink', ''),
(11, 'Blink 182', ''),
(12, 'Alicia', 'Keys'),
(13, 'Charlie', 'Chaplin'),
(14, 'Mario', 'Puzo'),
(15, 'Chuck', 'Palahniuk'),
(16, 'Christopher ', 'Nolan'),
(17, 'Nicholas ', 'Pileggi'),
(18, 'The Wachowski Brothers', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_media_id` int(11) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL,
  `fk_publisher_id` int(11) NOT NULL,
  `type` varchar(55) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `image` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin,
  `ISBN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `fk_author_id`, `fk_publisher_id`, `type`, `title`, `image`, `description`, `ISBN`) VALUES
(1, 1, 1, 'book', 'Wooldwalkers', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/creative_bookcover.png', 'Auf den ersten Blick sieht Carag aus wie ein normaler Junge. Doch hinter seinen leuchtenden Augen verbirgt sich ein Geheimnis: Carag ist ein Gestaltwandler. Aufgewachsen als Bergllwe in den Wäldern lebt er erst seit Kurzem in der Menschenwelt. Das neue Leben ist für ihn so fremd wie faszinierend. Doch erst als Carag von der Clearwater High erfährt, einem Internat für Woodwalker wie ihn, verspürt er ein Gefühl von Heimat.', 9781120215000),
(2, 2, 2, 'book', 'Tschick', 'https://www.bookish.com/wp-content/uploads/9780823420476_d2861-1.jpg', 'Diamond Life is the debut studio album by English band Sade. It was first released in the United Kingdom on 16 July 1984 by Epic Records and in the United States on 27 February 1985 by Portrait Records. After studying fashion design, and later modelling, Sade Adu began backup singing with British band Pride. During this time Adu and three of the original members of \"Pride\" - Paul Anthony Cook, Paul Denman and Stuart Matthewman - left the group to form their own band called Sade', 9781120215017),
(3, 3, 3, 'book', 'Foundation', 'https://shortlist.imgix.net/app/uploads/2012/06/24225141/the-50-coolest-book-covers-8.jpg?w=1200&h=1&fit=max&auto=format%2Ccompress', 'For twelve thousand years the Galactic Empire has ruled supreme. Now it is dying. But only Hari Seldon, creator of the revolutionary science of psychohistory, can see into the future -- to a dark age of ignorance, barbarism, and warfare that will last thirty thousand years.', 9781120215024),
(4, 4, 4, 'book', 'Gone Girl', 'http://2.bp.blogspot.com/_gSqWmU1tR5k/TTkLQd-KD0I/AAAAAAAAEAg/Z4VaR5_VTAw/s640/93703645.JPG', 'On a warm summer morning in North Carthage, Missouri, it is Nick and Amy Dunne’s fifth wedding anniversary. Presents are being wrapped and reservations are being made when Nick’s clever and beautiful wife disappears. Husband-of-the-Year Nick isn’t doing himself any favors with cringe-worthy daydreams about the slope and shape of his wife’s head, but passages from Amy\'s diary reveal the alpha-girl perfectionist could have put anyone dangerously on edge.', 9781120215031),
(5, 5, 5, 'book', 'Origin', 'https://i.pinimg.com/736x/00/84/69/0084692d04615916b285913b5705c767--lux-series-ya-books.jpg', 'Robert Langdon, Harvard professor of symbology and religious iconology, arrives at the ultramodern Guggenheim Museum in Bilbao to attend a major announcement—the unveiling of a discovery that will change the face of science forever.', 9781120215048),
(6, 6, 6, 'book', 'HP and the Philosopher\'s Stone', 'http://cdn01.cdn.justjaredjr.com/wp-content/uploads/2014/07/hp-covers/harry-potter-new-bloomsbury-covers-03.jpg', 'When a letter arrives for unhappy but ordinary Harry Potter, a decade-old secret is revealed to him that apparently he\'s the last to know. His parents were wizards, killed by a Dark Lord\'s curse when Harry was just a baby, and which he somehow survived. ', 9781120215055),
(7, 7, 7, 'cd', 'Dylan', 'https://lastfm-img2.akamaized.net/i/u/ar0/4a624c2d9eff44688064e0a1b259988e', 'Dylan is the 13th studio album by American singer-songwriter Bob Dylan, released on November 19, 1973 by Columbia Records. Compiled and issued by the label with no input from Dylan himself, it contains no original Dylan songs, the material consisting of two outtakes from Self Portrait and another seven from New Morning. It followed the artist\'s departure from Columbia for Asylum Records, and the announcement of his first major tour since 1966.', 9781120215062),
(8, 8, 8, 'cd', 'Diamond Life', 'https://upload.wikimedia.org/wikipedia/en/8/81/Neil_Diamond_The_Move_Album_cover.jpg', 'Diamond Life is the debut studio album by English band Sade. It was first released in the United Kingdom on 16 July 1984 by Epic Records and in the United States on 27 February 1985 by Portrait Records. After studying fashion design, and later modelling, Sade Adu began backup singing with British band Pride. During this time Adu and three of the original members of \"Pride\" - Paul Anthony Cook, Paul Denman and Stuart Matthewman - left the group to form their own band called Sade.', 9781120215079),
(9, 9, 9, 'cd', 'Divide', 'https://www.billboard.com/files/styles/900_wide/public/media/1977-low-David-Bowie-billboard-1000.jpg', '÷ (pronounced \"divide\") is the third studio album by English singer-songwriter Ed Sheeran. It was released on 3 March 2017 through Asylum Records and Atlantic Records. \"Castle on the Hill\" and \"Shape of You\" were released as the album\'s lead singles on 6 January 2017.', 9781120215086),
(10, 10, 10, 'cd', 'Beautiful Trauma', 'https://www.covercentury.com/covers/audio/p/pnk_beautiful_trauma_2017_retail_cd-inlay.jpg', 'Beautiful Trauma is the seventh studio album by American singer Pink. It was released on October 13, 2017, by RCA Records. The album\'s release was preceded by the release of the first single, What About Us, on August 10, 2017.', 9781120215093),
(11, 11, 11, 'cd', 'California', 'http://www.feelnumb.com/wp-content/uploads/2009/12/Hotel-California-Single-The-Eagles-Album-Cover-Beverly-Hills-Hotel.jpg', 'California is the seventh studio album by American rock band Blink-182, released on July 1, 2016. After touring and releasing the band\'s sixth album Neighborhoods (2011), it became difficult for the trio to record new material, due to DeLonge\'s various projects. After disagreements, the remaining members of the group—vocalist/bassist Mark Hoppus and drummer Travis Barker—sought separation from DeLonge and recruited Skiba, best known as the frontman of rock band Alkaline Trio, in his place.', 9781120215109),
(12, 12, 10, 'cd', 'Here', 'http://orchestrotica.com/img/album_cover_WHMT_600x600.jpg', 'Here (stylized as HERE) is the sixth studio album by American singer and songwriter Alicia Keys. It was released on November 4, 2016, by RCA Records. The first single from the standard edition, \"Blended Family (What You Do for Love)\", was released on October 7, 2016. \"In Common\" and \"Hallelujah\" were featured on the deluxe edition of the album. As of May 2017, the album has sold 131,000 copies worldwide.', 9781120215123),
(13, 13, 13, 'dvd', 'City Lights', 'https://dvdcover.com/wp-content/uploads/City_Lights_1931_R1-cd2-www.GetCovers.net_.jpg', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 9781120215130),
(14, 14, 14, 'dvd', 'The Godfather', 'http://www.mobygames.com/images/covers/l/235008-the-godfather-the-game-playstation-2-media.jpg', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 9781120215116),
(15, 15, 15, 'dvd', 'Fight Club', 'https://dvdcover.com/wp-content/uploads/2017/04/2017-04-27_59020ed1e4446_FightClubDVDmod2.jpg', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.', 9781120215147),
(16, 16, 16, 'dvd', 'Inception', 'https://i.pinimg.com/736x/8c/06/d8/8c06d8f632e77ce66fcb247073fd5745--design-layout-art-design.jpg', 'A thief, who steals corporate secrets through the use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 9781120215154),
(17, 17, 16, 'dvd', 'Good Fellas', 'https://www.swrc.com/media/catalog/product/cache/1/image/600x600/7377c8e36bbbf803488d399c5f11053d/t/_/t_volume_209-thumb-jw_1_.jpg', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 9781120215161),
(18, 18, 15, 'dvd', 'The Matrix', 'http://germancovers.top/wp-content/uploads/2016/06/1465815912_Matrix-Trilogy.jpg', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 9781120215178);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `size`) VALUES
(1, 'Bild', 'Berlin', 'large'),
(2, 'Rowohlt Taschenbuch Verlag', 'Reinbek', 'large'),
(3, 'Heyne', 'München', 'large'),
(4, 'Crown Publishing Group', 'Danvers', 'medium'),
(5, 'Doubleday', 'New York City', 'large'),
(6, 'Bloomsbury', 'London', 'medium'),
(7, 'Columbia Records', 'New York City', 'large'),
(8, 'Epic Records', 'New York City', 'large'),
(9, 'Atlantic Records UK', 'New York', 'large'),
(10, 'RCA Records', 'New York City', 'large'),
(11, 'BMG Chrysalis', 'Los Angeles', 'medium'),
(13, 'Charles Chaplin Production', 'London', 'small'),
(14, 'Alfran Productions', NULL, 'small'),
(15, '20th Century Fox', 'Los Angeles', 'large'),
(16, 'Warner Bros.', 'Los Angeles', 'large');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user_email`, `user_pass`) VALUES
(1, 'khaled', '', 'khaled@khaled.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92'),
(12, 'Hamid', '', 'hamid@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225'),
(13, 'Abdulhamid', '', 'hamid@gmail.at', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_media_id` (`fk_media_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`fk_media_id`) REFERENCES `media` (`media_id`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
