-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 26, 2021 at 10:31 AM
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
(1, 'A Moment of Prayer', 'Emmanuel Atoe', 'a-moment-of-prayer.jpg', 'There is nothing impossible with God but praying while breaking the law of God makes your prayers ineffective. Therefore, in this book, A Moment of Prayer, everyone under this program is expected to pray according to the rule, not against the law supporting it.', 70, '979-8692539977', '2.99', '9.99', 'B08KH3T4GY', 'B08KHKFZJF', '2021-07-16'),
(2, 'The Believer</b>s Handbook', 'Emmanuel Atoe', 'the-believers-handbook.jpg', 'This book is highly recommendable for all. It is a book that will enhance your spiritual life, ignite the fire in you. It is a book that will open you heart to the mystery of faith. The inestimable value of this book to every soul cannot be over emphasized. With this book you will get to know about the pillars of true faith in God. If you have been doubting your salvation, Christian life, the person and baptism of the Holy Ghost etc., this book is all you need. Moreover, it is more favorable to believers who are still in faith, you will find all the encouragement and comfort you need in this race and your work with the Lord Jesus Christ.', 92, '979-8553334918', '2.99', '9.99', 'B08LQVHTY7', 'B08LTTJJ37', '2021-07-16'),
(3, 'Church Growth in the Acts of the Apostles: The Lord Added to The Church Daily Those Who Were Being Saved', 'Emmanuel Atoe', 'church-growth-in-the-acts-of-the-apostles.jpg', 'The Church exists to communicate the Gospel of Jesus Christ and the mind of God, as revealed in His Word to the world. We are Christ ambassadors - His point of contact to all men in every generation (2 Corinthians 5:20). The Church exists to spread the good news of redemption and reproduce itself in the lives of the human race. The Church is the most powerful corporate body that is capable of commanding the attention of heaven on earth. The Church is God\'s idea and product, and so possesses an inbuilt capacity for success. The objective of this book is to get you acquainted with the purpose of the church in general, and the vision of Victory Sanctuary in particular.', 72, '979-8745451300', '2.99', '6.99', 'B093RLBV6T', 'B093PSJJ41', '2021-07-16'),
(5, 'Church Growth in the Acts of the Apostles', 'Emmanuel Atoe', 'church-growth-in-the-acts-of-the-apostles-2.jpg', 'The Church exists to communicate the Gospel of Jesus Christ and the mind of God, as revealed in His Word to the world. We are Christ ambassadors - His point of contact to all men in every generation (2 Corinthians 5:20). The Church exists to spread the good news of redemption and reproduce itself in the lives of the human race. The Church is the most powerful corporate body that is capable of commanding the attention of heaven on earth. The Church is God\'s idea and product, and so possesses an inbuilt capacity for success. The objective of this book is to get you acquainted with the purpose of the church in general, and the vision of Victory Sanctuary in particular.', 61, '979-8731740579', '2.99', '9.99', 'B091F1BFG8', 'B091JB32W3', '2021-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `counselling`
--

CREATE TABLE `counselling` (
  `counsel_id` int(11) NOT NULL,
  `counsel_title` varchar(150) NOT NULL,
  `counsel_author` varchar(150) NOT NULL,
  `counsel_body` longtext NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(17, 'Devotions Divine Unmerited Favor', 'The Word of Faith', 'Emmanuel Atoe', '<div class=\"points\">\r\n                        <h3 class=\"sub-heading\">Your Expectations</h3>\r\n                        <ul>\r\n                            <li>For people who want to be great.</li>\r\n                            <li>For people who wish to be blessed like Abraham.</li>\r\n                            <li>For people who want every curse placed upon them to back fire.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For people who want God to be their shield and exceeding reward.</li>\r\n                            <li>For those who want God to bless them with uncountable blessings.</li>\r\n                            <li>For those who want to inherit their promise land.</li>\r\n                            <li>For those who want God to fight their battles</li>\r\n                        </ul>\r\n                    </div>\r\n                    \r\n                    <div class=\"block\">\r\n                        <p>\r\n                            By divine unmerited favor, many destinies have been changed for good. People with divine favor are very dangerous to the enemy because they carry with them in their body red marks.\r\n                            <br>\r\n                            <br>\r\n                            God goes before them and prepares their way and they are normally distinguished and singled out from the crowd. Their names are announced and singled out among the sons of men.\r\n                            <br>\r\n                            <br>\r\n                            The offerings of favored people are accepted by God and God Himself has respect on their sacrifices. It was the favor of God that kept Joseph alive in the midst of his brethren who hated him. The same divine favor made him to find grace before his master and prospered the works of his hands.\r\n                            <br>\r\n                            <br>\r\n                            The favor of God makes those who have God to be remembered in the day of promotion. The favor of God makes impossible things to become possible. The favor of God makes your enemies to bow down to you. The favor of God makes one greater than others. (Genesis 5:21-24)\r\n                        </p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">When the favor of God manifests</h3>\r\n                        <p>When the favor of God manifests in the life of a slave, he can suddenly be promoted to the position of a king. When the favor of God manifests in Someone&rsquo;s life, his masters are suddenly reduced to his servants. The favor of God can spare the life of a condemned child and take him from the marine chambers to a throne as a prince. It can promote a shepherd, a runaway slave to a commissioned prophet, assigned to speak to pharaoh and take the people of God out of bondage into the Promised Land. The favor of God can bring down manna from heaven and give waters of life to the thirsty run-away slaves</p>\r\n                    </div>\r\n\r\n                    <div class=\"block\">\r\n                        <h3 class=\"sub-heading\">Warfare Section</h3>\r\n                        <ol>\r\n                            <li>Father Lord, make me great to the shame of my enemies, in Jesus&rsquo; name.</li>\r\n                            <li>Let the blessings of Abraham be multiplied in my life now, in Jesus&rsquo; name.</li>\r\n                            <li>Any curse placed upon me before I was born till today, backfire, in Jesus&rsquo; name.</li>\r\n                            <li>Oh Lord, do not allow the enemy to take my place in your program, in the name of Jesus.</li>\r\n                            <li>Divine blessings, wherever you are now, locate me and possess me, in the name of Jesus.</li>\r\n                            <li>Any giant in my promised land blocking my way, die, in the name of Jesus.</li>\r\n                            <li>Every battle of my life, angels of the living God, fight for me, in the name of Jesus.</li>\r\n                            <li>Every arrow of curses fired into my life, backfire, in the name of Jesus.</li>\r\n                            <li>Blood of Jesus, manifest the favor of Abraham into my life, in the name of Jesus.</li>\r\n                            <li>Power that made Abraham great, what are you waiting for? Possess me, in the name of Jesus.</li>\r\n                            <li>Ancient of days, begin to advance my life, in the name of Jesus.</li>\r\n                            <li>Even though my promises tarry, they shall appear by fire, in the name of Jesus.</li>\r\n                            <li>Faith to hold on to the promise of God, possess me now! In the name of Jesus.</li>\r\n                            <li>Any evil partner in my life assigned to hinder my promises, die, in the name of Jesus.</li>\r\n                            <li>I shall not follow God in vain; I shall receive my reward, in Jesus name.</li>\r\n                            <li>Any costly mistake waiting for me on my land of promise, disappear by fire, in the name of Jesus.</li>\r\n                            <li>Oh Lord, let your divine promise for my life manifest by fire, in the name of Jesus.</li>\r\n                            <li>My life, attract divine attention of the almighty God, in Jesus&rsquo; name.</li>\r\n                            <li>I refuse to divert my inheritance to the household enemies, in Jesus&rsquo; name.</li>\r\n                            <li>My life, jump out from every evil cage, in Jesus&rsquo; name.</li>\r\n                        </ol>\r\n                    </div>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08'),
(18, 'Just Ask', 'The Joy of Confident, Bold, Patient, Relentless, Shameless, Dependent, Grateful, Powerful, Expectant', 'Emmanuel Atoe', '<div><b>Helping Christians to pray so that it’s a delight, not a duty.</b></div><div><br></div><div>Prayer can be a struggle. Sometimes we don’t think it will make a difference, or we rely on ourselves, or we’re just too busy. And even if we do pray regularly, it can feel more like a duty than a delight.</div><div><br></div><div>J.D. Greear shows us how prayer was a non-negotiable daily staple in Jesus’ life, more essential to him than eating or sleeping, and therefore why we need to pray as well. He shows us how we can enjoy the same source of power as our Lord and the early church when we learn to \"just ask\" and depend on our heavenly Father as they did.</div><div><br></div><div>Giving specific practical tips for getting on with prayer in everyday life, this book leaves readers wanting to pray, rather than just feeling that they ought to.</div><div><br></div><div>In his introduction, Pastor J.D. says, “Prayer is not a religious task to accomplish; it’s an invitation to lay your burdens down at Jesus’ feet, to share your heart with him, and to be with the one in whose presence is the fullness of joy and at whose right hand are pleasures forevermore (Psalm 16 v 11).”</div>', 'About Book (1).jpg', 'localhost_8888_eoatoe_books(MacBook Pro 2020 13-inch).png', '2021-07-19'),
(19, 'Christian Counselling with Ann, 34', 'The Word of Faith', 'Emmanuel Atoe', '<p>Ann is a 34-year-old woman and have been in a relationship for four years with her boyfriend\r\n    Mario. Mario works for a commercial company and eight months ago, a female director of one of his company\'s most\r\n    important clients expressed her love for him. He got interested in her and they had a very casual relationship for a\r\n    while which he quickly broke up and returned to Ann. He truthfully told Ann and informed her that the woman still\r\n    calls him on his phone. Five months ago, when Mario was in the bathroom, Ann pickup his phone to answer his call.\r\n    She got so irritated, talked very rudely to this woman not to call him for anything, but only official matters.\r\n    Since, she is a very important client for her boyfriends office she was very offended by Ann\'s response. After a\r\n    month, Mario lost his job, in fact, he was forced to resign forcefully by his boss. Mario was not angry and did not\r\n    talk about what happened or why it happened. Furthermore, he has neither shown any anger towards Ann and seems to\r\n    have taken it on his strides and is looking for another job. However, Ann feels guilty that Mario lost his job and\r\n    the fact that he is facing difficulties looking for a new job.</p>\r\n<p><br></p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: Good morning Ann, how are you doing?&nbsp;\r\n</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: Good morning, Pastor.&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: You said you would like to talk about\r\n    issues relating to your relationship?&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: That is correct. I would like to talk about\r\n    my relationship with Mario.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: What\'s going on in your relationship with\r\n    Mario?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: I feels guilty that Mario lost his job and is\r\n    facing difficulties looking for a new job. This issue is also affecting my relationship with God.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: Why do you feel guilty that Mario lost his\r\n    job?&nbsp;&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: I feel it is my fault. I contributed to it\r\n    with my excessive jealousy,&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: Can you talk about what led to his job\r\n    loss that makes feeling guilty?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: Mario had a very casual relationship with\r\n    another woman, which he quickly brokeup and honestly informed me that the woman kept on calling him after office\r\n    hours. Five months ago, when Mario was in the bathroom, she called and I answered his call. When I heard her, I got\r\n    vey jealous, so irritated that I told her very rudely not to call my boyfriend for anything but only official\r\n    matters.&nbsp;&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: What happened after that call?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: A month later, Mario lost his job, as a\r\n    matter of fact he was forced to resign forcefully by his boss.&nbsp;&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: How does Mario react to this situation?\r\n    Your response to the call and the company\'s over reaction?&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: He has neither shown any anger towards me and\r\n    he seems to have taken it on his strides. He is seriously but with much difficulty looking for another job.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: Where is strain in your relationship?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: Mario is very silent about it all. He has not\r\n    spoken a word about it.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: This is certainly a very difficult\r\n    situation for both of you given the impact it has had on your relationship and your partners job. I suggest you give\r\n    him time to determine what he is feeling and what he would like to do in this regard, before you decide to do\r\n    anything or reach any conclusions.</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: I am worried about his silence concerning the\r\n    situation.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: It is not a good idea for him not been\r\n    able to work but it could be possible that he may be attempting to determine how to go about the same, given current\r\n    not pleasant situation. Have you tried having an open conversation with him about it?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: No, I am expecting him to talk to me.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: I will suggest you have an open\r\n    conversation, share your concerns and encourage him to share what he is going through.</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: I haven\'t thought about doing it, that is\r\n    initiating the conversation because I feel guilty.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: I will encourage you to let him know you\r\n    care to hear what he is going through and how he is planning for things ahead. You can assure him that even if you\r\n    do not agree with him you would like to know because you love him.&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Ann&nbsp;</span>:What if he won\'t like to talk to me\r\n    about it.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: You can reassure him that if he is not\r\n    able to talk to you about it, then encourage him to speak to me, if that makes him feel more comfortable, so that he\r\n    can determine the way forward.</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: Many thanks pastor. You have given me\r\n    confident to speak to him and discuss the situation. I will do as you have directed me.</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: I will encourage you to be very supportive\r\n    and stay close, related, show him&nbsp; love even as he takes time to figure things out properly.&nbsp;</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: ok, pastor</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: Can we pray over it before you leave my\r\n    office (Prayer was offered).</p>\r\n<p><br></p>\r\n<p>After one week:</p>\r\n<p><span style=\"font-weight: bolder;\">Pastor</span>: How is your relationship with Mario? Have\r\n    you had any discussion concern the issues?</p>\r\n<p><span style=\"font-weight: bolder;\">Ann</span>: Thank you pastor. Our relationship is very\r\n    good. Mario was actually expecting me to show more concern, care and love after what happened. We are happy\r\n    together.</p>\r\n<p><br></p>\r\n<p>In a relationship, we need to encourage our partner, and&nbsp; to be very supportive, stay\r\n    close, related, caring and loving even when a partner takes time to figure things out properly.</p>', 'divine-unmerited-favor.jpg', 'divine-unmerited-favor-lg.jpg', '2020-04-08');

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
  `meditation_id` int(11) NOT NULL,
  `meditation_title` varchar(150) NOT NULL,
  `meditation_author` varchar(150) NOT NULL,
  `meditation_body` longtext NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meditations`
--

INSERT INTO `meditations` (`meditation_id`, `meditation_title`, `meditation_author`, `meditation_body`, `datePosted`) VALUES
(28, 'Powerful Daily Confession August 2021', 'Emmanuel Atoe', '<p><strong>Galatians 3:13-14&nbsp;</strong><strong>New International Version (NIV)</strong></p><p><em>&ldquo;Christ redeemed us from the curse of the law by becoming a curse for us, for it is written: &ldquo;Cursed is everyone who is hung on a pole. He redeemed us in order that the blessing given to Abraham might come to the Gentiles through Christ Jesus, so that by faith we might receive the promise of the Spirit.&rdquo;</em></p><p>&nbsp;</p><p><strong>Ephesians 1:17-23 New International Version (NIV)</strong></p><p><em>&ldquo;I keep asking that the God of our Lord Jesus Christ, the glorious Father, may give you the Spirit of wisdom and revelation, so that you may know him better.</em><em>&nbsp;I pray that the eyes of your heart may be enlightened in order that you may know the hope to which he has called you, the riches of his glorious inheritance in his holy people, and his incomparably great power for us who believe. That power is the same as the mighty strength. &nbsp;he exerted when he raised Christ from the dead and seated him at his right hand in the heavenly realms, far above all rule and authority, power and dominion, and every name that is invoked, not only in the present age but also in the one to come. &nbsp;And God placed all things under his feet and appointed him to be head over everything for the church, which is his body, the fullness of him who fills everything in every way.&rdquo;</em></p><p>&nbsp;</p><p><strong>Ephesians 3:14-21 New International Version (NIV)</strong></p><p><em>&ldquo;For this reason, I kneel before the Father,</em><em>&nbsp;from whom every family in heaven and on earth derives its name. I pray that out of his glorious riches he may strengthen you with power through his Spirit in your inner being, so that Christ may dwell in your hearts through faith. And I pray that you, being rooted and established in love, may have power, together with all the Lord&rsquo;s holy people, to grasp how wide and long and high and deep is the love of Christ, and to know this love that surpasses knowledge&mdash;that you may be filled to the measure of all the fullness of God. Now to him who is able to do immeasurably more than all we ask or imagine, according to his power that is at work within us, <sup>to</sup> him be glory in the church and in Christ Jesus throughout all generations, for ever and ever! Amen.&rdquo;</em></p><p><strong>&nbsp;</strong></p><p><strong>Philippians 1:3-6, 9-11&nbsp;</strong><strong>New International Version</strong><strong>&nbsp;(NIV)</strong></p><p><em>&ldquo;I thank my God every time I remember you.</em><em>&nbsp;</em><em>In all my prayers for all of you, I always pray with joy.</em><em>&nbsp;</em><em>because of your partnership in the gospel from the first day until now,</em><em>&nbsp;</em><em>being confident of this, that he who began a good work in you will carry it on to completion until the day of Christ Jesus.</em><em>&nbsp;</em><em>And this is my prayer: that your love may abound more and more in knowledge and depth of insight,</em><em>&nbsp;</em><em>so that you may be able to discern what is best and may be pure and blameless for the day of Christ,</em><em>&nbsp;</em><em>filled with the fruit of righteousness that comes through Jesus Christ&mdash;to the glory and praise of God.&rdquo;</em></p><p>&nbsp;</p><p><strong>1 Thessalonians 5:23-28 King James Version (KJV)</strong></p><p><em>&ldquo;And the very God of peace sanctify you wholly; and I pray God your whole spirit and soul and body be preserved blameless unto the coming of our Lord Jesus Christ. Faithful is he that calleth you, who also will do it. Brethren pray for us. Greet all the brethren with an holy kiss. I charge you by the Lord that this epistle be read unto all the holy brethren. The grace of our Lord Jesus Christ be with you. Amen.&rdquo;</em></p><p><br></p><p><strong>2 Thessalonians 1:11-12 King James Version (KJV)</strong></p><p><em>&ldquo;Wherefore also we pray always for you, that our God would count you worthy of this calling, and fulfil all the good pleasure of his goodness, and the work of faith with power: That the name of our Lord Jesus Christ may be glorified in you, and ye in him, according to the grace of our God and the Lord Jesus Christ.&rdquo;</em></p><p><em>&nbsp;</em></p><p><strong>2 Thessalonians 3:18 King James Version (KJV)</strong></p><p><em><sup>&ldquo;</sup></em><em>The grace of our Lord Jesus Christ be with you all.&rdquo;&nbsp;</em><em>Amen</em></p>', '2021-07-26'),
(29, 'Blessed To Be Blessing', 'Emmanuel Atoe', '<p>Ephesians 1:3 (NIV) <em>&ldquo;Praise be to the God and Father of our Lord Jesus Christ,&nbsp;who has blessed us in the heavenly realms&nbsp;with every spiritual blessing in Christ.&rdquo;</em></p><p>How many of you have your bibles with you?&nbsp;</p><p>Raise it high, kiss it and let&rsquo;s give glory to the almighty Father.&nbsp;</p><p>&nbsp;</p><p>Then make this declaration:&nbsp;</p><ul type=\"square\"><li>You are blessed to be a blessing</li><li>I am blessed to be a blessing.&nbsp;</li><li>Thank God, we&rsquo;re blessed to be a blessing.&nbsp;</li></ul><p>&nbsp; &nbsp;</p><p>Genesis 12:1-3 (NIV) <em>&ldquo;The Lord had said to Abram, &ldquo;Go from your country, your people and your father&rsquo;s household to the land I will show you. I will make you into a great nation, and I will bless you; I will make your name great, and you will be a blessing. &nbsp;I will bless those who bless you, and whoever curses you I will curse; and all peoples on earth will be blessed through you.&rdquo;</em></p><p>Romans 8:16-17 (NIV) <em>&ldquo;The Spirit himself testifies with our spirit that we are God&rsquo;s children. Now if we are children, then we are heirs - heirs of God and co-heirs with Christ, if indeed we share in his sufferings in order that we may also share in his glory.&rdquo;&nbsp;</em>When you were born again, God is our Father. As Christian, we have become children of God, then we are according to Roman 8:17 (NIV) heirs of God and co-heirs with Christ.</p><p>What we are:</p><ul type=\"square\"><li>We are children of the almighty God. &nbsp;</li><li>Through the blood of Jesus, we are heirs of God&nbsp;</li><li>We are co-heirs with Christ</li><li>God has given us exceedingly great and precious promises by which to share His nature.&nbsp;</li><li>We are free from condemnation.&nbsp;</li><li>We are new creation in Christ.&nbsp;</li><li>We are loved.&nbsp;</li><li>We are accepted.&nbsp;</li><li>We are united with God and one spirit with Him.&nbsp;</li><li>We are temple of God.&nbsp;</li><li>God&rsquo;s Spirit dwells in us.&nbsp;</li><li>We are redeemed&nbsp;</li><li>We are complete in Jesus Christ.&nbsp;</li><li>We are Gods co-worker.&nbsp;</li><li>We have direct access to God&nbsp;</li><li>God is working in us to do His will.&nbsp;</li></ul><p>John 1:12, 2 Peter 1:4, Romans 8:1, 2 Corinthians 5:17, 1 John 3:3, Ephesians 1:6, 1 Corinthians 6:17, 1 Corinthians 6:19, Colossians 1:14, Colossians 2:10, 2 Corinthians 6:1, Ephesians. 2:18, Philippians 2:13&nbsp;</p><p>&nbsp;</p><p>What we are not:</p><ul type=\"square\"><li>We are not cursed,&nbsp;</li><li>We are not people without identity,&nbsp;</li><li>We are not people that are wandering aimlessly through a land looking for some unknown destination.&nbsp;</li><li>We are not orphan</li><li>We are not lost</li><li>We are not hopeless</li></ul><p>&nbsp;</p><p>Deuteronomy 28:1-13</p><p>Do you know you&rsquo;re blessed? &nbsp;</p><p>You&rsquo;re blessed and you&rsquo;re a blessing. You must believe it deep-down in your in your spirit. It is very essential that you see yourself as God sees you. God has called you to be a blessing. Although some born-again are not walking in the light of God&rsquo;s calling and blessings.&nbsp;</p><p>Blessings for Obedience:</p><ul type=\"square\"><li>Family</li><li>Dominion</li><li>Territoriali&nbsp;</li><li>Business/Work&nbsp;</li><li>Favor</li><li>Possession</li><li>Abundance</li><li>Prosperity&nbsp;</li><li>Victorious&nbsp;</li><li>Financial &nbsp;</li><li>Provision</li><li>Protection/Safety</li></ul><p>&nbsp;</p><p>Galatians 3:13-14 (NIV)&nbsp;</p><p><em>&ldquo;Christ redeemed us from the curse of the law by becoming a curse for us, for it is written: &ldquo;Cursed is everyone who is hung on a pole. H</em><em>e redeemed us in order that the blessing given to Abraham might come to the Gentiles through Christ Jesus, so that by faith we might receive the promise of the Spirit.</em></p><p><em>Do you know what belongs to you&rdquo;?</em>&nbsp;</p><p>&nbsp;</p><p>Although some born-again don&rsquo;t know what belong to them. You are in Christ Jesus. It is of utmost importance that you live your life fully as God intended and that you fulfil your destiny. The good news is that the more you agree with God about your identity in Christ, the more your behaviour will begin to reflect your God given identity. We must see ourselves the way God sees us and walk in the light of it. If we are in Christ and God has called us to be a blessing that means we are not only blessed but blessed to be a blessing.</p><p>&nbsp;</p><p>2 Peter 1:3&nbsp;(NIV)</p><p><em>&ldquo;His divine power&nbsp;has given us everything we need for a godly life through our knowledge of him&nbsp;who called us&nbsp;by his own glory and goodness.&rdquo;</em></p><ul><li>Christ is the head of the church (the body of Christ).</li><li>All that God has given to Jesus (The head) also belong to us the church (The body)</li><li>The Word of God says all things are yours &ndash; all of it, no exception. &nbsp;&nbsp;</li><li>Some Christians may feel unworthy to receive what belongs to them, but the Word is true, God is not a man that He should lie&nbsp;</li><li>How and what you feel cannot change the Word of God, because forever The Word of God is settled in Heaven&nbsp;</li><li>Time and season change but not The Word of God. Heaven and Earth may pass away but The Word is for ever</li><li>What belong to Jesus belong to every member of the Body of Christ.&nbsp;</li></ul><p>&nbsp;</p><p>When it come to the word of God the truth is, what you know is very important and doing or acting on what you know, matters even more.&nbsp;</p><ul><li>Acting on the word of God that abides in you is extremely important.</li><li>The spiritual laws are based on HEAR and TRUST and OBEY.</li></ul><p>&nbsp;</p><p>Come to God&rsquo;s Presence with praises:</p><p>Psalms:34.1 (NIV)</p><p><em>&ldquo;I will extol the Lord&nbsp;at all times;</em><em>&nbsp;his praise will always be on my lips.&rdquo;&nbsp;</em></p><ul><li>To speak well off - Praises. &nbsp;</li><li>To Celebrate with praise and worship the almighty God.</li><li>To acknowledge the goodness of God</li><li>To desire the glory of God through praises</li><li>To Consecrate with solemn prayer.&nbsp;</li><li>To empower to Prosper, full of gladness and to be giver of joy.</li><li>To prosper spiritually, physically, and materially</li></ul><p>&nbsp;</p><p><strong>TO BE CONTINUED NEXT MONTH</strong></p>', '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `newbooks`
--

CREATE TABLE `newbooks` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `book_author` varchar(150) NOT NULL,
  `book_image` varchar(150) NOT NULL,
  `book_description` longtext NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newbooks`
--

INSERT INTO `newbooks` (`book_id`, `book_title`, `book_author`, `book_image`, `book_description`, `date_added`) VALUES
(4, 'Wisdom for Your Best Life', 'Emmanuel Atoe', 'wisdom-for-your-best-life.jpg', 'God’s wisdom is an essential tool in the journey of every believer. The Bible contrasts wisdom from above, which seeks to please God and is fulfilling, from earthly wisdom, which is self-seeking and leads to ruin. The indispensability of wisdom is underscored by the biblical saying, “Wisdom is the principal thing” and “In all your getting, get wisdom.”\r\n\r\nIn “Wisdom for Your Best Life”, Dr Emmanuel Atoe reveals that those who follow God’s wisdom succeed in life and enjoy all-round fulfilment. He teaches you how to get divine wisdom, use it to reign in life and fulfil your destiny. Highly enriching, this book provides copious examples of the immense value of God’s wisdom as used by different characters in the Bible. Get God’s wisdom and reign in life! \r\n', '2021-07-18'),
(5, 'Building Healthy Relationships', 'Emmanuel Atoe', 'building-healthy-relationships.jpg', 'Relationships are what life is made of; we form them by what we do, how we do it, and what we represent. When God first made humanity, He formed relationships and created a good atmosphere for Adam and Eve to assist one another, but unfortunately, because of human sin, this became difficult. Relationships come in many different forms; however, this book focuses on promoting healthy couple relationships.\r\n\r\nWhen it comes to relationships, everyone has different perceptions, and they also react differently when facing challenges. Differences in lifestyle and exposure and even Christian homes can create relationship issues. Healthy relationships are fostered by properly addressing problems and conflicts in the proper manner. God\'s principle is that people should respond to their differences in a Biblical way and use their disagreements to promote growth and development. The primary factor is for the couple to cohabitate in love.', '2021-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `prayer_id` int(11) NOT NULL,
  `prayer_title` varchar(150) NOT NULL,
  `prayer_author` varchar(150) NOT NULL,
  `prayer_body` longtext NOT NULL,
  `datePosted` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`prayer_id`, `prayer_title`, `prayer_author`, `prayer_body`, `datePosted`) VALUES
(19, 'Prayers for July', 'Emmanuel Atoe', '<div style=\"text-align: center; \">Listen to my prayer, O God, do not ignore my plea; hear me and answer me. Evening, morning, and noon I cry out in distress, and he hears my voice - Psalm 55:1, 2, 17. (NIV)</div><div style=\"text-align: center; \"><br></div><ol><li>Almighty God, by your power add more people into the church with your character, in the name of Jesus.</li><li>Every enemy of salvation in the body of Christ, be frustrated, in the name of Jesus.</li><li>Heavenly father, empower me to be an agent of multiplication in the church, in the name of Jesus.&nbsp;</li><li>Blood of Jesus, speak against every enemy of church growth, in the name of Jesus.</li><li>Ancient of days, deliver me from blocking your plan and purpose in the body of Christ, in the name of Jesus.</li><li>By the anointing that break every yoke, I destroy every property of the devil against church growth, in the name of Jesus.</li><li>Every organized darkness fighting against church growth, be disorganized, in the name of Jesus.</li><li>Father Lord, restore your lost love, care and concern for each other in this church, in the name of Jesus.</li><li>Anointing for divine unity, fall upon every member of this church, in the name of Jesus.</li><li>I command every member of this church to be truly born again by the power of God, in the name of Jesus.&nbsp;</li><li>Let the grace and anointing to be sanctified fall upon every member of this church, in the name of Jesus.</li><li>Ancient of days, help every member of this church to engage in evangelism and visitation, in the name of Jesus.</li><li>Father Lord, arise in your power and increase the members of this church, in the name of Jesus.</li><li>Every property of the devil in the foundation of this church, catch fire and burn to ashes, in the mighty name of Jesus.</li></ol>', '2021-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `progressbooks`
--

CREATE TABLE `progressbooks` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(150) NOT NULL,
  `book_author` varchar(150) NOT NULL,
  `book_image` varchar(150) NOT NULL,
  `book_description` longtext NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD PRIMARY KEY (`counsel_id`);

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
  ADD PRIMARY KEY (`meditation_id`);

--
-- Indexes for table `newbooks`
--
ALTER TABLE `newbooks`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`prayer_id`);

--
-- Indexes for table `progressbooks`
--
ALTER TABLE `progressbooks`
  ADD PRIMARY KEY (`book_id`);

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
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counselling`
--
ALTER TABLE `counselling`
  MODIFY `counsel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `devotions`
--
ALTER TABLE `devotions`
  MODIFY `devotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `freebooks`
--
ALTER TABLE `freebooks`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meditations`
--
ALTER TABLE `meditations`
  MODIFY `meditation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `newbooks`
--
ALTER TABLE `newbooks`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `prayer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `progressbooks`
--
ALTER TABLE `progressbooks`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;
