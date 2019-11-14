-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 11:39 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `quantity`, `publisher`, `isbn`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Java Generics', 'Maurice Naftalin', 1, 'O\'Reilly Media', '9780596527754', 'https://images-na.ssl-images-amazon.com/images/I/51Jklhlz7ML._SX387_BO1,204,203,200_.jpg', 5, '2019-04-19 20:15:57', '2019-05-02 13:15:45'),
(2, 'Kawaii: How to Draw Really Cute Stuff: Draw Anything and Everything in the Cutest Style Ever! (Paperback)', 'Angela Nguyen', 16, 'Search Press Ltd', '9781782215752', 'https://cdn.waterstones.com/bookjackets/large/9781/7822/9781782215752.jpg', 1, '2019-02-13 23:49:10', '2019-04-24 21:35:06'),
(3, 'The Art Of Lent: A Painting A Day From Ash Wednesday To Easter (Paperback)', 'Sister Wendy Beckett', 10, 'SPCK Publishing', '9780281078554', 'https://cdn.waterstones.com/bookjackets/large/9780/2810/9780281078554.jpg', 1, '2019-02-13 23:49:11', '2019-02-13 23:49:11'),
(4, 'A Man and His Watch (Hardback)', 'Matthew Hranek', 10, 'Artisan', '9781579657147', 'https://cdn.waterstones.com/bookjackets/large/9781/5796/9781579657147.jpg', 1, '2019-02-13 23:49:13', '2019-02-13 23:49:13'),
(5, 'The Politics of Design: A (Not So) Global Design Manual for Visual Communication (Paperback)', 'Ruben Pater', 10, 'BIS Publishers B.V.', '9789063694227', 'https://cdn.waterstones.com/bookjackets/large/9789/0636/9789063694227.jpg', 1, '2019-02-13 23:49:14', '2019-04-05 10:24:03'),
(6, 'Polishing and Finishing for Jewellers and Silversmiths (Paperback)', 'Stephen M Goldsmith', 10, 'The Crowood Press Ltd', '9781785005237', 'https://cdn.waterstones.com/bookjackets/large/9781/7850/9781785005237.jpg', 1, '2019-02-13 23:49:16', '2019-02-13 23:49:16'),
(7, 'Botanicum Poster Book - Welcome To The Museum (Paperback)', 'Professor Katherine J. Willis', 10, 'Templar Publishing', '9781783706303', 'https://cdn.waterstones.com/bookjackets/large/9781/7837/9781783706303.jpg', 1, '2019-02-13 23:49:18', '2019-02-13 23:49:18'),
(8, 'Silversmithing for Jewellery Makers: Techniques, Treatments & Applications for Inspirational Design (Paperback)', 'Elizabeth Bone', 10, 'Search Press Ltd', '9781844487578', 'https://cdn.waterstones.com/bookjackets/large/9781/8444/9781844487578.jpg', 1, '2019-02-13 23:49:19', '2019-02-13 23:49:19'),
(9, 'Doreen Fletcher, Paintings (Hardback)', 'The Gentle Author', 11, 'Spitalfields Life Books', '9780995740143', 'https://cdn.waterstones.com/bookjackets/large/9780/9957/9780995740143.jpg', 1, '2019-02-13 23:49:20', '2019-04-26 14:53:50'),
(10, 'Framed Ink: Drawing and Composition for Visual Storytellers (Paperback)', 'Marcos Mateu-Mestre', 10, 'Design Studio Press', '9781933492957', 'https://cdn.waterstones.com/bookjackets/large/9781/9334/9781933492957.jpg', 1, '2019-02-13 23:49:21', '2019-02-13 23:49:21'),
(11, 'Mould Making for Glass - Glass Handbooks (Paperback)', 'Angela Thwaites', 10, 'Bloomsbury Publishing PLC', '9781408114339', 'https://cdn.waterstones.com/bookjackets/large/9781/4081/9781408114339.jpg', 1, '2019-02-13 23:49:22', '2019-02-13 23:49:22'),
(12, 'ANNI ALBERS (Paperback)', 'Ann Coxon', 10, 'Tate Publishing', '9781849765688', 'https://cdn.waterstones.com/bookjackets/large/9781/8497/9781849765688.jpg', 1, '2019-02-13 23:49:24', '2019-02-13 23:49:24'),
(13, 'Tattoo Tarot: Ink & Intuition:Ink & Intuition', 'Megamunden', 10, 'Laurence King Publishing', '9781786272058', 'https://cdn.waterstones.com/bookjackets/large/9781/7862/9781786272058.jpg', 1, '2019-02-13 23:49:25', '2019-02-13 23:49:25'),
(14, 'Pierre Bonnard: The Colour of Memory (Paperback)', 'Matthew Gale', 10, 'Tate Publishing', '9781849766166', 'https://cdn.waterstones.com/bookjackets/large/9781/8497/9781849766166.jpg', 1, '2019-02-13 23:49:26', '2019-02-13 23:49:26'),
(15, 'How to Draw: Drawing and Sketching Objects and Environments (Paperback)', 'Scott Robertson', 10, 'Design Studio Press', '9781933492735', 'https://cdn.waterstones.com/bookjackets/large/9781/9334/9781933492735.jpg', 1, '2019-02-13 23:49:28', '2019-02-13 23:49:28'),
(16, 'The Corfu Trilogy (Paperback)', 'Gerald Durrell', 10, 'Penguin Books Ltd', '9780141028415', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141028415.jpg', 2, '2019-02-13 23:59:02', '2019-02-13 23:59:02'),
(17, 'The Jewel Garden (Paperback)', 'Monty Don', 10, 'Hodder & Stoughton General Division', '9780340826720', 'https://cdn.waterstones.com/bookjackets/large/9780/3408/9780340826720.jpg', 2, '2019-02-13 23:59:03', '2019-02-13 23:59:03'),
(18, 'The Shepherd\'s Life: A Tale of the Lake District (Paperback)', 'James Rebanks', 10, 'Penguin Books Ltd', '9780141979366', 'https://cdn.waterstones.com/bookjackets/large/9780/1419/9780141979366.jpg', 2, '2019-02-13 23:59:04', '2019-02-13 23:59:04'),
(19, 'First Light - The Centenary Collection (Paperback)', 'Geoffrey Wellum', 10, 'Penguin Books Ltd', '9780141042756', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141042756.jpg', 2, '2019-02-13 23:59:05', '2019-02-13 23:59:05'),
(20, 'Bohemian Rhapsody: The Definitive Biography of Freddie Mercury (Paperback)', 'Lesley-Ann Jones', 10, 'Hodder & Stoughton General Division', '9781444733693', 'https://cdn.waterstones.com/bookjackets/large/9781/4447/9781444733693.jpg', 2, '2019-02-13 23:59:06', '2019-02-13 23:59:06'),
(21, 'Mr Pizza and All That Jazz (Paperback)', 'Johnson Luke (Foreward by) Boizot Peter', 10, 'Large Things Ltd', '9780993011221', 'https://cdn.waterstones.com/bookjackets/large/9780/9930/9780993011221.jpg', 2, '2019-02-13 23:59:08', '2019-02-13 23:59:08'),
(22, 'Titan: The Life of John D. Rockefeller, Sr. (Paperback)', 'Ron Chernow', 10, 'Random House USA Inc', '9781400077304', 'https://cdn.waterstones.com/bookjackets/large/9781/4000/9781400077304.jpg', 2, '2019-02-13 23:59:10', '2019-02-13 23:59:10'),
(23, 'Good Night Stories for Rebel Girls (Hardback)', 'Elena Favilli', 10, 'Penguin Books Ltd', '9780141986005', 'https://cdn.waterstones.com/bookjackets/large/9780/1419/9780141986005.jpg', 2, '2019-02-13 23:59:11', '2019-02-13 23:59:11'),
(24, 'Becoming (Hardback)', 'Michelle Obama', 10, 'Penguin Books Ltd', '9780241334140', 'https://cdn.waterstones.com/override/v4/large/9780/2413/9780241334140.jpg', 2, '2019-02-13 23:59:12', '2019-02-13 23:59:12'),
(25, 'The Boy Who Followed His Father into Auschwitz (Hardback)', 'Jeremy Dronfield', 10, 'Penguin Books Ltd', '9780241359198', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241359198.jpg', 2, '2019-02-13 23:59:13', '2019-02-13 23:59:13'),
(26, 'Dear Scott, Dearest Zelda: The Love Letters of F.Scott and Zelda Fitzgerald (Paperback)', 'F. Scott Fitzgerald', 10, 'Bloomsbury Publishing PLC', '9780747566014', 'https://cdn.waterstones.com/bookjackets/large/9780/7475/9780747566014.jpg', 2, '2019-02-13 23:59:15', '2019-02-13 23:59:15'),
(27, 'Dancing with Elephants: Mindfulness Training for Those Living with Dementia, Chronic Illness or an Aging Brain - How to Die Smiling 1 (Paperback)', 'Jarem Sawatsky', 10, 'Red Canoe Press', '9780995324206', 'https://cdn.waterstones.com/bookjackets/large/9780/9953/9780995324206.jpg', 2, '2019-02-13 23:59:17', '2019-02-13 23:59:17'),
(28, 'The Unknown Kimi Raikkonen (Hardback)', 'Kari Hotakainen', 10, 'Simon & Schuster Ltd', '9781471177668', 'https://cdn.waterstones.com/bookjackets/large/9781/4711/9781471177668.jpg', 2, '2019-02-13 23:59:18', '2019-02-13 23:59:18'),
(29, 'A Field Guide to the English Clergy: A Compendium of Diverse Eccentrics, Pirates, Prelates and Adventurers; All Anglican, Some Even Practising (Hardback)', 'The Revd Fergus Butler-Gallie', 10, 'Oneworld Publications', '9781786074416', 'https://cdn.waterstones.com/bookjackets/large/9781/7860/9781786074416.jpg', 2, '2019-02-13 23:59:20', '2019-02-13 23:59:20'),
(30, 'Mentors: How to Help and be Helped (Hardback)', 'Russell Brand', 10, 'Pan Macmillan', '9781509850884', 'https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509850884.jpg', 2, '2019-02-13 23:59:21', '2019-02-13 23:59:21'),
(31, 'Stairways to Heaven (Paperback)', 'Lorna Byrne', 10, 'Hodder & Stoughton General Division', '9781444706604', 'https://cdn.waterstones.com/bookjackets/large/9781/4447/9781444706604.jpg', 2, '2019-02-13 23:59:22', '2019-02-13 23:59:22'),
(32, 'Unspoken: Gary Speed: The Family\'s Untold Story (Hardback)', 'John Richardson', 10, 'Trinity Mirror Sport Media', '9781910335932', 'https://cdn.waterstones.com/bookjackets/large/9781/9103/9781910335932.jpg', 2, '2019-02-13 23:59:25', '2019-02-13 23:59:25'),
(33, 'Cole and Sav: Our Surprising Love Story (Hardback)', 'Cole Labrant', 10, 'Thomas Nelson Publishers', '9780785222903', 'https://cdn.waterstones.com/bookjackets/large/9780/7852/9780785222903.jpg', 2, '2019-02-13 23:59:26', '2019-02-13 23:59:26'),
(34, 'The One Thing: The Surprisingly Simple Truth Behind Extraordinary Results: Achieve your goals with one of the world\'s bestselling success books (Paperback)', 'Gary Keller', 10, 'Hodder & Stoughton General Division', '9781848549258', 'https://cdn.waterstones.com/bookjackets/large/9781/8485/9781848549258.jpg', 3, '2019-02-14 00:00:13', '2019-02-14 00:00:13'),
(35, 'Turn The Ship Around!: A True Story of Building Leaders by Breaking the Rules (Paperback)', 'L. David Marquet', 10, 'Penguin Books Ltd', '9780241250945', 'https://cdn.waterstones.com/bookjackets/large/9780/2412/9780241250945.jpg', 3, '2019-02-14 00:00:15', '2019-02-14 00:00:15'),
(36, 'The Obstacle is the Way: The Ancient Art of Turning Adversity to Advantage (Paperback)', 'Ryan Holiday', 10, 'Profile Books Ltd', '9781781251492', 'https://cdn.waterstones.com/override/v1/large/9781/7812/9781781251492.jpg', 3, '2019-02-14 00:00:16', '2019-02-14 00:00:16'),
(37, 'The Go-Giver: A Little Story About a Powerful Business Idea (Paperback)', 'Bob Burg', 10, 'Penguin Books Ltd', '9780241976272', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241976272.jpg', 3, '2019-02-14 00:00:17', '2019-02-14 00:00:17'),
(38, 'Strengths Based Leadership: Great Leaders, Teams, and Why People Follow (Hardback)', 'Tom Rath', 10, 'Gallup Press', '9781595620255', 'https://cdn.waterstones.com/bookjackets/large/9781/5956/9781595620255.jpg', 3, '2019-02-14 00:00:18', '2019-02-14 00:00:18'),
(39, 'How to Win Friends and Influence People (Paperback)', 'Dale Carnegie', 10, 'Ebury Publishing', '9780091906818', 'https://cdn.waterstones.com/bookjackets/large/9780/0919/9780091906818.jpg', 3, '2019-02-14 00:00:19', '2019-02-14 00:00:19'),
(40, 'Unshakeable: Your Guide to Financial Freedom (Paperback)', 'Tony Robbins', 10, 'Simon & Schuster Ltd', '9781471164934', 'https://cdn.waterstones.com/bookjackets/large/9781/4711/9781471164934.jpg', 3, '2019-02-14 00:00:20', '2019-02-14 00:00:20'),
(41, 'The New One Minute Manager - The One Minute Manager (Paperback)', 'Kenneth Blanchard', 10, 'HarperCollins Publishers', '9780008128043', 'https://cdn.waterstones.com/bookjackets/large/9780/0081/9780008128043.jpg', 3, '2019-02-14 00:00:21', '2019-02-14 00:00:21'),
(42, 'Deep Work: Rules for Focused Success in a Distracted World (Paperback)', 'Cal Newport', 10, 'Little, Brown Book Group', '9780349411903', 'https://cdn.waterstones.com/bookjackets/large/9780/3494/9780349411903.jpg', 3, '2019-02-14 00:00:22', '2019-02-14 00:00:22'),
(43, 'Raving Fans! - The One Minute Manager (Paperback)', 'Kenneth Blanchard', 10, 'HarperCollins Publishers', '9780006530695', 'https://cdn.waterstones.com/bookjackets/large/9780/0065/9780006530695.jpg', 3, '2019-02-14 00:00:23', '2019-02-14 00:00:23'),
(44, 'Black Box Thinking: Marginal Gains and the Secrets of High Performance (Paperback)', 'Matthew Syed', 10, 'Hodder & Stoughton General Division', '9781473613805', 'https://cdn.waterstones.com/bookjackets/large/9781/4736/9781473613805.jpg', 3, '2019-02-14 00:00:25', '2019-02-14 00:00:25'),
(45, 'Legacy (Paperback)', 'James Kerr', 10, 'Little, Brown Book Group', '9781472103536', 'https://cdn.waterstones.com/bookjackets/large/9781/4721/9781472103536.jpg', 3, '2019-02-14 00:00:26', '2019-02-14 00:00:26'),
(46, 'The Concise Mastery - The Robert Greene Collection (Paperback)', 'Robert Greene', 10, 'Profile Books Ltd', '9781846681561', 'https://cdn.waterstones.com/bookjackets/large/9781/8466/9781846681561.jpg', 3, '2019-02-14 00:00:27', '2019-02-14 00:00:27'),
(47, 'Lean In: Women, Work, and the Will to Lead (Paperback)', 'Sheryl Sandberg', 10, 'Ebury Publishing', '9780753541647', 'https://cdn.waterstones.com/override/v1/large/9780/7535/9780753541647.jpg', 3, '2019-02-14 00:00:28', '2019-02-14 00:00:28'),
(48, 'Coaching Habit (Hardback)', 'Michael Bungay Stanier', 10, 'Box of Crayons', '9780978440749', 'https://cdn.waterstones.com/bookjackets/large/9780/9784/9780978440749.jpg', 3, '2019-02-14 00:00:29', '2019-02-14 00:00:29'),
(49, 'Our Iceberg is Melting: Changing and Succeeding Under Any Conditions (Hardback)', 'John Kotter', 10, 'Pan Macmillan', '9781447263272', 'https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509830114.jpg', 3, '2019-02-14 00:00:30', '2019-02-14 00:00:30'),
(50, 'Do Open: How A Simple Newsletter Can Grow Your Business (and it Can) (Paperback)', 'David Hieatt', 10, 'The Do Book Co', '9781907974304', 'https://cdn.waterstones.com/bookjackets/large/9781/9079/9781907974304.jpg', 3, '2019-02-14 00:00:31', '2019-02-14 00:00:31'),
(51, 'The Rule of Law (Paperback)', 'Tom Bingham', 10, 'Penguin Books Ltd', '9780141034539', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141034539.jpg', 4, '2019-02-14 00:01:26', '2019-02-14 00:01:26'),
(52, 'The Climb: The Autobiography (Paperback)', 'Chris Froome', 10, 'Penguin Books Ltd', '9780241969427', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241969427.jpg', 4, '2019-02-14 00:01:27', '2019-02-14 00:01:27'),
(53, 'I Let Him Go (Paperback)', 'Denise Fergus', 10, 'Bonnier Books Ltd', '9781788700351', 'https://cdn.waterstones.com/bookjackets/large/9781/7887/9781788700351.jpg', 4, '2019-02-14 00:01:28', '2019-02-14 00:01:28'),
(54, 'Work Like a Woman: A Manifesto For Change (Hardback)', 'Mary Portas', 10, 'Transworld Publishers Ltd', '9780593079980', 'https://cdn.waterstones.com/bookjackets/large/9780/5930/9780593079980.jpg', 4, '2019-02-14 00:01:30', '2019-02-14 00:01:30'),
(55, 'I Am Malala: How One Girl Stood Up for Education and Changed the World (Paperback)', 'Malala Yousafzai', 10, 'Orion Publishing Co', '9781780622163', 'https://cdn.waterstones.com/bookjackets/large/9781/7806/9781780622163.jpg', 4, '2019-02-14 00:01:31', '2019-02-14 00:01:31'),
(56, 'Equity and Trusts (Paperback)', 'Alastair Hudson', 10, 'Taylor & Francis Ltd', '9781138122598', 'https://cdn.waterstones.com/bookjackets/large/9781/1381/9781138122598.jpg', 4, '2019-02-14 00:01:34', '2019-02-14 00:01:34'),
(57, 'Law for Social Workers (Paperback)', 'Helen Carr', 10, 'Oxford University Press', '9780198783459', 'https://cdn.waterstones.com/bookjackets/large/9780/1987/9780198783459.jpg', 4, '2019-02-14 00:01:37', '2019-02-14 00:01:37'),
(58, 'The Secret Barrister: Stories of the Law and How It\'s Broken (Hardback)', 'The Secret Barrister', 10, 'Pan Macmillan', '9781509841103', 'https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509841103.jpg', 4, '2019-02-14 00:01:38', '2019-02-14 00:01:38'),
(59, 'Prosperity: Better Business Makes the Greater Good (Hardback)', 'Colin Mayer', 10, 'Oxford University Press', '9780198824008', 'https://cdn.waterstones.com/bookjackets/large/9780/1988/9780198824008.jpg', 4, '2019-02-14 00:01:39', '2019-02-14 00:01:39'),
(60, 'Disorder in the Court: Great Fractured Moments in Courtroom History (Paperback)', 'Charles M. Sevilla', 10, 'WW Norton & Co', '9780393319286', 'https://cdn.waterstones.com/bookjackets/large/9780/3933/9780393319286.jpg', 4, '2019-02-14 00:01:41', '2019-02-14 00:01:41'),
(61, 'The Modern Law of Evidence (Paperback)', 'Adrian Keane', 10, 'Oxford University Press', '9780198811855', 'https://cdn.waterstones.com/bookjackets/large/9780/1988/9780198811855.jpg', 4, '2019-02-14 00:01:43', '2019-02-14 00:01:43'),
(62, 'The Field Guide to Understanding \'Human Error\' (Paperback)', 'Professor Sidney Dekker', 10, 'Taylor & Francis Ltd', '9781472439055', 'https://cdn.waterstones.com/bookjackets/large/9781/4724/9781472439055.jpg', 4, '2019-02-14 00:01:44', '2019-02-14 00:01:44'),
(63, 'Last Will & Testament Form Pack: How to Create a Legally Valid Will without a Solicitor in England, Wales and Northern Ireland', 'Eason Rajah', 10, 'Lawpack Publishing Ltd', '9781909104327', 'https://cdn.waterstones.com/bookjackets/large/9781/9091/9781909104327.jpg', 4, '2019-02-14 00:01:46', '2019-02-14 00:01:46'),
(64, 'The Illustrator\'s Guide to Law and Business Practice (Paperback)', 'Simon Stern', 10, 'Association of Illustrators', '9780955807602', 'https://cdn.waterstones.com/bookjackets/large/9780/9558/9780955807602.jpg', 4, '2019-02-14 00:01:48', '2019-02-14 00:01:48'),
(65, 'Managing Humans: Biting and Humorous Tales of a Software Engineering Manager (Paperback)', 'Michael Lopp', 10, 'APress', '9781484221570', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484221570.jpg', 5, '2019-02-14 00:02:13', '2019-02-14 00:02:13'),
(66, 'Mastering Microsoft Teams: End User Guide to Practical Usage, Collaboration, and Governance (Paperback)', 'Melissa Hubbard', 10, 'APress', '9781484236697', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484236697.jpg', 5, '2019-02-14 00:02:14', '2019-02-14 00:02:14'),
(67, 'Quantum Computing: A Gentle Introduction - Scientific and Engineering Computation (Paperback)', 'Eleanor G. Rieffel', 10, 'MIT Press Ltd', '9780262526678', 'https://cdn.waterstones.com/bookjackets/large/9780/2625/9780262526678.jpg', 5, '2019-02-14 00:02:15', '2019-02-14 00:02:15'),
(68, 'Introduction to the Theory of Complex Systems (Hardback)', 'Stefan Thurner', 10, 'Oxford University Press', '9780198821939', 'https://cdn.waterstones.com/bookjackets/large/9780/1988/9780198821939.jpg', 5, '2019-02-14 00:02:16', '2019-02-14 00:02:16'),
(69, 'Modern Recording Techniques - Audio Engineering Society Presents (Paperback)', 'David Miles Huber', 10, 'Taylor & Francis Ltd', '9781138954373', 'https://cdn.waterstones.com/bookjackets/large/9781/1389/9781138954373.jpg', 5, '2019-02-14 00:02:18', '2019-02-14 00:02:18'),
(70, 'ITIL Practitioner Guidance (Paperback)', 'Axelos', 10, 'TSO', '9780113314874', 'https://cdn.waterstones.com/bookjackets/large/9780/1133/9780113314874.jpg', 5, '2019-02-14 00:02:19', '2019-02-14 00:02:19'),
(71, 'Mixing Secrets for the Small Studio - Sound On Sound Presents... (Paperback)', 'Mike Senior', 10, 'Taylor & Francis Ltd', '9781138556379', 'https://cdn.waterstones.com/bookjackets/large/9781/1385/9781138556379.jpg', 5, '2019-02-14 00:02:21', '2019-02-14 00:02:21'),
(72, 'Collect, Combine, and Transform Data Using Power Query in Excel and Power (Paperback)', 'Gil Raviv', 10, 'Microsoft Press,U.S.', '9781509307951', 'https://cdn.waterstones.com/bookjackets/large/9781/5093/9781509307951.jpg', 5, '2019-02-14 00:02:22', '2019-02-14 00:02:22'),
(73, 'Beginning Robotics with Raspberry Pi and Arduino: Using Python and OpenCV (Paperback)', 'Jeff Cicolani', 10, 'APress', '9781484234617', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484234617.jpg', 5, '2019-02-14 00:02:23', '2019-02-14 00:02:23'),
(74, 'OCR AS and A Level Computer Science (Paperback)', 'P. M. Heathcote', 10, 'PG Online Limited', '9781910523056', 'https://cdn.waterstones.com/bookjackets/large/9781/9105/9781910523056.jpg', 5, '2019-02-14 00:02:24', '2019-02-14 00:02:24'),
(75, 'Docker: Up & Running: Shipping Reliable Containers in Production (Paperback)', 'Sean P Kane', 10, 'O\'Reilly Media, Inc, USA', '9781492036739', 'https://cdn.waterstones.com/bookjackets/large/9781/4920/9781492036739.jpg', 5, '2019-02-14 00:02:25', '2019-02-14 00:02:25'),
(76, 'Blood, Sweat, and Pixels: The Triumphant, Turbulent Stories Behind How Video Games Are Made (Paperback)', 'Jason Schreier', 10, 'HarperCollins Publishers Inc', '9780062651235', 'https://cdn.waterstones.com/bookjackets/large/9780/0626/9780062651235.jpg', 5, '2019-02-14 00:02:26', '2019-02-14 00:02:26'),
(77, 'Weapons of Math Destruction: How Big Data Increases Inequality and Threatens Democracy (Paperback)', 'Cathy O\'Neil', 10, 'Penguin Books Ltd', '9780141985411', 'https://cdn.waterstones.com/bookjackets/large/9780/1419/9780141985411.jpg', 5, '2019-02-14 00:02:27', '2019-02-14 00:02:27'),
(78, 'Writing for Computer Science (Paperback)', 'Justin Zobel', 10, 'Springer London Ltd', '9781447166382', 'https://cdn.waterstones.com/bookjackets/large/9781/4471/9781447166382.jpg', 5, '2019-02-14 00:02:28', '2019-02-14 00:02:28'),
(79, 'Minds, Brains, Computers: An Historical Introduction to the Foundations of Cognitive Science (Paperback)', 'Robert M. Harnish', 10, 'John Wiley and Sons Ltd', '9780631212607', 'https://cdn.waterstones.com/bookjackets/large/9780/6312/9780631212607.jpg', 5, '2019-02-14 00:02:29', '2019-02-14 00:02:29'),
(80, 'R for Data Science (Paperback)', 'Garrett Grolemund', 10, 'O\'Reilly Media, Inc, USA', '9781491910399', 'https://cdn.waterstones.com/bookjackets/large/9781/4919/9781491910399.jpg', 5, '2019-02-14 00:02:31', '2019-02-14 00:02:31'),
(81, 'JUNOS Enterprise Switching (Paperback)', 'Harry Reynolds', 10, 'O\'Reilly Media, Inc, USA', '9780596153977', 'https://cdn.waterstones.com/bookjackets/large/9780/5961/9780596153977.jpg', 5, '2019-02-14 00:02:31', '2019-02-14 00:02:31'),
(82, 'Mixing Audio: Concepts, Practices, and Tools (Paperback)', 'Roey Izhaki', 10, 'Taylor & Francis Ltd', '9781138859784', 'https://cdn.waterstones.com/bookjackets/large/9781/1388/9781138859784.jpg', 5, '2019-02-14 00:02:32', '2019-02-14 00:02:32'),
(83, 'The New Rules: The dating dos and don\'ts for the digital generation from the bestselling authors of The Rules (Paperback)', 'Ellen Fein', 10, 'Little, Brown Book Group', '9780749957247', 'https://cdn.waterstones.com/bookjackets/large/9780/7499/9780749957247.jpg', 6, '2019-02-14 00:03:09', '2019-02-14 00:03:09'),
(84, 'Managing Humans: Biting and Humorous Tales of a Software Engineering Manager (Paperback)', 'Michael Lopp', 10, 'APress', '9781484221570', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484221570.jpg', 6, '2019-02-14 00:03:10', '2019-02-14 00:03:10'),
(85, 'Get Coding! Learn HTML, CSS, and JavaScript and Build a Website, App, and Game (Paperback)', 'Young Rewired State', 10, 'Walker Books Ltd', '9781406366846', 'https://cdn.waterstones.com/bookjackets/large/9781/4063/9781406366846.jpg', 6, '2019-02-14 00:03:11', '2019-02-14 00:03:11'),
(86, 'iGen: Why Today\'s Super-Connected Kids Are Growing Up Less Rebellious, More Tolerant, Less Happy--and Completely Unprepared for Adulthood--and What That Means for the Rest of Us (Paperback)', 'Jean M. Twenge', 10, 'Atria Books', '9781501152016', 'https://cdn.waterstones.com/bookjackets/large/9781/5011/9781501152016.jpg', 6, '2019-02-14 00:03:12', '2019-02-14 00:03:12'),
(87, 'The Second Quantum Revolution: From Entanglement to Quantum Computing and Other Super-Technologies (Paperback)', 'Lars Jaeger', 10, 'Copernicus Books', '9783319988238', 'https://cdn.waterstones.com/bookjackets/large/9783/3199/9783319988238.jpg', 6, '2019-02-14 00:03:13', '2019-02-14 00:03:13'),
(88, 'Ten Arguments For Deleting Your Social Media Accounts Right Now (Hardback)', 'Jaron Lanier', 10, 'Vintage Publishing', '9781847925398', 'https://cdn.waterstones.com/bookjackets/large/9781/8479/9781847925398.jpg', 6, '2019-02-14 00:03:15', '2019-02-14 00:03:15'),
(89, 'Writing for Computer Science (Paperback)', 'Justin Zobel', 10, 'Springer London Ltd', '9781447166382', 'https://cdn.waterstones.com/bookjackets/large/9781/4471/9781447166382.jpg', 6, '2019-02-14 00:03:16', '2019-02-14 00:03:16'),
(90, 'Digital Minimalism: On Living Better with Less Technology (Paperback)', 'Cal Newport', 10, 'Penguin Books Ltd', '9780241341131', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241341131.jpg', 6, '2019-02-14 00:03:16', '2019-02-14 00:03:16'),
(91, 'Digital Darwinism: Survival of the Fittest in the Age of Business Disruption - Kogan Page Inspire (Paperback)', 'Tom Goodwin', 10, 'Kogan Page Ltd', '9780749482282', 'https://cdn.waterstones.com/bookjackets/large/9780/7494/9780749482282.jpg', 6, '2019-02-14 00:03:17', '2019-02-14 00:03:17'),
(92, 'Practical Guide to Salesforce Communities: Building, Enhancing, and Managing an Online Community with Salesforce Community Cloud (Paperback)', 'Philip Weinmeister', 10, 'APress', '9781484236086', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484236086.jpg', 6, '2019-02-14 00:03:19', '2019-02-14 00:03:19'),
(93, 'The Annotated Turing: A Guided Tour Through Alan Turing\'s Historic Paper on Computability and the Turing Machine (Paperback)', 'Charles Petzold', 10, 'John Wiley and Sons Ltd', '9780470229057', 'https://cdn.waterstones.com/bookjackets/large/9780/4702/9780470229057.jpg', 6, '2019-02-14 00:03:20', '2019-02-14 00:03:20'),
(94, 'SEO For Dummies (Paperback)', 'Peter Kent', 10, 'John Wiley & Sons Inc', '9781119129554', 'https://cdn.waterstones.com/bookjackets/large/9781/1191/9781119129554.jpg', 6, '2019-02-14 00:03:21', '2019-02-14 00:03:21'),
(95, 'The Future of the Professions: How Technology Will Transform the Work of Human Experts (Paperback)', 'Daniel Susskind', 10, 'Oxford University Press', '9780198799078', 'https://cdn.waterstones.com/bookjackets/large/9780/1987/9780198799078.jpg', 6, '2019-02-14 00:03:21', '2019-02-14 00:03:21'),
(96, 'Data Science - MIT Press Essential Knowledge series (Paperback)', 'John D. Kelleher', 10, 'MIT Press Ltd', '9780262535434', 'https://cdn.waterstones.com/bookjackets/large/9780/2625/9780262535434.jpg', 6, '2019-02-14 00:03:22', '2019-02-14 00:03:22'),
(97, 'Streaming, Sharing, Stealing: Big Data and the Future of Entertainment - The MIT Press (Paperback)', 'Michael D. Smith', 10, 'MIT Press Ltd', '9780262534529', 'https://cdn.waterstones.com/bookjackets/large/9780/2625/9780262534529.jpg', 6, '2019-02-14 00:03:23', '2019-02-14 00:03:23'),
(98, 'Beginning C for Arduino, Second Edition: Learn C Programming for the Arduino (Paperback)', 'Jack J. Purdum', 10, 'APress', '9781484209417', 'https://cdn.waterstones.com/bookjackets/large/9781/4842/9781484209417.jpg', 6, '2019-02-14 00:03:24', '2019-02-14 00:03:24'),
(99, 'Fundamentals of Business Process Management (Hardback)', 'Marlon Dumas', 10, 'Springer-Verlag Berlin and Heidelberg GmbH & Co. KG', '9783662565087', 'https://cdn.waterstones.com/bookjackets/large/9783/6625/9783662565087.jpg', 6, '2019-02-14 00:03:26', '2019-02-14 00:03:26'),
(100, 'Blockchain and the Law: The Rule of Code (Hardback)', 'Primavera De Filippi', 10, 'Harvard University Press', '9780674976429', 'https://cdn.waterstones.com/bookjackets/large/9780/6749/9780674976429.jpg', 6, '2019-02-14 00:03:27', '2019-02-14 00:03:27'),
(101, 'An Introduction to Cyberpsychology (Paperback)', 'Irene Connolly', 10, 'Taylor & Francis Ltd', '9781138823792', 'https://cdn.waterstones.com/bookjackets/large/9781/1388/9781138823792.jpg', 6, '2019-02-14 00:03:30', '2019-02-14 00:03:30'),
(102, 'The One Thing: The Surprisingly Simple Truth Behind Extraordinary Results: Achieve your goals with one of the world\'s bestselling success books (Paperback)', 'Gary Keller', 10, 'Hodder & Stoughton General Division', '9781848549258', 'https://cdn.waterstones.com/bookjackets/large/9781/8485/9781848549258.jpg', 7, '2019-02-14 00:03:53', '2019-02-14 00:03:53'),
(103, 'The Body Keeps the Score: Mind, Brain and Body in the Transformation of Trauma (Paperback)', 'Bessel A. Van der Kolk', 10, 'Penguin Books Ltd', '9780141978611', 'https://cdn.waterstones.com/override/v1/large/9780/1419/9780141978611.jpg', 7, '2019-02-14 00:03:55', '2019-02-14 00:03:55'),
(104, 'Man\'s Search For Meaning: The classic tribute to hope from the Holocaust (With New Material) (Hardback)', 'Viktor E. Frankl', 10, 'Ebury Publishing', '9781846042843', 'https://cdn.waterstones.com/bookjackets/large/9781/8460/9781846042843.jpg', 7, '2019-02-14 00:03:56', '2019-02-14 00:03:56'),
(105, 'The Obstacle is the Way: The Ancient Art of Turning Adversity to Advantage (Paperback)', 'Ryan Holiday', 10, 'Profile Books Ltd', '9781781251492', 'https://cdn.waterstones.com/override/v1/large/9781/7812/9781781251492.jpg', 7, '2019-02-14 00:03:57', '2019-02-14 00:03:57'),
(106, 'The Life-Changing Magic of Tidying: A simple, effective way to banish clutter forever (Paperback)', 'Marie Kondo', 10, 'Ebury Publishing', '9780091955106', 'https://cdn.waterstones.com/bookjackets/large/9780/0919/9780091955106.jpg', 7, '2019-02-14 00:03:58', '2019-02-14 00:03:58'),
(107, 'Allen Carr\'s Easy Way to Stop Smoking: Read this book and you\'ll never smoke a cigarette again (Paperback)', 'Allen Carr', 10, 'Penguin Books Ltd', '9781405923316', 'https://cdn.waterstones.com/bookjackets/large/9781/4059/9781405923316.jpg', 7, '2019-02-14 00:03:59', '2019-02-14 00:03:59'),
(108, 'The Go-Giver: A Little Story About a Powerful Business Idea (Paperback)', 'Bob Burg', 10, 'Penguin Books Ltd', '9780241976272', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241976272.jpg', 7, '2019-02-14 00:04:00', '2019-02-14 00:04:00'),
(109, 'Love & Respect (Paperback)', 'Emerson Eggerichs', 10, 'Thomas Nelson Publishers', '9781591452461', 'https://cdn.waterstones.com/bookjackets/large/9781/5914/9781591452461.jpg', 7, '2019-02-14 00:04:01', '2019-02-14 00:04:01'),
(110, 'The Hidden Life of Trees (Paperback)', 'Peter Wohlleben', 10, 'HarperCollins Publishers', '9780008218430', 'https://cdn.waterstones.com/bookjackets/large/9780/0082/9780008218430.jpg', 7, '2019-02-14 00:04:03', '2019-02-14 00:04:03'),
(111, 'Bump to Birthday, Pregnancy & First Year Journal - Parent & Child (Hardback)', 'from you to me', 10, 'from you to me Limited', '9781907048418', 'https://cdn.waterstones.com/bookjackets/large/9781/9070/9781907048418.jpg', 7, '2019-02-14 00:04:04', '2019-02-14 00:04:04'),
(112, 'How to Win Friends and Influence People (Paperback)', 'Dale Carnegie', 10, 'Ebury Publishing', '9780091906818', 'https://cdn.waterstones.com/bookjackets/large/9780/0919/9780091906818.jpg', 7, '2019-02-14 00:04:04', '2019-02-14 00:04:04'),
(113, 'The Secret (Hardback)', 'Rhonda Byrne', 10, 'Simon & Schuster Ltd', '9781847370297', 'https://cdn.waterstones.com/bookjackets/large/9781/8473/9781847370297.jpg', 7, '2019-02-14 00:04:06', '2019-02-14 00:04:06'),
(114, 'The Things You Can See Only When You Slow Down: How to be Calm in a Busy World (Paperback)', 'Haemin Sunim', 10, 'Penguin Books Ltd', '9780241340660', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241340660.jpg', 7, '2019-02-14 00:04:07', '2019-02-14 00:04:07'),
(115, 'The Untethered Soul: The Journey Beyond Yourself (Paperback)', 'Michael A. Singer', 10, 'New Harbinger Publications', '9781572245372', 'https://cdn.waterstones.com/bookjackets/large/9781/5722/9781572245372.jpg', 7, '2019-02-14 00:04:08', '2019-02-14 00:04:08'),
(116, 'Man\'s Search For Meaning: The classic tribute to hope from the Holocaust (With New Material) (Hardback)', 'Viktor E. Frankl', 10, 'Ebury Publishing', '9781846042843', 'https://cdn.waterstones.com/bookjackets/large/9781/8460/9781846042843.jpg', 8, '2019-02-14 00:04:57', '2019-02-14 00:04:57'),
(117, 'Between The World And Me (Paperback)', 'Ta-Nehisi Coates', 10, 'Text Publishing Co', '9781925240702', 'https://cdn.waterstones.com/bookjackets/large/9781/9252/9781925240702.jpg', 8, '2019-02-14 00:04:59', '2019-02-14 00:04:59'),
(118, 'First Light - The Centenary Collection (Paperback)', 'Geoffrey Wellum', 10, 'Penguin Books Ltd', '9780141042756', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141042756.jpg', 8, '2019-02-14 00:04:59', '2019-02-14 00:04:59'),
(119, 'Hidden History: The Secret Origins of the First World War (Hardback)', 'Gerry Docherty', 10, 'Transworld Publishers Ltd', '9781780576305', 'https://cdn.waterstones.com/bookjackets/large/9781/7805/9781780576305.jpg', 8, '2019-02-14 00:05:01', '2019-02-14 00:05:01'),
(120, 'Making Sense of the Troubles: A History of the Northern Ireland Conflict (Paperback)', 'David McKittrick', 10, 'Penguin Books Ltd', '9780241962657', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241962657.jpg', 8, '2019-02-14 00:05:02', '2019-02-14 00:05:02'),
(121, 'Man\'s Search For Meaning: The classic tribute to hope from the Holocaust (Paperback)', 'Viktor E. Frankl', 10, 'Ebury Publishing', '9781846041242', 'https://cdn.waterstones.com/bookjackets/large/9781/8460/9781846041242.jpg', 8, '2019-02-14 00:05:04', '2019-02-14 00:05:04'),
(122, 'The Cut Out Girl: A Story of War and Family, Lost and Found (Paperback)', 'Bart van Es', 10, 'Penguin Books Ltd', '9780241978726', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241978726.jpg', 8, '2019-02-14 00:05:05', '2019-02-14 00:05:05'),
(123, 'Good Night Stories for Rebel Girls (Hardback)', 'Elena Favilli', 10, 'Penguin Books Ltd', '9780141986005', 'https://cdn.waterstones.com/bookjackets/large/9780/1419/9780141986005.jpg', 8, '2019-02-14 00:05:06', '2019-02-14 00:05:06'),
(124, 'Why I\'m No Longer Talking to White People About Race (Paperback)', 'Reni Eddo-Lodge', 10, 'Bloomsbury Publishing Plc', '9781408870587', 'https://cdn.waterstones.com/bookjackets/large/9781/4088/9781408870587.jpg', 8, '2019-02-14 00:05:07', '2019-02-14 00:05:07'),
(125, 'Cuneiform (Paperback)', 'Irving Finkel', 10, 'British Museum Press', '9780714111889', 'https://cdn.waterstones.com/bookjackets/large/9780/7141/9780714111889.jpg', 8, '2019-02-14 00:05:08', '2019-02-14 00:05:08'),
(126, 'Becoming (Hardback)', 'Michelle Obama', 10, 'Penguin Books Ltd', '9780241334140', 'https://cdn.waterstones.com/override/v4/large/9780/2413/9780241334140.jpg', 8, '2019-02-14 00:05:09', '2019-02-14 00:05:09'),
(127, 'Sapiens: A Brief History of Humankind (Paperback)', 'Yuval Noah Harari', 10, 'Vintage Publishing', '9780099590088', 'https://cdn.waterstones.com/bookjackets/large/9780/0995/9780099590088.jpg', 8, '2019-02-14 00:05:11', '2019-02-14 00:05:11'),
(128, 'The Boy Who Followed His Father into Auschwitz (Hardback)', 'Jeremy Dronfield', 10, 'Penguin Books Ltd', '9780241359198', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241359198.jpg', 8, '2019-02-14 00:05:12', '2019-02-14 00:05:12'),
(129, 'Saltwater Slavery: A Middle Passage from Africa to American Diaspora (Paperback)', 'Stephanie E. Smallwood', 10, 'Harvard University Press', '9780674030688', 'https://cdn.waterstones.com/bookjackets/large/9780/6740/9780674030688.jpg', 8, '2019-02-14 00:05:13', '2019-02-14 00:05:13'),
(130, 'Lessons of History (Paperback)', 'Will Durant', 10, 'Simon & Schuster', '9781439149959', 'https://cdn.waterstones.com/bookjackets/large/9781/4391/9781439149959.jpg', 8, '2019-02-14 00:05:14', '2019-02-14 00:05:14'),
(131, 'The Ordnance Survey Puzzle Book: Pit your wits against Britain\'s greatest map makers (Paperback)', 'Ordnance Survey', 10, 'Orion Publishing Co', '9781409184676', 'https://cdn.waterstones.com/bookjackets/large/9781/4091/9781409184676.jpg', 8, '2019-02-14 00:05:15', '2019-02-14 00:05:15'),
(132, 'Inglorious Empire: What the British Did to India (Paperback)', 'Shashi Tharoor', 10, 'Penguin Books Ltd', '9780141987149', 'https://cdn.waterstones.com/bookjackets/large/9780/1419/9780141987149.jpg', 8, '2019-02-14 00:05:16', '2019-02-14 00:05:16'),
(133, 'Eastern Approaches (Paperback)', 'Fitzroy Maclean', 10, 'Penguin Books Ltd', '9780141042848', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141042848.jpg', 8, '2019-02-14 00:05:18', '2019-02-14 00:05:18'),
(134, 'The Age of Surveillance Capitalism: The Fight for a Human Future at the New Frontier of Power (Hardback)', 'Shoshana Zuboff', 10, 'Profile Books Ltd', '9781781256848', 'https://cdn.waterstones.com/override/v1/large/9781/7812/9781781256848.jpg', 8, '2019-02-14 00:05:19', '2019-02-14 00:05:19'),
(135, 'The National Trust Book of Scones: Delicious recipes and odd crumbs of history (Hardback)', 'Sarah Clelland', 10, 'Pavilion Books', '9781909881938', 'https://cdn.waterstones.com/bookjackets/large/9781/9098/9781909881938.jpg', 8, '2019-02-14 00:05:19', '2019-02-14 00:05:19'),
(136, 'Ikigai: The Japanese secret to a long and happy life (Hardback)', 'Hector Garcia', 10, 'Cornerstone', '9781786330895', 'https://cdn.waterstones.com/bookjackets/large/9781/7863/9781786330895.jpg', 9, '2019-02-14 00:05:39', '2019-02-14 00:05:39'),
(137, 'The Dialectical Behavior Therapy Skills Workbook: Practical DBT Exercises for Learning Mindfulness, Interpersonal Effectiveness, Emotion Regulation and Distress Tolerance (Paperback)', 'Matthew McKay', 10, 'New Harbinger Publications', '9781572245136', 'https://cdn.waterstones.com/bookjackets/large/9781/5722/9781572245136.jpg', 9, '2019-02-14 00:05:41', '2019-02-14 00:05:41'),
(138, 'The Art of War - Collins Classics (Paperback)', 'Sun Tzu', 10, 'HarperCollins Publishers', '9780007420124', 'https://cdn.waterstones.com/bookjackets/large/9780/0074/9780007420124.jpg', 9, '2019-02-14 00:05:42', '2019-02-14 00:05:42'),
(139, 'Meditations (Paperback)', 'Marcus Aurelius', 10, 'Penguin Books Ltd', '9780140449334', 'https://cdn.waterstones.com/bookjackets/large/9780/1404/9780140449334.jpg', 9, '2019-02-14 00:05:43', '2019-02-14 00:05:43'),
(140, 'Capitalist Realism: Is There No Alternative? - Zero Books (Paperback)', 'Mark Fisher', 10, 'John Hunt Publishing', '9781846943171', 'https://cdn.waterstones.com/bookjackets/large/9781/8469/9781846943171.jpg', 9, '2019-02-14 00:05:44', '2019-02-14 00:05:44'),
(141, 'The Heart of Yoga: Developing Personal Practice (Paperback)', 'T. K. V. Desikachar', 10, 'Inner Traditions Bear and Company', '9780892817641', 'https://cdn.waterstones.com/bookjackets/large/9780/8928/9780892817641.jpg', 9, '2019-02-14 00:05:46', '2019-02-14 00:05:46'),
(142, 'Meditations (Paperback)', 'Marcus Aurelius', 10, 'Orion Publishing Co', '9780753820162', 'https://cdn.waterstones.com/bookjackets/large/9780/7538/9780753820162.jpg', 9, '2019-02-14 00:05:48', '2019-02-14 00:05:48'),
(143, 'Silence: In the Age of Noise (Paperback)', 'Erling Kagge', 10, 'Penguin Books Ltd', '9780241309889', 'https://cdn.waterstones.com/override/v1/large/9780/2413/9780241309889.jpg', 9, '2019-02-14 00:05:49', '2019-02-14 00:05:49'),
(144, 'National Populism: The Revolt Against Liberal Democracy - Pelican Books (Paperback)', 'Roger Eatwell', 10, 'Penguin Books Ltd', '9780241312001', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241312001.jpg', 9, '2019-02-14 00:05:51', '2019-02-14 00:05:51'),
(145, 'The Daily Stoic: 366 Meditations on Wisdom, Perseverance, and the Art of Living: Featuring new translations of Seneca, Epictetus, and Marcus Aurelius (Paperback)', 'Ryan Holiday', 10, 'Profile Books Ltd', '9781781257654', 'https://cdn.waterstones.com/override/v1/large/9781/7812/9781781257654.jpg', 9, '2019-02-14 00:05:52', '2019-02-14 00:05:52'),
(146, 'The Tao of Pooh & The Te of Piglet (Paperback)', 'Benjamin Hoff', 10, 'Egmont UK Ltd', '9780416199253', 'https://cdn.waterstones.com/bookjackets/large/9780/4161/9780416199253.jpg', 9, '2019-02-14 00:05:54', '2019-02-14 00:05:54'),
(147, 'The Tree of Yoga: The Definitive Guide to Yoga in Everyday Life (Paperback)', 'B. K. S. Iyengar', 10, 'HarperCollins Publishers', '9780007921270', 'https://cdn.waterstones.com/bookjackets/large/9780/0079/9780007921270.jpg', 9, '2019-02-14 00:05:55', '2019-02-14 00:05:55'),
(148, 'On the Shortness of Life - Penguin Great Ideas (Paperback)', 'Seneca', 10, 'Penguin Books Ltd', '9780141018812', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141018812.jpg', 9, '2019-02-14 00:05:57', '2019-02-14 00:05:57'),
(149, 'Lifelines: Notes on Life and Love, Faith and Doubt (Paperback)', 'Martin Wroe', 10, 'Unbound', '9781783526277', 'https://cdn.waterstones.com/bookjackets/large/9781/7835/9781783526277.jpg', 9, '2019-02-14 00:05:59', '2019-02-14 00:05:59'),
(150, 'The Courage To Be Disliked: How to free yourself, change your life and achieve real happiness (Paperback)', 'Ichiro Kishimi', 10, 'Allen & Unwin', '9781760630737', 'https://cdn.waterstones.com/bookjackets/large/9781/7606/9781760630737.jpg', 9, '2019-02-14 00:06:01', '2019-02-14 00:06:01'),
(151, 'Like A Thief In Broad Daylight: Power in the Era of Post-Humanity (Hardback)', 'Slavoj Zizek', 10, 'Penguin Books Ltd', '9780241364291', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241364291.jpg', 9, '2019-02-14 00:06:03', '2019-02-14 00:06:03'),
(152, 'Riddles of Existence: A Guided Tour of Metaphysics: New Edition (Paperback)', 'Earl Conee', 10, 'Oxford University Press', '9780198724049', 'https://cdn.waterstones.com/bookjackets/large/9780/1987/9780198724049.jpg', 9, '2019-02-14 00:06:05', '2019-02-14 00:06:05'),
(153, 'The Righteous Mind: Why Good People are Divided by Politics and Religion (Paperback)', 'Jonathan Haidt', 10, 'Penguin Books Ltd', '9780141039169', 'https://cdn.waterstones.com/bookjackets/large/9780/1410/9780141039169.jpg', 9, '2019-02-14 00:06:05', '2019-02-14 00:06:05'),
(154, 'Greatest Salesman In The World (Paperback)', 'Og Mandino', 10, 'Bantam Doubleday Dell Publishing Group Inc', '9780553277579', 'https://cdn.waterstones.com/bookjackets/large/9780/5532/9780553277579.jpg', 9, '2019-02-14 00:06:06', '2019-02-14 00:06:06'),
(155, 'Utopia for Realists: And How We Can Get There (Paperback)', 'Rutger Bregman', 10, 'Bloomsbury Publishing PLC', '9781408893210', 'https://cdn.waterstones.com/bookjackets/large/9781/4088/9781408893210.jpg', 10, '2019-02-14 00:06:25', '2019-02-14 00:06:25'),
(156, 'Rules For Radicals (Paperback)', 'Saul David Alinsky', 10, 'Random House USA Inc', '9780679721130', 'https://cdn.waterstones.com/bookjackets/large/9780/6797/9780679721130.jpg', 10, '2019-02-14 00:06:26', '2019-02-14 00:06:26'),
(157, 'Making Sense of the Troubles: A History of the Northern Ireland Conflict (Paperback)', 'David McKittrick', 10, 'Penguin Books Ltd', '9780241962657', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241962657.jpg', 10, '2019-02-14 00:06:26', '2019-02-14 00:06:26'),
(158, 'Levison\'s Textbook for Dental Nurses (Paperback)', 'Carole Hollins', 10, 'John Wiley & Sons Inc', '9781118500446', 'https://cdn.waterstones.com/bookjackets/large/9781/1185/9781118500446.jpg', 10, '2019-02-14 00:06:27', '2019-02-14 00:06:27'),
(159, 'The Cut Out Girl: A Story of War and Family, Lost and Found (Paperback)', 'Bart van Es', 10, 'Penguin Books Ltd', '9780241978726', 'https://cdn.waterstones.com/bookjackets/large/9780/2419/9780241978726.jpg', 10, '2019-02-14 00:06:29', '2019-02-14 00:06:29'),
(160, 'The Gulag Archipelago (Paperback)', 'Aleksandr Solzhenitsyn', 10, 'Vintage Publishing', '9781843430858', 'https://cdn.waterstones.com/bookjackets/large/9781/8434/9781843430858.jpg', 10, '2019-02-14 00:06:30', '2019-02-14 00:06:30'),
(161, 'Why I\'m No Longer Talking to White People About Race (Paperback)', 'Reni Eddo-Lodge', 10, 'Bloomsbury Publishing Plc', '9781408870587', 'https://cdn.waterstones.com/bookjackets/large/9781/4088/9781408870587.jpg', 10, '2019-02-14 00:06:30', '2019-02-14 00:06:30'),
(162, 'Becoming (Hardback)', 'Michelle Obama', 10, 'Penguin Books Ltd', '9780241334140', 'https://cdn.waterstones.com/override/v4/large/9780/2413/9780241334140.jpg', 10, '2019-02-14 00:06:32', '2019-02-14 00:06:32'),
(163, 'Heroic Failure: Brexit and the Politics of Pain (Paperback)', 'Fintan O\'Toole', 10, 'Head of Zeus', '9781789540987', 'https://cdn.waterstones.com/bookjackets/large/9781/7895/9781789540987.jpg', 10, '2019-02-14 00:06:33', '2019-02-14 00:06:33'),
(164, 'Prisoners of Geography: Ten Maps That Tell You Everything You Need to Know About Global Politics (Paperback)', 'Tim Marshall', 10, 'Elliott & Thompson Limited', '9781783962433', 'https://cdn.waterstones.com/bookjackets/large/9781/7839/9781783962433.jpg', 10, '2019-02-14 00:06:34', '2019-02-14 00:06:34'),
(165, 'National Populism: The Revolt Against Liberal Democracy - Pelican Books (Paperback)', 'Roger Eatwell', 10, 'Penguin Books Ltd', '9780241312001', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241312001.jpg', 10, '2019-02-14 00:06:35', '2019-02-14 00:06:35'),
(166, 'Open Veins of Latin America: Five Centuries of the Pillage of a Continent (Paperback)', 'Eduardo Galeano', 10, 'Profile Books Ltd', '9781846687426', 'https://cdn.waterstones.com/bookjackets/large/9781/8466/9781846687426.jpg', 10, '2019-02-14 00:06:37', '2019-02-14 00:06:37'),
(167, 'Uncivil Agreement: How Politics Became Our Identity (Paperback)', 'Lilliana Mason', 10, 'The University of Chicago Press', '9780226524542', 'https://cdn.waterstones.com/bookjackets/large/9780/2265/9780226524542.jpg', 10, '2019-02-14 00:06:38', '2019-02-14 00:06:38'),
(168, 'The Story of Brexit - Ladybirds for Grown-Ups (Hardback)', 'Jason Hazeley', 10, 'Penguin Books Ltd', '9780241386569', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241386569.jpg', 10, '2019-02-14 00:06:39', '2019-02-14 00:06:39'),
(169, 'An Inconvenient Death: How the Establishment Covered Up the David Kelly Affair (Paperback)', 'Miles Goslett', 10, 'Head of Zeus', '9781788543118', 'https://cdn.waterstones.com/bookjackets/large/9781/7885/9781788543118.jpg', 10, '2019-02-14 00:06:41', '2019-02-14 00:06:41'),
(170, 'Pedagogy of the Oppressed - Penguin Modern Classics (Paperback)', 'Paulo Freire', 10, 'Penguin Books Ltd', '9780241301111', 'https://cdn.waterstones.com/bookjackets/large/9780/2413/9780241301111.jpg', 10, '2019-02-14 00:06:42', '2019-02-14 00:06:42'),
(171, 'Churchill: Walking with Destiny (Hardback)', 'Andrew Roberts', 10, 'Penguin Books Ltd', '9780241205631', 'https://cdn.waterstones.com/bookjackets/large/9780/2412/9780241205631.jpg', 10, '2019-02-14 00:06:43', '2019-02-14 00:06:43'),
(172, 'The Scottish Bothy Bible: The Complete Guide to Scotland\'s Bothies and How to Reach Them (Paperback)', 'Geoff Allan', 10, 'Wild Things Publishing Ltd', '9781910636107', 'https://cdn.waterstones.com/bookjackets/large/9781/9106/9781910636107.jpg', 11, '2019-02-14 00:07:06', '2019-02-14 00:07:06'),
(173, 'The Chimp Paradox: The Acclaimed Mind Management Programme to Help You Achieve Success, Confidence and Happiness (Paperback)', 'Prof Steve Peters', 10, 'Ebury Publishing', '9780091935580', 'https://cdn.waterstones.com/bookjackets/large/9780/0919/9780091935580.jpg', 11, '2019-02-14 00:07:07', '2019-02-14 00:07:07'),
(174, 'Legacy (Paperback)', 'James Kerr', 10, 'Little, Brown Book Group', '9781472103536', 'https://cdn.waterstones.com/bookjackets/large/9781/4721/9781472103536.jpg', 11, '2019-02-14 00:07:08', '2019-02-14 00:07:08'),
(175, 'The Salt Path (Paperback)', 'Raynor Winn', 10, 'Penguin Books Ltd', '9781405937184', 'https://cdn.waterstones.com/override/v1/large/9781/4059/9781405937184.jpg', 11, '2019-02-14 00:07:09', '2019-02-14 00:07:09'),
(176, 'The Unknown Kimi Raikkonen (Hardback)', 'Kari Hotakainen', 10, 'Simon & Schuster Ltd', '9781471177668', 'https://cdn.waterstones.com/bookjackets/large/9781/4711/9781471177668.jpg', 11, '2019-02-14 00:07:10', '2019-02-14 00:07:10'),
(177, 'SAS Survival Guide: How to Survive in the Wild, on Land or Sea - Collins Gem (Paperback)', 'John \'Lofty\' Wiseman', 10, 'HarperCollins Publishers', '9780008133788', 'https://cdn.waterstones.com/bookjackets/large/9780/0081/9780008133788.jpg', 11, '2019-02-14 00:07:12', '2019-02-14 00:07:12'),
(178, 'Easy Wood Carving for Children: Fun Whittling Projects for Adventurous Kids (Paperback)', 'Frank Egholm', 10, 'Floris Books', '9781782505150', 'https://cdn.waterstones.com/bookjackets/large/9781/7825/9781782505150.jpg', 11, '2019-02-14 00:07:13', '2019-02-14 00:07:13'),
(179, 'Alone on the Wall: Alex Honnold and the Ultimate Limits of Adventure (Paperback)', 'Alex Honnold', 10, 'Pan Macmillan', '9781447282730', 'https://cdn.waterstones.com/bookjackets/large/9781/4472/9781447282730.jpg', 11, '2019-02-14 00:07:15', '2019-02-14 00:07:15'),
(180, 'Chiltern Hills West, Henley-on-Thames and Wallingford - OS Explorer Map 171 (Sheet map, folded)', 'Ordnance Survey', 10, 'Ordnance Survey', '9780319243640', 'https://cdn.waterstones.com/bookjackets/large/9780/3192/9780319243640.jpg', 11, '2019-02-14 00:07:16', '2019-02-14 00:07:16'),
(181, 'Cotswold Way: 44 Large-Scale Walking Maps & Guides to 48 Towns and Villages Planning,Places to Stay, Places to Eat - Chipping Campden to Bath (Paperback)', 'Tricia Hayne', 10, 'Trailblazer Publications', '9781905864706', 'https://cdn.waterstones.com/bookjackets/large/9781/9058/9781905864706.jpg', 11, '2019-02-14 00:07:18', '2019-02-14 00:07:18'),
(182, 'Technical Diving: An Introduction by Mark Powell (Paperback)', 'Mark Powell', 10, 'AquaPress', '9781905492312', 'https://cdn.waterstones.com/bookjackets/large/9781/9054/9781905492312.jpg', 11, '2019-02-14 00:07:19', '2019-02-14 00:07:19'),
(183, 'Unspoken: Gary Speed: The Family\'s Untold Story (Hardback)', 'John Richardson', 10, 'Trinity Mirror Sport Media', '9781910335932', 'https://cdn.waterstones.com/bookjackets/large/9781/9103/9781910335932.jpg', 11, '2019-02-14 00:07:20', '2019-02-14 00:07:20'),
(184, 'The Barcelona Way: How to Create a High-Performance Culture (Paperback)', 'Damian Hughes', 10, 'Pan Macmillan', '9781509804429', 'https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509804429.jpg', 11, '2019-02-14 00:07:21', '2019-02-14 00:07:21'),
(185, 'The Boy on the Shed (Paperback)', 'Paul Ferris', 10, 'Hodder & Stoughton General Division', '9781473666740', 'https://cdn.waterstones.com/bookjackets/large/9781/4736/9781473666740.jpg', 11, '2019-02-14 00:07:23', '2019-02-14 00:07:23'),
(186, 'Take the Slow Road: Scotland: Inspirational Journeys Round the Highlands, Lowlands and Islands of Scotland by Camper Van and Motorhome (Paperback)', 'Martin Dorey', 10, 'Bloomsbury Publishing PLC', '9781844865383', 'https://cdn.waterstones.com/bookjackets/large/9781/8448/9781844865383.jpg', 11, '2019-02-14 00:07:25', '2019-02-14 00:07:25'),
(187, 'Carbs & Cals Carb & Calorie Counter: Count Your Carbs & Calories with Over 1,700 Food & Drink Photos! (Paperback)', 'Chris Cheyette', 10, 'Chello Publishing', '9781908261151', 'https://cdn.waterstones.com/bookjackets/large/9781/9082/9781908261151.jpg', 12, '2019-02-14 00:07:48', '2019-02-14 00:07:48');
INSERT INTO `books` (`id`, `title`, `author`, `quantity`, `publisher`, `isbn`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(188, 'Cooking For Fitness: Eat Smarter and Train Better (Hardback)', 'James Haskell', 10, 'Haskell Publishing', '9780995544642', 'https://cdn.waterstones.com/bookjackets/large/9780/9955/9780995544642.jpg', 12, '2019-02-14 00:07:50', '2019-02-14 00:07:50'),
(189, 'What to Eat When (Hardback)', 'Michael F. Roizen', 10, 'National Geographic Society', '9781426220111', 'https://cdn.waterstones.com/bookjackets/large/9781/4262/9781426220111.jpg', 12, '2019-02-14 00:07:51', '2019-02-14 00:07:51'),
(190, 'The Muscular System Anatomical Chart (Wallchart)', 'Anatomical Chart Company', 10, 'Anatomical Chart Co.', '9781587790362', 'https://cdn.waterstones.com/bookjackets/large/9781/5877/9781587790362.jpg', 12, '2019-02-14 00:07:52', '2019-02-14 00:07:52'),
(191, 'Grain Brain: The Surprising Truth about Wheat, Carbs, and Sugar - Your Brain\'s Silent Killers (Paperback)', 'David Perlmutter', 10, 'Hodder & Stoughton General Division', '9781444791907', 'https://cdn.waterstones.com/bookjackets/large/9781/4447/9781444791907.jpg', 12, '2019-02-14 00:07:54', '2019-02-14 00:07:54'),
(192, 'Tom Kerridge\'s Dopamine Diet: My low-carb, stay-happy way to lose weight (Hardback)', 'Tom Kerridge', 10, 'Absolute Press', '9781472935410', 'https://cdn.waterstones.com/bookjackets/large/9781/4729/9781472935410.jpg', 12, '2019-02-14 00:07:55', '2019-02-14 00:07:55'),
(193, 'Core Java', 'Cay Horstmann', 10, 'Prentice Hall', '9780137081899', 'https://images-na.ssl-images-amazon.com/images/I/419NfKc-OLL._SX379_BO1,204,203,200_.jpg', 5, '2019-04-26 14:43:33', '2019-04-26 14:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Art and Art History books', '2019-02-13 23:38:26', '2019-02-13 23:38:26'),
(2, 'Biographies', '2019-02-13 23:38:58', '2019-02-13 23:38:58'),
(3, 'Business & Management', '2019-02-13 23:39:19', '2019-02-13 23:39:19'),
(4, 'Law', '2019-02-13 23:39:45', '2019-02-13 23:39:45'),
(5, 'Computer Science', '2019-02-13 23:40:07', '2019-02-13 23:40:07'),
(6, 'Information Technology', '2019-02-13 23:40:50', '2019-02-13 23:40:50'),
(7, 'Health & Lifestyle', '2019-02-13 23:41:11', '2019-02-13 23:41:11'),
(8, 'History', '2019-02-13 23:41:50', '2019-02-13 23:41:50'),
(9, 'Philosophy', '2019-02-13 23:42:23', '2019-02-13 23:42:23'),
(10, 'Politics & Government', '2019-02-13 23:42:48', '2019-02-13 23:42:48'),
(11, 'Sport', '2019-02-13 23:43:49', '2019-02-13 23:43:49'),
(12, 'Fitness & Diet', '2019-02-13 23:44:27', '2019-02-13 23:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `loan_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fines`
--

INSERT INTO `fines` (`id`, `price`, `paid`, `loan_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1.00', 1, 3, 3, '2019-04-24 21:35:06', '2019-04-24 22:02:00'),
(2, '9.00', 0, 4, 7, '2019-04-26 14:53:50', '2019-04-26 14:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `due_date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `return_date`, `due_date`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, '2019-04-05 11:06:53', '2019-03-03 19:09:52', 1, 2, '2019-03-05 19:09:52', '2019-04-05 10:06:53'),
(2, '2019-04-19 17:35:30', '2019-04-29 17:15:26', 7, 9, '2019-04-19 16:15:26', '2019-04-19 16:35:30'),
(3, '2019-04-24 22:35:06', '2019-04-23 22:18:48', 3, 2, '2019-04-01 21:18:48', '2019-04-24 21:35:06'),
(4, '2019-04-26 15:53:50', '2019-05-06 15:51:41', 7, 9, '2019-04-26 14:51:41', '2019-04-26 14:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('joshvbn456@gmail.com', '$2y$10$XvQWpSteRCaMxjO2Vr6ktuQYb5h7uZgFGjGAvnmoFA/qqaCPqPZxa', '2019-11-04 13:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone_number`, `address`, `image`, `admin`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Diren', 'Pramodacumar', 'dp@gmail.com', '$2y$10$cGgmSmbV8N5/1.R0Pdg2Xu6oPc36wjj1vzQVH4ocSB/wXKqwwq8Eq', '07700 900555', 'London', 'default.png', 1, 1, 'rowTIjB2fxglalARJMF0fI9KkTA41fcvux2X9fkx7eb2s9gIDFEiGTcyveiS', '2019-02-14 00:08:23', '2019-03-04 17:19:34'),
(2, 'Pedro', 'Silva', 'psilva@gmail.com', '$2y$10$1H119WPT8VY9TeHTEGQ9OOcn8p4tfPkSr29/RRPd0So1oQVirZbOO', '07700 900977', '1170 Hickory Heights Drive', 'default.png', 0, 1, 'cojWFtxcIy4YNaVaLwmSOsJuo2JeYtQKqMpTurMs8ia8Un3B4UZ8Nqn9aMDd', '2019-02-14 21:02:34', '2019-02-14 21:02:34'),
(3, 'Arielle', 'Vu', 'arielleVu@gmail.com', '$2y$10$uCqIuAcaIhLIep4V5ZOj6u4BzvkEGgWFcZmsUsqeiasjnsZDB9i6q', '07700 900656', '3091 Olive Street', 'default.png', 0, 1, 'Q9Ab4ZrDoJA4napFKLeU08ev7dD1Gl2XPWN6J8YDFFCwkBGz0lJhlPCrrIHP', '2019-02-14 21:11:59', '2019-02-14 21:11:59'),
(4, 'Zackary', 'Heath', 'zackaryHeath@gmail.com', '$2y$10$qUoo2RtuCMeMzXpYoOx.xukHkYusXUxpsuGYzaneva4Scl8d2/aEy', '07700 900925', '1119 Hornor Avenue', 'default.png', 0, 1, '8eNjg6GFXIBbZZwRMGPm3EsoPM5InV68fxDJLFhFZ5nRH8dXy5BAlwhOMkpW', '2019-02-14 21:13:18', '2019-04-24 17:25:03'),
(5, 'Troy', 'Fenton', 'troyFenton@gmail.com', '$2y$10$pL77iOaN7R/qKGDdRroPfO8cWE2D8iCmxhnYw80CroAoJpA6Mljhy', '07700 900707', '3295 Jessie Street', 'default.png', 0, 1, 'J4I0Ja5oLR1qQ4EwrfrkD3u5dNY8BlnuwAj12sQYRH9jmpnifiiXzlDE55qh', '2019-02-14 21:14:29', '2019-02-14 21:14:29'),
(6, 'Niam', 'Joyner', 'niamJoyner@gmail.com', '$2y$10$QB/Fz9RkMzlwgYF3GZ2j3OigvmFl4wxg1B0eYRFbRRND9tMXl6nvS', '07700 900646', '739 Southern Avenue', 'default.png', 0, 1, '4X6HQZteGTZGwEjqKP5ezZQPrQoeaUAy83d3MkeIFoPvuQxPgQZTuVeUbFHi', '2019-02-14 21:15:27', '2019-04-24 14:51:19'),
(7, 'John', 'LOL', 'jj@gmail.com', '$2y$10$lkn.ppH2MUbmHQOVnOsfeukSzMHPl1yU3pD2QFfW/R8oKstb4AqlO', '07700 900657', 'London', 'default.png', 0, 1, 'u49f1WcXJnbzfNDhgXaG91Am6DSULJsrV0xV9pm8C5edsUc7UmZ6EjCKjaav', '2019-04-04 11:20:25', '2019-05-02 13:12:35'),
(8, 'Filipa', 'Vilhena', 'fv@gmail.com', '$2y$10$Shen.Gwqetv88Qk9cxMEWe.9KkXp.HfXCOeldvj73PAzgVXElpa0G', '07700 900466', 'London', 'default.png', 0, 1, 'UlPKK3hd3ZeN8IwVTu1Uw981XGVfHoLFoxRgXT40H2uSGkaAS5EYZGYp5BdW', '2019-11-06 08:22:19', '2019-11-06 08:22:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fines_loan_id_foreign` (`loan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_user_id_foreign` (`user_id`),
  ADD KEY `loans_book_id_foreign` (`book_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fines_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fines_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`);

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
