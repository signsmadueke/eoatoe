-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 15, 2021 at 02:41 PM
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
(72, 'Prayers For Mercy', 'Prayer M Madueke', 'book6.jpg', 'The journey to greatness can be very difficult outside the mercy of God. Do you know about God\'s mercy? Mercy can be translated as kindness, loving-kindness, good, goodness, pity, and compassion. It is a deep and tender feeling of compassion. God\'s mercy entails His having a deep and tender feeling of compassion towards us. It is being compassionate and aroused by the sight of weakness or suffering. It means to bend or stoop in kindness or loyalty to an inferior person, to favor or bestow something to him and to be considerate often when it is not expected or deserved. In this all-new message, Emmanuel Atoe teaches you practical keys on how:. The prayer of Mercy can change the situation. Mercy opens heaven on our prayer; mercy prevails over the judgment of the enemies. Mercy draws the attention of God to us. Mercy makes God forgive our sins and show us kindness. Mercy opens the door for miracles. The steadfast love of the LORD never ceases; his mercies never come to an end; they are new every morning; great is your faithfulness. The mercy of God is the anchor of deliverance for humanity. Get this book to know everything you need to know about God\'s Mercy!', 290, '1658537505', '5.99', '13.99', '1658537505', 'B083QNCZHL', '2020-04-09'),
(158, 'Your Dream Directory', 'Prayer M Madueke', 'book7.jpg', '\r\n        Dreams are series of thoughts, images or emotions that occur during sleep. It is an activity observed or enacted in one\'s sleep and impressed in one\'s memory so that when you wake up, it will be vividly remembered. If you forget your dreams, or think you do not dream at all, or dream but do not know the right prayers to pray, you may face great loss, sudden disaster or abortion of divine provisions. In this book, you will discover the meaning of your dreams, the right prayers to pray and how to handle dreams your forget, the prayers to pray when you dream and forget or fail to interpret rightly. This book is everyone\'s book because dream is common to all people, rich, poor, and people from all race in all the countries of the world, welcome to your dream directory.\r\n        ', 362, '1545525714', '5.99', '15.50', '1545525714', 'B071L5JHD3', '2020-04-09'),
(159, 'Prayers To Keep Your Marriage Out Of Troubles', 'Prayer M Madueke', 'book10.jpg', '\r\n        A power-packed prayer book you can use to guard your marriage from troubles in today\'s world. Are you facing divorce? Is your family in trouble over money, jobs or debts. Let God lend you a helping hand today.\r\n        ', 346, '146624416X', '6.00', '15.00', '146624416X', 'B0719GTFTD', '2020-04-09'),
(160, 'Dangerous Decrees to Destroy Your Destroyers (Book 1)', 'Prayer M Madueke', 'book11.jpg', '\r\n        Dangerous decrees to destroy your destroyers are a series of decrees that are designed to defend the defenceless and return evil arrows to their source. The decrees and prayers in these series of books stands as enemies to your enemies without taking no for an answer. These are books of decrees that can quarantine your problems, uncompromising enemies to an isolated place until they gave up the ghost. The decrees in this series of books can apprehend your enemies, put them into prison, recover your loss and confront every evil sacrifice against you until they are expired. The decrees are accompanied by a light that can expose evil activities in the dark, break evil chains and speaks to your problems until they bow. Get the series of this decrees and enjoy the rest of your life on earth.\r\n        ', 392, '979-8624497368', '5.99', '13.99', 'B086BJZPL9', 'B0867GPTXM', '2020-04-09'),
(161, 'Dangerous Decrees to Destroy Your Destroyers (Book 2)', 'Prayer M Madueke', 'book16.jpg', '\r\n        Dangerous decrees to destroy your destroyers are a series of decrees that are designed to defend the defenceless and return evil arrows to their source. The decrees and prayers in these series of books stands as enemies to your enemies without taking no for an answer. These are books of decrees that can quarantine your problems, uncompromising enemies to an isolated place until they gave up the ghost. The decrees in this series of books can apprehend your enemies, put them into prison, recover your loss and confront every evil sacrifice against you until they are expired. The decrees are accompanied by a light that can expose evil activities in the dark, break evil chains and speaks to your problems until they bow. Get the series of this decrees and enjoy the rest of your life on earth.\r\n        ', 392, '979-8624497368', '5.99', '13.99', 'B086C9YJS1', 'B0866CT5XF', '2020-04-09'),
(163, 'Leviathan The Beast', 'Prayer M Madueke', 'book12.jpg', '\r\n        Leviathan is the principality in charge of the dark region in the satanic kingdom. Only divine light sent in the name of Jesus in righteousness and faith can penetrate his kingdom or domain.His main kingdom is much below the water level but he also operates in the second heaven like any other principality. By right he is supposed to be next to Satan but the Queen of heaven has usurped the power of leviathan because of the favor she is currently receiving from Satan.Get this book to know everything you need to know about Leviathan, his tricks and how to stop him.\r\n        ', 177, '1657287564', '4.99', '9.99', '1657287564', 'B083LM75RD', '2020-04-09'),
(164, 'A Jump From Evil Altar', 'Prayer M Madueke', 'book9.jpg', '\r\n        The Lord is with many believers today but they do not know. many people of God today are still serving under great bondage. There is much great potential deposited in many believers today but these believers are still living in sin.An altar can be built to destroy an individual, a family, a group or even a whole nation. Once your enemies know what God has spoken concerning your life, marriage, business, academics, work, files containing what God has said about them are on evil altars and need to be withdrawn.\r\n        ', 256, '1650596138', '4.60', '14.99', '1650596138', 'B0834HH58H', '2020-04-09'),
(165, 'When Evil Altars are Multiplied', 'Prayer M Madueke', 'book14.jpg', '\r\n        Our generation is possessed, demonized, filled with fakes, magicians, iniquity, perversion, enchantments and divinations. Altars of darkness which are places where people\'s destinies, marriages, great greatness and promising stars are summoned, judged and condemned by the wicked are increasing. We are faced with multiple altars, places of evil sacrifices and demonstrations of demonic powers. You need to know how to deal with evil altar, evil priest and people who multiply altars around you. If you keep silent, words, negative utterances said against you in evil altars will control your life on earth and reduce you to the wish of altar users. This book will guide you on how to resist attacks, reject evil arrows from evil altars and empower you to fulfill your destiny, Gods purpose on earth.\r\n        ', 168, '1543156878', '5.50', '12.99', '1543156878', 'B0728186BC', '2020-04-09'),
(166, 'Speaking Things into Existence by Faith (Book 1)', 'Prayer M Madueke', 'book17.jpg', '\r\n        With this divine provided phone number, your situation can change. You can be prosperous, and great restoration can take place in your life because all things are possible to him that believes. Those who have this key have a unique language because they know that all things are possible. If you can only believe and say out what you believe, you will get to your Promised Land. No matter how sinful you are, you can still believe Christ, repent, and forsake your sins. Faith has a voice. So, when you believe, do not stop at that level. Say what you believe and stand on that even unto death. Faith brings man and God in unity in the realm of the spirit and makes impossibilities possible in a moment. Some of the powers to fight against to have this phone numbers of God are unbelief to God\'s word, fear, doubt, and discouragement. One good thing about this particular phone number is that it does not discriminate. Even sinners at times use this number to get to God. Many sinners out of coverage area have used this number and it worked for them. Here you can find 25 prayer points to guide you through your exercise of faith.\r\n        ', 101, '979-8624479869', '3.99', '9.99', 'B085RP5M2D', 'B085W661SF', '2020-04-09'),
(167, 'Speaking Things into Existence by Faith (Book 2)', 'Prayer M Madueke', 'book18.jpg', '\r\n        With this divine provided phone number, your situation can change. You can be prosperous, and great restoration can take place in your life because all things are possible to him that believes. Those who have this key have a unique language because they know that all things are possible. If you can only believe and say out what you believe, you will get to your Promised Land. No matter how sinful you are, you can still believe Christ, repent, and forsake your sins. Faith has a voice. So, when you believe, do not stop at that level. Say what you believe and stand on that even unto death. Faith brings man and God in unity in the realm of the spirit and makes impossibilities possible in a moment. Some of the powers to fight against to have this phone numbers of God are unbelief to God\'s word, fear, doubt, and discouragement. One good thing about this particular phone number is that it does not discriminate. Even sinners at times use this number to get to God. Many sinners out of coverage area have used this number and it worked for them. Here you can find 25 prayer points to guide you through your exercise of faith.\r\n        ', 66, '979-8624493292', '3.99', '9.99', 'B085RNLQLK', 'B085XNCJC3', '2020-04-09'),
(168, 'Prayer Retreat', 'Prayer M Madueke', 'book3.jpg', '\r\n        Are you suffering from setbacks in your business, health, marriage or personal relationships? Are you under the oppression of the enemy? Are you a victim of near-to-success syndrome? It does not matter to God what your problem is. What is important to Him is whether you\'re ready to turn all the burden over to Him. Prayer Retreat (Prayers to Possess Your Year) is an inspired prayer manual with just one aim: freeing you from the vindictive clutches of the enemy and set you on the path to success in every area of your life. Experience supernatural breakthroughs in your finances, divine health, love and happiness in your relationships and absolute freedom from demonic attacks.Prayer Retreat is a must have prayer manual for every family.\r\n        ', 425, '1466200847', '4.99', '16.99', '1466200847', 'B074P7CCDK', '2020-04-09'),
(170, '21/40 Nights of Decrees and Your Enemies Will Surrender', 'Prayer M Madueke', 'book1.jpg', '\r\n        This book is a collection of powerful prayer points divided in two parts. The first part is made up of 21 prayer topics or decrees and the second, 40 decrees. It covers every conceivable problem a christian believer faces in their christian walk of faith, and gives prayer topics that provide answers to these problems.\r\n        ', 447, '9780720944', '7.99', '18.99', '9780720944', 'B0716DJZRN', '2020-04-09');

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
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Emmanuel Atoe', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

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
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Emmanuel Atoe', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

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

--
-- Dumping data for table `freebooks`
--

INSERT INTO `freebooks` (`book_id`, `book_title`, `book_author`, `book_image`, `book_description`, `total_book_page`, `book_isbn`, `book_kindle_price`, `book_paperback_price`, `book_paperback_asin`, `book_kindle_asin`, `date_added`) VALUES
(1, 'Quarantined for God</b>s Deliverance', 'Emmanuel Atoe', 'book5.jpg', 'Plagues do not just happen without reason. When the Egyptians became steeped in evil and iniquity against the people of God, plagues were sent to humble them. Plagues are more horrifying and humiliating than shooting wars. They are a sign that something is terribly wrong. Man has deployed the revealed knowledge of God (science and technology) to wrong uses, destroying and polluting the earth, playing god with genomics and even attempting to slap its creator in the face. There is no depth of decadence that man has not plumbed in a vain attempt to normalize evil and abnormality. Plagues are a time of cleansing, cleansing the earth of pollutants and iniquity. For a child of God, it is a time to put things right in your relationship with God. This is what this book, Quarantined for Deliverance, is about. With over 75 deliverance prayer points, you will be purged to be in order to be saved. When the 10 plagues were unleashed on the Egyptians, the children of God were unaffected. God does not change. He will deliver his people. His promises never fail. Quarantined for Deliverance will help those who have gone astray retrace their steps while there\'s yet time. This book is for families, communities and nations to pray for deliverance from this terrible scourge.', 145, '978-8633820270', '0.99', '6.99', 'B086PSL9BF', 'B08917XT1X', '2020-04-02'),
(2, 'Urgent Prayers for President Trump and World Leaders', 'Prayer M Madueke', 'book23.jpg', '\r\n        Unusual times require unusual leaders. The world is sitting on the brink of disaster. There is a battle of supremacy being waged between the forces of good and evil. This is the age of information and misinformation. The laws handed down to man by God are being systematically perverted by the agents of Satan. They have but one horrifying goal: bringing mankind to doom. However, God never leaves his children without hope. When necessary, God can raise the unexpected into positions of leadership. America is a nation whose democracy was founded on Godly principles and laws. In these unusual times, these principles have been under ferocious attack by forces of evil often masquerading as campaigners for various clearly unnatural rights. The goal is to reduce America and the world to Sodom and Gomorrah and thereby cause the world to be destroyed by the wrath of God.<br>God raised Donald Trump an unusual leader to bring America back from the brink. His numerous actions since assuming office leaves no one in doubt that his ascendance to the throne of America\'s presidency is divine. He has rolled back the effects of so many ungodly laws and in some cases got them revoked.<br>Donald Trump is not perfect but no one except our creator is. God does not use the perfect and prepared but rather uses the available and ready at heart. <br>This collection of prayers points is dedicated to raising leaders all over the world who will work for the kingdom of God. I believe President Donald Trump of the United States of America is one of them. He deserves our prayer to serve a second term as president.<br>I cordially invite you to pray for his re-election to a second term as President of the United States of America. In addition, his government needs to employ a special prayer squad to pray daily for his re-election.\r\n        ', 151, '9798645581558', '3.99', '9.99', 'B0892DD2JF', 'B088HFXDH8', '2020-04-09');

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
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Emmanuel Atoe', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

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
(15, 'Divine Unmerited Favor', 'The Word of Faith', 'Emmanuel Atoe', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

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
