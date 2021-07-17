-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 17, 2021 at 09:55 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `eoatoe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'Signs', 'signsmadueke@gmail.com', 'eecf2c4f19410e68eba078f6be4f40d64f176b36');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `book_author` varchar(150) NOT NULL,
  `book_image` varchar(150) NOT NULL,
  `book_description` longtext NOT NULL,
  `total_book_page` int(11) NOT NULL,
  `book_isbn` varchar(150) NOT NULL,
  `book_kindle_price` varchar(150) NOT NULL,
  `book_paperback_price` varchar(150) NOT NULL,
  `book_paperback_asin` varchar(150) NOT NULL,
  `book_kindle_asin` varchar(150) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `book_author`, `book_image`, `book_description`, `total_book_page`, `book_isbn`, `book_kindle_price`, `book_paperback_price`, `book_paperback_asin`, `book_kindle_asin`, `date_added`) VALUES
(1, 'A Moment of Prayer', 'Emmanuel Atoe', 'a-moment-of-prayer.jpg', 'There is nothing impossible with God but praying while breaking the law of God makes your prayers ineffective. Therefore, in this book, A Moment of Prayer, everyone under this program is expected to pray according to the rule, not against the law supporting it.', 290, '979-8692539977', '2.99', '9.99', 'B08KH3T4GY', 'B08KHKFZJF', '2021-07-16'),
(2, 'The Believer\'s Handbook', 'Emmanuel Atoe', 'the-believers-handbook.jpg', 'This book is highly recommendable for all. It is a book that will enhance your spiritual life, ignite the fire in you. It is a book that will open you heart to the mystery of faith.\nThe inestimable value of this book to every soul cannot be over emphasized. With this book you will get to know about the pillars of true faith in God. If you have been doubting your salvation, Christian life, the person and baptism of the Holy Ghost etc., this book is all you need.\nMoreover, it is more favorable to believers who are still in faith, you will find all the encouragement and comfort you need in this race and your work with the Lord Jesus Christ.', 92, '979-8553334918', '2.99', '9.99', 'B08LQVHTY7', 'B08LTTJJ37', '2021-07-16'),
(3, 'Church Growth in the Acts of the Apostles', 'Emmanuel Atoe', 'church-growth-in-the-acts-of-the-apostles.jpg', 'The Church exists to communicate the Gospel of Jesus Christ and the mind of God, as revealed in His Word to the world. We are Christ ambassadors – His point of contact to all men in every generation (2 Corinthians 5:20).The Church exists to spread the good news of redemption and reproduce itself in the lives of the human race. The Church is the most powerful corporate body that is capable of commanding the attention of heaven on earth. The Church is God’s idea and product, and so possesses an inbuilt capacity for success. The objective of this book is to get you acquainted with the purpose of the church in general, and the vision of Victory Sanctuary in particular.', 72, '979-8745451300', '2.99', '6.99', 'B093RLBV6T', 'B093PSJJ41', '2021-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `counselling`
--

CREATE TABLE `counselling` (
  `devotion_id` int(11) NOT NULL,
  `devotion_title` varchar(150) NOT NULL,
  `devotion_subtitle` varchar(150) DEFAULT NULL,
  `devotion_author` varchar(150) NOT NULL,
  `devotion_body` longtext NOT NULL,
  `devotion_image` varchar(150) NOT NULL,
  `devotion_subimage` varchar(150) NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counselling`
--

INSERT INTO `counselling` (`devotion_id`, `devotion_title`, `devotion_subtitle`, `devotion_author`, `devotion_body`, `devotion_image`, `devotion_subimage`, `datePosted`) VALUES
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Prayer M. Madueke', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `devotions`
--

CREATE TABLE `devotions` (
  `devotion_id` int(11) NOT NULL,
  `devotion_title` varchar(150) NOT NULL,
  `devotion_subtitle` varchar(150) DEFAULT NULL,
  `devotion_author` varchar(150) NOT NULL,
  `devotion_body` longtext NOT NULL,
  `devotion_image` varchar(150) NOT NULL,
  `devotion_subimage` varchar(150) NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devotions`
--

INSERT INTO `devotions` (`devotion_id`, `devotion_title`, `devotion_subtitle`, `devotion_author`, `devotion_body`, `devotion_image`, `devotion_subimage`, `datePosted`) VALUES
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Prayer M. Madueke', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `freebooks`
--

CREATE TABLE `freebooks` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `book_author` varchar(150) NOT NULL,
  `book_image` varchar(150) NOT NULL,
  `book_description` longtext NOT NULL,
  `total_book_page` int(11) NOT NULL,
  `book_isbn` varchar(150) NOT NULL,
  `book_kindle_price` varchar(150) NOT NULL,
  `book_paperback_price` varchar(150) NOT NULL,
  `book_paperback_asin` varchar(150) NOT NULL,
  `book_kindle_asin` varchar(150) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meditations`
--

CREATE TABLE `meditations` (
  `devotion_id` int(11) NOT NULL,
  `devotion_title` varchar(150) NOT NULL,
  `devotion_subtitle` varchar(150) DEFAULT NULL,
  `devotion_author` varchar(150) NOT NULL,
  `devotion_body` longtext NOT NULL,
  `devotion_image` varchar(150) NOT NULL,
  `devotion_subimage` varchar(150) NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meditations`
--

INSERT INTO `meditations` (`devotion_id`, `devotion_title`, `devotion_subtitle`, `devotion_author`, `devotion_body`, `devotion_image`, `devotion_subimage`, `datePosted`) VALUES
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Prayer M. Madueke', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `devotion_id` int(11) NOT NULL,
  `devotion_title` varchar(150) NOT NULL,
  `devotion_subtitle` varchar(150) DEFAULT NULL,
  `devotion_author` varchar(150) NOT NULL,
  `devotion_body` longtext NOT NULL,
  `devotion_image` varchar(150) NOT NULL,
  `devotion_subimage` varchar(150) NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`devotion_id`, `devotion_title`, `devotion_subtitle`, `devotion_author`, `devotion_body`, `devotion_image`, `devotion_subimage`, `datePosted`) VALUES
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Prayer M. Madueke', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `counselling`
--
ALTER TABLE `counselling`
  ADD PRIMARY KEY (`devotion_id`);

--
-- Indexes for table `devotions`
--
ALTER TABLE `devotions`
  ADD PRIMARY KEY (`devotion_id`);

--
-- Indexes for table `freebooks`
--
ALTER TABLE `freebooks`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `meditations`
--
ALTER TABLE `meditations`
  ADD PRIMARY KEY (`devotion_id`);

--
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`devotion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `counselling`
--
ALTER TABLE `counselling`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `devotions`
--
ALTER TABLE `devotions`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `freebooks`
--
ALTER TABLE `freebooks`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meditations`
--
ALTER TABLE `meditations`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
