-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2017 lúc 06:43 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `moi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actions`
--

CREATE TABLE `actions` (
  `actid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `actions`
--

INSERT INTO `actions` (`actid`, `name`, `content`) VALUES
(1, 'Dance', 'Một lớp học nhảy kéo dài 60 phút có thể đốt cháy đến 800 calo,\r\ntùy thuộc vào cân nặng và cố gắng của bạn. \r\n\r\nNhảy còn giúp tăng nhịp tim:\r\n\r\n- Đốt cháy calo\r\n- Giải tỏa stress\r\n- Làm chậm quá trình lão hóa\r\n- Đẩy lùi nhiều loại bệnh\r\n- Tăng sự tự tin\r\n- Giữ vóc dáng thon gọn'),
(2, 'yoga', 'Yoga cho vóc dáng thon gọn, săn chắc\r\n-Luyện tập thường xuyên cùng với kỹ thuật thở trong Yoga sẽ giúp bạn bạn có được một thân hình săn chắc. Đây là sự lựa chọn hoàn hảo để bạn lấy lại vóc dáng thon gọn thuở thiếu thời. Yoga còn giúp nâng cao sức khỏe và tính linh hoạt, bạn sẽ cảm nhận được cơ thể trở nên săn chắc và quyến rũ hơn. \r\n-Yoga sẽ giúp giải tỏa căng thẳng và thư giãn tâm hồn cũng như cơ thể bạn. Bạn sẽ cảm thấy thoải mãi và nhẹ nhõm hơn chỉ sau lớp học đầu tiên. \r\n-Yoga làm giảm đau bằng cách giảm bớt sự căng thẳng và cải thiện tính linh hoạt của bạn. Một trong những nguyên nhân chính cho lưng và cổ đau là tình trạng căng cơ và thiếu linh hoạt trong cơ bắp. '),
(3, 'Kickfit', '-Kickfit là môn võ giống MMA, cũng lấy cảm hứng từ nhiều phong cách võ thuật, kết hợp các động tác mạnh mẽ như đấm, đá cùng kỹ thuật tấn công, di chuyển tạo thành môn thể thao rèn luyện thể lực và thể hình săn chắc.\r\n-Kickfit and MMA mang đến những lợi lích sức khỏe tuyệt vời mà bạn không thể quên bao gồm:\r\n\r\n+Giảm mỡ\r\n+Sức mạnh và sự linh hoạt\r\n+Giảm căng thẳng\r\n+Tập trung và thành công\r\n'),
(4, 'Group Fitness', '-Đốt cháy 650cal trong một giờ và dành thời gian riêng cho bản thân. Trong một môi trường thú vị và đầy năng lượng, các lớp Group-X được dẫn dắt bởi các HLV giàu nhiệt huyết để giúp bạn đánh bay mỡ thừa và thấy lại vóc dáng thon gọn, sức khỏe dẻo dai. Chỉ với 3 lớp mỗi tuần, bạn sẽ đạt được vóc dáng như mong muốn.\r\n-Tất cả các lớp thể dục nhóm đều phù hợp cho mọi đối tượng. Luyện tập với bạn bè sẽ thú vị và mang lại hiệu quả cao hơn, đó là bí quyết của Thể dục nhóm. Các lớp được thiết kế để mang đến bạn một môi trường tập luyện đạt kết quả cao nhất.'),
(5, 'Cable Crossover (hay Cable Fly)', '3 hiệp: 15 lần lặp\r\nBài tập này cũng là bài duy nhất giúp kéo căng các sợi cơ, giúp tăng cường phạm vi chuyển\r\nđộng của bạn (ROM), tác động lên nhiều sợi cơ và đưa máu vào tế bào tốt hơn.\r\n'),
(6, 'Incline Dumbbell Press (đẩy tạ ngực)', '3 hiệp: 10 lần lặp\r\nĐẩy ngực với ghế nghiên lên là một trong những bài tập cho ngực trên tốt nhất và nó cũng là bài tập gây thách thức nhất.\r\nVị trí ghế nên để cao mức trung bình, không nên để quá cao, lúc này lực sẽ tập trung vào\r\nvai nhiều hơn là ngực.\r\nSử dụng 1 mức tạ nặng và bạn có thể đẩy được tối đa là 10-12 lần là được. Giữ vai và lưng\r\ntrên sát vào ghế. Hạ tạ xuống chậm rãi, mở rộng ngực và dừng 1 giây ở vị trí thấp nhất\r\ntrước khi bắt đầu đẩy tạ lên.\r\n\r\n'),
(7, 'Machine Bench Press (đẩy máy)', '3 hiệp: 10 lần lặp\r\nSau 2 bài tập thì chắc bạn cũng đã nóng lên rất nhiều đúng không nào, giờ thì ta sẽ bắt\r\nđầu với bài Machine Press. Đây là một cách rất tuyệt để tập trung vào 1 khu vực khác trên\r\nnhóm cơ ngực của chúng ta. Nhờ hỗ trợ của máy, bạn có thể nâng mức tạ lên nhiều hơn,\r\nbạn cũng có thể tay đổi vị trí tay để đánh vào các vùng khác nhau trên cơ ngực.\r\n'),
(8, 'Pec Deck Fly (hay Buttery)', '3 hiệp: 10-12 lần lặp\r\nĐây là bài tập hầu hết mọi người đều yêu thích tập luyện, bạn sẽ thấy hơi lạ vì thấy tôi\r\nđứng tập thay vì ngồi như hầu hết mọi người thường làm, tuy nhiên nếu bạn thích ngồi thì\r\ncũng không vấn đề gì cả, miễn là bạn chắc chắn là nó tập trung hoàn toàn vào ngực khi\r\nbạn tập.\r\nTìm 1 vị trí thoải mái trong máy, bạn tay tốt nhất là cao ngang vai hoặc tập hơn 1 chút, giữ\r\nlưng thẳng và đẩy ngực lên khi 2 tay đưa tới trước ngực.'),
(9, 'Decline Barbell Bench Press', '3 hiệp: 10 lần lặp\r\n Bài đẩy ngực này đánh vào tất cả các phần của cơ ngực, nó thật sự là 1 bài hoàn hảo để kết thúc buổi tập, ở góc nghiêng xuống này, ngực của bạn mạnh hơn nhiều, tuy nhiên do đã là bài kết thúc rồi nên cơ ngực sẽ phải yêu cầu nhiều sợi cơ hơn để đẩy vì bạn cũng đã thấm mệt.\r\n Tương tự như bài tập đẩy ngực khác, bạn cũng nên hạ tạ chậm, giữ 1 giây trên đỉnh ngực trước khi bắt đầu đẩy lên'),
(10, 'Snatch Grip Deadlift – Deadlift rộng tay\r\n', 'Phần lớn sức lực phải được tạo ra ở phần đầu của động tác khi phần hông còn đang ở dưới thấp. Nếu bạn vẫn bị loay hoay khi dồn sức nâng tạ ở giữa động tác thì mức tạ này đang quá nặng. \r\n'),
(11, 'Bar Muscle Up', 'Kĩ thuật Muscle Up cần có thời gian để hoàn thiện mặc dù nó dễ hơn là thực hiện trên vòng trong nhưng bạn vẫn cần phải có sức mạnh và phân phối lực từ phần thân trên của mình.\r\n'),
(12, 'Single Leg Shoulder Bridge', 'các bạn nên giữ cả bàn chân tiếp xúc với mặt sàn và dồn trọng tâm về phía gót chân để làm tăng tối đa hoạt động của đùi sau và giảm tối thiểu hoạt động của cơ đùi trước, dùng tay để giữ thăng bằng cho cơ thể'),
(13, 'Kettlebell Swing – Vung tạ chuông', '“Swing kiểu Nga chỉ dừng lại ở vị trí ngang mắt và tập trung vào phần\r\nhông cũng như gân kheo, nhưng với kiểu Mỹ bạn sẽ đưa qua khỏi đầu và tập thêm được\r\ncho không chỉ hông, gân kheo và còn cả vai nữa.”'),
(14, 'Buttery Sit Up – Gập bụng hình bướm\r\n', '“tư thế để chân hình cánh bướm sẽ đặt áp lực lên phần bụng nhiều hơn vì nó không cho phép bạn sử dụng cơ gấp ở hông trong suốt quá trình tập. Sử dụng miếng đệm ở lưng sẽ giúp bạn thực hiện động tác này trơn tru hơn“.\r\n'),
(15, 'Wide Grip Pull Up – Hít xà rộng tay\r\n', 'Đầu tiên đi tới máy hít xà, đu người lên và thực hiện động tác hít xà cơ bản.'),
(16, 'Madicine Ball Twist – Cầm bóng vặn người\r\n', 'Kiểu tập này khá giống với bài Russian Twist thường gặp, tuy nhiên cơ thể bạn sẽ ngả ra sau nhiều hơn.\r\nBước 1: Cầm 1 quả bóng hoặc tạ tùy ý trước ngực. Nâng 2 chân lên và ngả người ra sau,\r\nnâng vai lên khỏi sàn.\r\nBước 2: Xoay người từ trái qua phải và ngược lại. Cố định lưng, chân nhé. Nhớ siết cơ bụng để giữ thăng bằng.\r\n'),
(17, 'Reverse Crunch – Gập bụng ngược\r\n', 'Nằm trên sàn, co 2 gối 90 độ, sau kéo gối về gần ngực, nâng lưng dưới lên khỏi sàn.\r\n'),
(18, 'Bent Arm Dumbbell Pull Over – Nằm vớt tạ', 'Các bạn đặt vai lên ghế tập, phần còn lại cơ thể giữ song song song sàn nhà, 2 tay cầm 1 đầu tạ Dumbbell, cẳng tay duỗi thẳng và giữ trước ngực.\r\nTừ từ đưa ta qua đầu xuống dưới, đến khi thấy cơ ngực căng ra thì dừng lại 1 giây rồi trở lại vị trí ban đầu.\r\n'),
(19, 'Wide Grip Lat Pull Down – Kéo xô rộng tay', 'Đầu tiên các bạn ngồi lên ghế, đặt 2 đùi vào bệ đỡ, 2 tay cầm thanh kéo xô, ngực hơi\r\nưỡn lên.\r\nKéo thanh kéo xuống ngay phía phần ngực trên. Trở về vị trí cũ và lặp lại động tác.\r\n'),
(20, 'Underhand Cable Pull Down – Kéo xô ngược tay\r\n', 'Giống với bài trên, chỉ khác là 2 tay bạn sẽ cầm hẹp hơn và lòng bàn tay hướng vào thân\r\nmình.'),
(21, 'Exercise Ball Crunch – Gập bụng trên bóng', 'Các bạn nằm trên 1 quả bóng tập, 2 chân đặt trên sàn, rộng bằng vai.\r\nThực hiện động tác gập bụng trên bóng, chú ý thực hiện có kiểm soát và siết cơ bụng để\r\ngiữ thăng bằng.\r\n'),
(22, 'Standing Biceps Cable Curl – Đứng tập tay trước với máy kéo cá', 'Các bạn vào máy kéo cáp, điều chỉnh ròng rọc xuống mức thấp nhất, 2 tay cầm thanh\r\nkéo ngang. Đứng thẳng, cánh tay ép sát vào thân người cố định.\r\nTừ từ kéo cẳng tay lên vị trí cao nhất, giữ 1 giây và từ từ trở lại vị trí ban đầu.\r\n'),
(23, 'Spider Crunch – Gập bụng kiểu người nhện\r\n', 'Bước 1: Các bạn vào từ thế chống đẩy.\r\nBước 2: Kéo gối phải lên phía sau cùi chỏ phải đồng thời hạ thấp người xuống.\r\nBước 3: Trở lại vị trí ban đầu và thực hiện lại cho bên kia.\r\n'),
(24, 'Hammer Curl – Đứng cuốn tạ\r\n', 'Khá giống với bài Cable Curl, chỉ khác là bạn sẽ sử dụng 2 cặp tạ tay, lòng bàn tay\r\nhướng vào thân người và thực hiện động tác cuốn tay lên thôi nhé.\r\n'),
(25, 'Tuck Jump – Bật nhảy co gối', 'Bước 1: Đứng thẳng, 2 chân đặt cạnh nhau.\r\nBước 2: Chùng gối xuống về tư thế squat, sau đó bật mạnh lên cao nhất có thể đồng\r\nthời kéo gối lên chạm vào 2 tay ở trên.\r\nBước 3: Tiếp đất bằng mũi chân và lập tức chuyển về tư thế Squat và lặp lại động tác'),
(26, 'Barbell Curl – Cuốn tạ tập tay trước', 'Bài này không khác gì bài Cable Curl, bạn chỉ thay bằng thanh đòn thôi nha.\r\n'),
(27, 'Chạy bộ trên máy tập', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `batchs`
--

CREATE TABLE `batchs` (
  `id` int(10) UNSIGNED NOT NULL,
  `prgid` int(10) UNSIGNED NOT NULL,
  `actid` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `batchs`
--

INSERT INTO `batchs` (`id`, `prgid`, `actid`, `date`, `start`, `end`) VALUES
(2, 1, 5, '2017-12-06', '17:00:00', '17:20:00'),
(3, 1, 6, '2017-12-06', '17:30:00', '18:00:00'),
(4, 1, 7, '2017-12-06', '18:00:00', '18:20:00'),
(5, 1, 8, '2017-12-06', '18:35:00', '19:00:00'),
(6, 1, 9, '2017-12-06', '19:00:00', '20:00:00'),
(7, 1, 5, '2017-12-08', '17:00:00', '18:00:00'),
(8, 1, 6, '2017-12-08', '18:00:00', '19:00:00'),
(9, 1, 7, '2017-12-07', '18:00:00', '18:25:00'),
(10, 1, 8, '2017-12-07', '18:30:00', '19:00:00'),
(11, 2, 10, '2017-12-07', '17:00:00', '17:15:00'),
(12, 2, 6, '2017-12-07', '17:25:00', '17:45:00'),
(13, 2, 11, '2017-12-08', '18:00:00', '18:10:00'),
(14, 2, 12, '2017-12-08', '18:15:00', '18:00:31'),
(15, 2, 13, '2017-12-09', '18:00:00', '18:20:00'),
(16, 2, 14, '2017-12-09', '18:30:00', '19:00:00'),
(17, 3, 15, '2017-12-08', '17:00:00', '17:15:00'),
(18, 3, 16, '2017-12-08', '17:20:00', '17:30:00'),
(19, 3, 18, '2017-12-09', '17:30:00', '17:40:00'),
(20, 3, 19, '2017-12-09', '17:45:00', '17:55:00'),
(21, 3, 21, '2017-12-10', '18:20:00', '18:30:00'),
(22, 3, 22, '2017-12-10', '17:00:00', '17:30:00'),
(23, 4, 15, '2017-12-09', '18:00:00', '18:10:00'),
(24, 4, 17, '2017-12-09', '18:15:00', '18:35:00'),
(25, 4, 19, '2017-12-11', '17:00:00', '17:09:00'),
(26, 4, 18, '2017-12-11', '17:20:00', '17:30:00'),
(27, 4, 21, '2017-12-12', '17:25:00', '17:40:00'),
(28, 4, 22, '2017-12-12', '17:45:00', '18:00:00'),
(29, 4, 24, '2017-12-13', '17:00:00', '17:10:00'),
(30, 4, 25, '2017-12-13', '17:15:00', '17:30:00'),
(31, 5, 15, '2017-12-12', '17:00:00', '17:10:00'),
(32, 5, 23, '2017-12-12', '17:15:00', '17:30:00'),
(33, 5, 19, '2017-12-13', '18:00:00', '18:10:00'),
(34, 5, 21, '2017-12-13', '18:15:00', '18:25:00'),
(35, 5, 24, '2017-12-14', '17:00:00', '17:10:00'),
(36, 5, 20, '2017-12-14', '17:21:00', '17:35:00'),
(37, 6, 19, '2017-12-14', '17:00:00', '17:10:00'),
(38, 6, 26, '2017-12-14', '17:15:00', '17:25:00'),
(39, 6, 17, '2017-12-15', '17:30:00', '17:40:00'),
(40, 6, 13, '2017-12-15', '18:00:00', '18:10:00'),
(41, 6, 27, '2017-12-16', '18:00:00', '18:10:00'),
(42, 6, 10, '2017-12-16', '17:35:00', '17:45:00'),
(43, 6, 16, '2017-12-18', '17:11:00', '17:20:00'),
(44, 6, 24, '2017-12-18', '17:25:00', '17:36:00'),
(45, 7, 14, '2017-12-16', '17:00:00', '17:10:00'),
(46, 7, 21, '2017-12-16', '17:15:00', '17:20:00'),
(48, 7, 23, '2017-12-18', '17:00:00', '17:10:00'),
(49, 7, 25, '2017-12-18', '17:30:00', '17:35:00'),
(50, 7, 16, '2017-12-19', '17:00:00', '17:10:00'),
(51, 7, 18, '2017-12-19', '17:20:00', '17:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_30_173611_create_programs_table', 1),
('2015_11_09_195836_add_category_id_image_to_programs', 1),
('2015_11_09_200213_blog_categories', 1),
('2015_11_09_201826_blog_tags', 1),
('2015_11_09_202625_blog_post_tags', 1),
('2017_11_29_160121_create_actions_table', 1),
('2017_11_29_162604_create_batchs_table', 1),
('2017_11_29_175434_create_participate_table', 1),
('2017_12_02_122434_add_constraint_to_tables', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_30_085919_depts', 1),
('2015_10_30_173611_create_posts_table', 1),
('2015_11_09_195733_rename_context_in_posts', 1),
('2015_11_09_195836_add_category_id_image_to_posts', 1),
('2015_11_09_200213_blog_categories', 1),
('2015_11_09_201826_blog_tags', 1),
('2015_11_09_202625_blog_post_tags', 1),
('2017_11_29_160121_create_actions_table', 1),
('2017_11_29_162245_create_programs_table', 1),
('2017_11_29_162604_create_batchs_table', 1),
('2017_11_29_175434_create_participate_table', 1),
('2017_11_29_193511_create_coachs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `participate`
--

CREATE TABLE `participate` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `prgid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `programs`
--

CREATE TABLE `programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` int(10) NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `coachid` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `programs`
--

INSERT INTO `programs` (`id`, `url`, `title`, `description`, `content`, `image`, `level`, `coachid`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hướng dẫn tập ngực cắt nét cho nam với huấn luyện viên Nguyễn Công Tình\r\n', 'Bạn đang muốn tìm 1 hướng dẫn tập ngực cắt nét để bộ ngực của mình trông đẹp hơn, rõ đường nét hơn?', 'Ai mà không thích mặc những chiếc áo mà lộ lên bộ ngực lực lưỡng đúng không nào, nó\r\nthật sự rất là cuốn hút đúng không.\r\nNếu bạn từng theo dõi bài hướng dẫn tập lưng xô chữ V của Nguyễn Công Tình thì chắc chắn bạn cũng cảm nhận được sự hiệu quả của buổi tập đó đúng không nào, vậy thì nếu bạn là fan cuồng của tập ngực thì chắc chắn sẽ thích buổi hướng dẫn hôm nay của anh ấy cho\r\nxem.\r\n', NULL, 2, 3, '2017-12-05 17:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Lịch tập tăng sức mạnh như siêu anh hùng trong từ Nguyễn Tuấn Linh', 'Lịch tập tăng cơ, tăng cân thì đã có nhiều trong phần giáo án thể hình tuy nhiên lịch tập\r\ntăng sức mạnh thì hôm nay mới cho anh em tập luyện.', 'Với lịch tập gym này, bạn sẽ có thể chắc nịch như Người sói, mạnh mẽ như Hulk và nhanh nhẹn như người nhện, chưa kể còn có khả năng phục hồi nhanh chóng nữa.\r\nLưu ý : Lịch tập này được thiết kế từ HLV thể hình Nguyễn Tuấn Linh, quán quân của Master 45-49 Division tại CrossFit Game 2016 vừa qua và đảm bảo là bạn sẽ rất khác nếu theo lịch tập này nghiêm túc trong 8 tuần.\r\n', NULL, 3, 6, '2017-12-06 17:00:00', '0000-00-00 00:00:00'),
(3, 3, 'Hướng dẫn tập lưng, tay trước cho nữ hiệu quả cùng Phạm Hoàng Hưng', 'Bạn gái muốn có một cách tay thon thả, một rãnh lưng gợi cảm thì hãy lưu ngay lại hướng\r\ndẫn tập lưng, tay trước cho nữ của huấn luyện viên Hoàng Hưng ngay và luôn nhé.', 'Ngoài ngực, mông ra thì lưng là một trong những điểm gợi cảm nhất của người phụ nữ, chắc chắc bạn luôn cảm thấy mê mẩn một cô gái gái sở hữu một tấm lưng thon với rãnh\r\nlưng gợi cảm đúng không nào. Vì vậy nếu bạn chưa biết làm sao để khiến cho lưng và cánh tay của mình thon gọn hơn thì đây chính là bài viết dành cho bạn.\r\nỞ lịch tập gym lưng xô cho nữ này có cả tập lưng, tay trước, bụng và cả chạy bộ nhằm tối ưu hóa cho việc đốt mỡ trên cơ thể được nhanh hơn.\r\nLịch này khá nặng phù hợp với các bạn tập ít nhất nửa năm trở lên. Nếu bạn là người mới tập gym thì có thể giảm bớt bài tập hoặc số lần lặp để phù hợp với sức của mình hơn nhé.', NULL, 3, 5, '2017-12-06 17:00:00', '0000-00-00 00:00:00'),
(4, 4, 'Cách để giảm mỡ lưng và tay sau cho nữ trong 1\r\nbuổi tập\r\n', 'Giảm mỡ lưng là một điều khá khó khăn dành cho mọi người. Bạn có khá ít các bài tập có thể làm giảm mỡ lưng.', 'Để có thể giảm mỡ lưng an toàn và hiệu quả thì bạn hãy theo dõi các bài tập sau đây.\r\nChúng sẽ có nhiều lợi ích dành cho bạn.\r\nViệc giảm mỡ lưng còn phụ thuộc vào tỉ lệ mỡ trên toàn cơ thể của bạn nữa, do\r\nđó muốn vùng mỡ lưng của bạn giảm thì trước hết bạn cần phải giảm tỉ lệ mỡ của cơ thể\r\nxuống thấp hơn thì mới giảm mỡ cho lưng được bạn nhé.\r\n', NULL, 1, 4, '2017-12-06 17:00:00', '0000-00-00 00:00:00'),
(5, 5, 'Lịch tập gym chuẩn cho nam, mỡ đi đi, cơ ở lại ', 'hôm nay mình sẽ giới thiệu cho các bạn\r\nmột giáo án tập gym mới với hướng dẫn để các bạn có thể dễ dàng theo dõi hơn.', 'Nếu bạn muốn cơ thể hình mình hiện rõ các đường nét cơ bắp hơn, tăng cường sức mạnh\r\nnhiều hơn như 1 chiếc xe đua phân khối lớn. Nếu bạn vẫn chỉ đang tập theo phương pháp\r\ncũ và thấy không cải thiện nhiều thì hãy áp dụng 1 giáo án tập gym mới này.\r\nLịch tập gym này sẽ giúp bạn đốt cháy tối đa lượng mỡ trong cơ thể của bạn và nâng mức độ cơ bắp của bạn lên 1 tầm cao mới hơn.\r\n', NULL, 0, 2, '2017-12-06 17:00:00', '0000-00-00 00:00:00'),
(6, 6, 'Hướng dẫn tập gym cho người bận rộn full body với Super sets', '1 hướng dẫn tập gym cho người bận rộn full body kết hợp kĩ thuật tập Super Set, giúp cho các bạn tranh thủ thời\r\ngian tập luyện được tốt nhất.\r\n', '1 hướng dẫn tập gym cho người bận rộn full body kết hợp kĩ thuật tập Super Set, giúp cho các bạn tranh thủ thời gian tập luyện được tốt nhất.\r\nCác bạn lưu ý là hướng dẫn này không áp dụng cho những bạn tập thường xuyên mà chỉ\r\ndành cho những bạn chỉ có thể tập 2-3 ngày/tuần thôi nhé.\r\nTrong đó có 4 bài tập “đa khớp” để mang lại tác động cho nhiều nhóm cơ cùng lúc hơn, nó\r\nsẽ giúp xây dựng cơ bắp nhanh hơn và đốt cháy được nhiều calo dư thừa hơn.\r\n', NULL, 1, 3, '2017-12-07 17:00:00', '0000-00-00 00:00:00'),
(7, 7, 'Lịch tập cơ bụng 3 ngày 1 tuần khoa học để mau lên bụng 6 múi\r\n', 'Lịch tập cơ bụng 3 ngày 1 tuần này sẽ giúp cho các bạn đang có nhu cầu giảm mỡ bụng để có bụng phẳng, ro thon, cơ bụng 6 múi', '– Các lịch tập này được chia theo từng ngày, bạn có thể tập thêm nó sau buổi tập chính của mình cũng được.\r\n– Bạn thực hiện các set bài tập liên tục xoay vòng, tức là bài 1, 2, 3 liên tục trong 1 hiệp và sau đó lặp lại đến hết tất cả các set. Nghỉ từ 60 đến 90 giây sau khi đã hoàn thành 1 hiệp.\r\nTập lại theo ý muốn.\r\n', NULL, 2, 5, '2017-12-07 17:00:00', '0000-00-00 00:00:00'),
(8, 8, 'Giáo án tập tạ hoàn hảo cho phái nữ từ A đến Z\r\n', 'Làm sao tìm kiếm giáo án tập tạ hoàn hảo? Vẫn luôn là câu hỏi không chỉ khiến phái nam\r\ntrăn trở, mà nó còn là vấn đề được chị em quan tâm hàng đầu', 'Làm sao tìm kiếm giáo án tập tạ hoàn hảo? Vẫn luôn là câu hỏi không chỉ khiến phái nam trăn trở, mà nó còn là vấn đề được chị em quan tâm hàng đầu. Vì việc lựa chọn một quy trình tập luyện nó quyết định đến hiệu quả quả cả quá trình luyện tập. Vậy bạn đã có cho mình một giáo án phù hợp cho bản thân chưa?\r\nTập tạ thường được biết đến là các bài tập dành cho nam giới. Nhưng không phải chỉ có nam giới mới cần tập tạ mà cả phái nữ cũng cần vậy. Vì nhiều người lầm tưởng phái nữ nếu tập tạ sẽ khiến cho cơ bắp. Đó hoàn toàn là sai lầm, tập tạ đúng cách sẽ không khiến bạn có cơ bắp mà nó giúp cho các cơ của bạn săn chắc hơn. Cùng tham khảo ngay giáo án tập\r\ntạ 12 tuần dưới đây nhé ^^.\r\n', NULL, 2, 4, '2017-12-07 17:00:00', '0000-00-00 00:00:00'),
(9, 9, 'Giáo trình tập giảm mỡ toàn thân tuyệt vời', 'một giáo trình tập giảm mỡ toàn thân cực kỳ hiệu quả và được hàng ngàn người trên thế giới tin tưởng tập luyện', 'một giáo trình tập giảm mỡ toàn thân cực kỳ hiệu quả và được hàng ngàn người trên thế giới tin tưởng tập luyện\r\nMỗi ngày thực hiện 25 phút theo lịch được sắp xếp sẵn, bạn sẽ có khả năng đốt cháy lượng calo rất lớn tương đương 1 giờ tập luyện để giúp giảm mỡ toàn thân 1 cách hiệu quả nhất.\r\nTrong Giáo trình này không có lịch ăn uống (vì lịch ăn cũng theo của nước ngoài nên chúng ta cũng khó theo được) vì thế các bạn cần phải biết cách ăn lành mạnh nhất bằng cách truy cập vào 2 mục là dinh dưỡng thể hình và kiến thức thể hình để đọc các bài viết trong đó nhằm giúp nắm rõ các kiến thức cần thiết về ăn uống nhé.\r\n', NULL, 1, 6, '2017-12-08 17:00:00', '0000-00-00 00:00:00'),
(10, 10, 'Lịch tập gym nâng cao này sẽ khiến cơ bắp “khóc thét” vì quá phê', 'Tiêu đề hơi giật gân xíu nhưng đó là những điều bạn sẽ cảm nhận được từ khi mới bắt đầu chương trình này', 'Nguyên lý để giúp cơ bắp phát triển, xây dựng cơ nạc (clean) đó chính là bạn phải luôn thử thách cơ bắp, khiến chúng không bao giờ được cảm thấy thoải mái, việc đó sẽ khiến cho cơ bắp của bạn phải liên tục học cách phát triển và thích nghi với điều kiện khắc nghiệt mà bạn mang lại cho chúng.\r\n', NULL, 0, 5, '2017-12-08 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer` tinyint(1) NOT NULL DEFAULT '0',
  `coach` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date DEFAULT NULL,
  `adress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `customer`, `coach`, `bday`, `adress`, `weight`, `job`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Đình Đức', 'zzvvmm963@gmail.com', 'zzvvmm', '$2y$10$iFU3.53E2OMqbwXRd43EQuUkqwlib0dvN3AA8q0r5lG46euQscrQu', 0, 0, '0000-00-00', '', 45.60, '', NULL, '2017-12-04 14:02:10', '2017-12-04 14:02:10'),
(3, 'Nguyễn Công Tình', 'chinnguyen@gmail.com', 'ChinNguyen', '$2y$10$Q6vU0zS/1TTjyyfC1S3apOCW2pWTNeqKIuwNj0m8ZaDnKY9mwmoH.', 0, 1, '1996-11-11', 'Thái Bình', 90.00, 'dev', NULL, '2017-12-05 13:34:12', '2017-12-05 13:34:12'),
(4, 'Trần Quốc Bảo', 'baotran@gmail.com', 'TranBao', '$2y$10$8f70kOYNsc/JeQamfbzFXuxAEWO6QBOf4Ea4jywsTgf/1NH0mkF.2', 0, 1, '1996-11-22', 'Hà Nội', 70.00, 'tự do', NULL, '2017-12-05 13:37:18', '2017-12-05 13:37:18'),
(5, 'Phạm Hoàng Hưng', 'hunghoang@gmail.com', 'hoanghung', '$2y$10$6dUq3QQxBREEElaFrZuSzOgZTjjsWMnfLW4taJBZ8wsBQzKHWY9NW', 0, 1, '1996-04-01', 'Hưng Yên', 70.00, 'kỹ sư', NULL, '2017-12-05 13:45:41', '2017-12-05 13:45:41'),
(6, 'Nguyễn Tuấn Linh', 'linhnguyen@gmail.com', 'nguyenlinh', '$2y$10$/XDNLO86ZQOwK1/9IfTLWuQHR/3S/EpZ7lDqHQ7aQ0Chb96GY1Bu2', 0, 1, '1996-06-14', 'Nam Định', 69.00, 'sinh viên', NULL, '2017-12-05 13:46:52', '2017-12-05 13:46:52'),
(7, 'Trần Tuấn Anh', 'anhtuan@gmail.com', 'anhtuan', '$2y$10$ikLJi2bC5XwBe2Rpy9rRoOZAvkzChbfZRPGRTB7nhDjP4bh38CCD.', 1, 0, '1996-02-01', 'Nam Định', 75.00, 'nhà báo', NULL, '2017-12-05 13:49:10', '2017-12-05 13:49:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`actid`);

--
-- Chỉ mục cho bảng `batchs`
--
ALTER TABLE `batchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batchs_prgid_foreign` (`prgid`),
  ADD KEY `batchs_actid_foreign` (`actid`);

--
-- Chỉ mục cho bảng `participate`
--
ALTER TABLE `participate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participate_userid_foreign` (`userid`),
  ADD KEY `participate_prgid_foreign` (`prgid`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `programs_url_unique` (`url`),
  ADD KEY `programs_coachid_foreign` (`coachid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);
ALTER TABLE `users` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `actions`
--
ALTER TABLE `actions`
  MODIFY `actid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `batchs`
--
ALTER TABLE `batchs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `participate`
--
ALTER TABLE `participate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `batchs`
--
ALTER TABLE `batchs`
  ADD CONSTRAINT `batchs_actid_foreign` FOREIGN KEY (`actid`) REFERENCES `actions` (`actid`) ON DELETE CASCADE,
  ADD CONSTRAINT `batchs_prgid_foreign` FOREIGN KEY (`prgid`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `participate`
--
ALTER TABLE `participate`
  ADD CONSTRAINT `participate_prgid_foreign` FOREIGN KEY (`prgid`) REFERENCES `programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `participate_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_coachid_foreign` FOREIGN KEY (`coachid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
