-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 13 juin 2020 à 16:01
-- Version du serveur :  8.0.18
-- Version de PHP :  7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gregorythorel_symbnb`
--

-- --------------------------------------------------------

--
-- Structure de la table `ad`
--

DROP TABLE IF EXISTS `ad`;
CREATE TABLE IF NOT EXISTS `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77E0ED58F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=824 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ad`
--

INSERT INTO `ad` (`id`, `title`, `price`, `introduction`, `content`, `cover_image`, `rooms`, `slug`, `author_id`) VALUES
(792, 'Provident recusandae cum exercitationem voluptas est est.', 132, 'Dolore nostrum at et facilis alias unde dolorem iure. Quia dolore a omnis recusandae aliquid sint. Quam id quo iusto quos molestiae.', 'Ea consequatur est sunt. Possimus dolor animi dolore id. Animi quidem consequuntur voluptatem esse beatae sint quia iusto. Quo nihil sed amet molestiae commodi explicabo ullam similique. Quod nam tempora non incidunt quaerat maxime tempore. Maxime est facilis inventore dolorem. Et rerum voluptate et facilis quaerat eveniet. Totam optio quibusdam consequuntur voluptates voluptas natus qui et.', 'https://picsum.photos/1000/350?random=1', 5, 'provident-recusandae-cum-exercitationem-voluptas-est-est', 168),
(793, 'Fugiat dolores corporis maxime ducimus.', 101, 'Sapiente qui blanditiis rem dolorem ut amet quidem. Sed ut tenetur minima fugit. Autem modi omnis corrupti ullam laudantium unde.', 'Consequuntur ducimus modi eum vero atque. Et voluptate et distinctio nihil. Assumenda illum delectus eum. Est voluptate impedit autem. Ad dolores nam nobis dolores voluptas repudiandae. Natus temporibus ut perferendis eum reprehenderit molestiae. Ipsa molestias similique odit et accusamus placeat ipsam. Cupiditate rerum quibusdam quas dolores fuga facilis voluptas. Culpa non autem qui voluptatem vel et.', 'https://picsum.photos/1000/350?random=2', 3, 'fugiat-dolores-corporis-maxime-ducimus-quae-vero', 169),
(794, 'Rerum ut id consequatur aut.', 130, 'Eum eaque tenetur omnis aut voluptates. Dolores vero sint rem fugiat fugit accusamus.', 'Reiciendis ratione ut ea enim. Cum id aut provident praesentium animi quos voluptatem. Et non deserunt distinctio quia consequatur consequatur. Architecto repudiandae ullam eligendi et veritatis. A quia saepe velit aut enim ut voluptatibus dolore. Esse culpa dolor omnis quasi possimus. Veniam doloribus fuga ut. Nemo tenetur atque officiis id facilis labore. Est id consequatur nihil autem laboriosam voluptate suscipit. Architecto ut omnis quod facere aut molestias temporibus quis.', 'https://picsum.photos/1000/350?random=3', 1, 'rerum-ut-id-consequatur-aut', 175),
(795, 'Placeat eaque non vitae voluptatum molestias.', 42, 'Nesciunt reiciendis architecto id et rerum provident. Non aut sit quisquam ea culpa. Autem voluptas sit qui aut laboriosam.', 'Modi ipsa quos numquam asperiores nam. Beatae ab iure ut iusto sint quia quidem. Enim nemo facilis praesentium magnam. Itaque inventore nostrum et maxime cupiditate. Et qui pariatur harum alias sit minus. Et dolore ad et vel eius. Molestias officiis velit et et eos quo culpa. Dolore qui aliquid voluptas et. Sit suscipit illo rerum. Quis a quod omnis animi consequatur architecto aliquid. Omnis atque ut illum molestiae nobis. Aut et inventore et. Repellat qui error in ut exercitationem dolores minus. Quia quaerat sint est beatae.', 'https://picsum.photos/1000/350?random=4', 5, 'placeat-eaque-non-vitae-voluptatum-molestias', 170),
(796, 'Ratione blanditiis accusantium enim quia temporibus.', 71, 'Sint quis recusandae et voluptatem reiciendis in vero. Deserunt quisquam cum illum maiores.', 'Explicabo beatae rerum earum quam rerum. Aliquid id illum impedit qui harum. Deserunt corporis et ex ut nihil aut fugiat ut. Enim maiores accusamus non sed. Sit aut fugit voluptas atque ut. Commodi sunt sed officia laborum nemo ducimus aperiam quia. Voluptatem quibusdam sed sit porro eaque aliquid. Fugit natus porro impedit autem voluptatem. Et deserunt magni eum nam voluptate eveniet asperiores dolorem. Tempore vero sint est quisquam dicta ipsa iure est. Sit nemo recusandae voluptatum enim beatae. Ratione modi atque laudantium blanditiis et.', 'https://picsum.photos/1000/350?random=5', 5, 'ratione-blanditiis-accusantium-enim-quia-temporibus', 176),
(797, 'Aut nisi doloribus omnis pariatur corporis.', 99, 'Modi similique aut facilis dolorem laborum dolor maiores. Voluptas assumenda a voluptatem est aut vel.', 'Veritatis dolorem quis sint voluptas vero. Velit quaerat dolor harum dolore. Deleniti sapiente iure soluta sed voluptas. Et et esse ex totam vel velit earum dicta. Sint enim voluptatum asperiores pariatur unde voluptate. Deserunt deserunt non et suscipit sed iure animi. Veniam quis ut hic quo. Error illo repudiandae non dolorem rerum et nemo.', 'https://picsum.photos/1000/350?random=6', 5, 'aut-nisi-doloribus-omnis-pariatur-corporis', 170),
(798, 'Modi labore ipsa tempora sit.', 48, 'Maiores dolores sunt hic repudiandae ut quaerat aspernatur. Doloribus quos autem sapiente.', 'Omnis consequuntur debitis nisi natus doloribus aut esse. Magni autem ut asperiores commodi. Corrupti perspiciatis et maxime autem molestiae qui nulla vel. Odit consequatur odio perferendis quaerat. Architecto voluptatum veritatis sed sed qui rerum sit. Quod cumque blanditiis tenetur sint tempora. Veritatis aperiam nostrum sed similique. Esse alias veritatis voluptatem id dolor voluptatum maiores. Voluptatem in a facere ipsum excepturi. Perferendis in veritatis doloremque eos id iste id. Quia commodi molestiae earum voluptatibus soluta ducimus qui. Alias maiores dolorem magnam id nostrum repudiandae.', 'https://picsum.photos/1000/350?random=7', 4, 'modi-labore-ipsa-tempora-sit', 171),
(799, 'Architecto dolore nulla molestiae qui autem tempore ea.', 85, 'Sit id omnis hic aspernatur. Rerum blanditiis itaque beatae voluptatibus molestiae.', 'Amet doloremque autem alias dolore officia nemo non. Possimus quia quas quia non itaque. Expedita placeat delectus non alias in dolores enim. Aut quo sequi distinctio. Omnis sapiente repellat perspiciatis ut. Occaecati nemo ex incidunt quo qui aut. Sit tempora tempore culpa aspernatur quo.', 'https://picsum.photos/1000/350?random=8', 5, 'architecto-dolore-nulla-molestiae-qui-autem-tempore-ea', 177),
(800, 'Facilis voluptas exercitationem maiores et dolorem.', 80, 'Voluptate dolor dolorem ut vitae sequi quo. Voluptas nesciunt nihil voluptas. Sunt nobis assumenda repellendus minus iste voluptas aperiam.', 'Nam modi soluta sed aut tempore pariatur et. Molestiae blanditiis omnis eius maiores explicabo veritatis vel. Atque neque repellat nemo quod et in. Veritatis consectetur itaque ipsa distinctio minus voluptatem velit quo. Quia quidem voluptatum quam earum expedita. Omnis laboriosam occaecati dolorem laudantium et sint iusto molestiae. Officiis est magnam qui minima qui. Quos corporis fugit maxime nihil perspiciatis pariatur unde non. Omnis consectetur vero perspiciatis iste accusantium. Distinctio modi eos rerum beatae minima quae.', 'https://picsum.photos/1000/350?random=9', 3, 'facilis-voluptas-exercitationem-maiores-et-dolorem', 172),
(801, 'Magnam architecto suscipit inventore.', 83, 'Rerum iusto voluptatem explicabo a ipsum velit harum perferendis. Voluptates repellendus et libero vel voluptatem. Voluptas quia rerum repudiandae sit enim perferendis fuga.', 'Et omnis et soluta ut voluptatem. Voluptatem aspernatur sint commodi voluptas. Odit expedita aut blanditiis ipsum aut doloribus. Laboriosam aut fugit illum totam nobis. Ab libero similique quia unde iusto maiores illum. Deserunt ullam ipsa illo quas reprehenderit. Aliquam sed soluta est. Aperiam placeat voluptates corrupti quo corporis ipsum inventore libero. Quis eos et qui eum magni nesciunt et totam. Aut impedit minima et qui quis voluptatem. Omnis aperiam vero omnis accusamus. Dolor tempore accusantium necessitatibus nesciunt labore sed est vel.', 'https://picsum.photos/1000/350?random=10', 2, 'magnam-architecto-suscipit-inventore', 168),
(802, 'Architecto vitae id omnis dolore labore consectetur ipsam.', 134, 'Amet eum tempore ea velit dolorum. Ipsa necessitatibus consequuntur odio. Et facilis est eum sint aspernatur deleniti et.', 'Nostrum perspiciatis quaerat sit magni quam excepturi distinctio. Nemo maxime quos voluptas quaerat similique officia sint. Tempore et numquam consequatur molestiae autem accusantium quia. Qui fugiat vel enim occaecati libero. Sequi tempora dolores est ex. Vero dolores totam a et velit cum atque id. Nulla eos quo porro voluptas. Eum illo illum velit dolores nobis corporis optio. Aut temporibus et doloribus. Libero reiciendis excepturi veniam non consequatur aut. Quia aut quibusdam optio repudiandae aut. Et nihil quaerat accusamus dolor dignissimos ad placeat.', 'https://picsum.photos/1000/350?random=11', 4, 'architecto-vitae-id-omnis-dolore-labore-consectetur-ipsam', 175),
(803, 'Corporis sit sed deserunt qui.', 61, 'Voluptatibus qui voluptatem aut eius. Dicta qui aliquam consequuntur consequatur. Modi rem quibusdam qui odio quasi ratione.', 'Reprehenderit sed distinctio est itaque quia. Aliquid modi ut voluptas rem adipisci accusantium. Velit facere et dolorum et quam nulla ab quia. Minima provident fugit et velit non nulla enim. Tempore placeat vel laudantium laboriosam. Autem non voluptatum repellat ducimus aliquam ullam ab. Molestias quia animi voluptatum ea. Quia reiciendis voluptatum similique optio consequuntur. Nisi exercitationem hic dignissimos voluptatem eos. Est fuga et dolore. Veritatis enim enim et totam excepturi ab. Perferendis itaque itaque voluptatibus ducimus voluptatem harum. Praesentium aperiam perspiciatis eligendi aut labore.', 'https://picsum.photos/1000/350?random=12', 4, 'corporis-sit-sed-deserunt-qui', 171),
(804, 'Est est quod necessitatibus labore veritatis illo.', 117, 'Voluptatem delectus et hic tenetur incidunt pariatur veritatis. Voluptatum totam ea eum accusantium.', 'Quibusdam natus ut fugit mollitia et eum asperiores. Incidunt magnam reiciendis qui aut. Fuga nulla sint autem sit in numquam ducimus. Adipisci eos impedit officiis et ipsa. Magnam facilis laboriosam quia sequi dolores et exercitationem. Sed perspiciatis vero iure quidem itaque reprehenderit modi. Non sint aut asperiores consequatur harum veritatis reprehenderit consequuntur. Esse enim omnis a et.', 'https://picsum.photos/1000/350?random=13', 2, 'est-est-quod-necessitatibus-labore-veritatis-illo', 174),
(805, 'Qui commodi dolor eaque nisi non quo.', 68, 'Pariatur dolorum accusamus necessitatibus quo voluptate quo. In ipsam consectetur eligendi voluptas voluptas aspernatur consectetur.', 'Magnam ut assumenda corrupti corrupti voluptate perferendis ut. Quis commodi libero sint quia enim aut quia assumenda. Eligendi voluptatem sit voluptas quas est ut. A facilis commodi quibusdam ut qui non iure. Nihil blanditiis quis reiciendis quam. Ducimus ut nostrum vel id doloribus. Tempora sed temporibus voluptate pariatur. Enim libero omnis voluptas nostrum. Nobis omnis commodi consequatur expedita consequuntur. Aspernatur vel fugiat consequatur placeat neque omnis voluptatem facere.', 'https://picsum.photos/1000/350?random=14', 4, 'qui-commodi-dolor-eaque-nisi-non-quo', 174),
(806, 'Qui adipisci reiciendis non rem ut necessitatibus.', 125, 'Et quidem dolores possimus delectus et. Exercitationem animi accusantium aperiam vitae ullam eaque. At magni provident tempora expedita et.', 'Minus incidunt molestiae cumque numquam. Voluptas doloremque ad incidunt consectetur illum doloremque et possimus. Voluptatem nesciunt velit non quia. Illum rem nam occaecati et. Ea quae repellendus eos tempora. Laboriosam facilis perferendis qui at aliquam molestias. Sint rerum in facilis corrupti voluptatem. Illum voluptatum sed quod dolore et. Reiciendis voluptatibus ea sed fugit qui perspiciatis iusto et.', 'https://picsum.photos/1000/350?random=15', 3, 'qui-adipisci-reiciendis-non-rem-ut-necessitatibus', 175),
(807, 'Quidem est tenetur sit corrupti nihil ipsam.', 53, 'Necessitatibus nihil hic laboriosam. Autem qui fugit provident optio.', 'Totam expedita in debitis dicta labore dolores. Eum consequatur praesentium aut et ratione. Praesentium tempore maiores molestias natus sunt voluptatum nihil. Natus numquam delectus sunt fugiat. Dolores sed in et laborum alias. Molestiae ut ut enim. Eaque accusamus harum eligendi quod sint qui blanditiis libero. Veritatis quis vel enim explicabo. Accusantium quaerat et officiis voluptate doloremque nam. Et vero eligendi omnis voluptatem animi iure consequuntur.', 'https://picsum.photos/1000/350?random=16', 2, 'quidem-est-tenetur-sit-corrupti-nihil-ipsam', 177),
(808, 'Optio unde cum voluptatem quisquam laudantium alias occaecati.', 80, 'Possimus itaque dolore facilis temporibus. Optio fugit autem totam veritatis quasi est voluptatibus ab. Non nihil nemo delectus non culpa alias.', 'Eius odio cumque officia aut at. Dolorem nobis nam velit voluptatibus reiciendis perspiciatis accusantium. Officiis distinctio nulla ullam vel ullam cum. Non voluptas veniam eius quod optio. Aut perferendis voluptatem vitae repellat illum laboriosam. Beatae et suscipit distinctio est sed voluptates voluptatum. Qui veritatis ducimus quidem. Est sapiente velit magni pariatur maxime ut et.', 'https://picsum.photos/1000/350?random=17', 3, 'optio-unde-cum-voluptatem-quisquam-laudantium-alias-occaecati', 175),
(809, 'Nobis aperiam eaque omnis consequatur quasi aut minima.', 138, 'Est pariatur laudantium omnis in maiores. Vel ipsum ut neque consequatur. Ut provident est accusamus repellat dolores ut.', 'Expedita enim tempore quam rem praesentium qui fugit dolorem. Aut qui vel fuga ipsam quia qui voluptatum. Voluptatem et harum autem officiis corrupti. Aut molestias voluptas rerum accusantium suscipit omnis. Aperiam sed et quia non ipsa esse. Amet facere sunt qui. Accusamus quia cum itaque non officiis est vitae recusandae. Odit harum et maxime ea. Consequatur doloribus facere hic qui maxime. Aut omnis sunt eos sint eaque. Sunt culpa ducimus beatae nam qui sit repellendus. Enim unde cum deserunt nisi.', 'https://picsum.photos/1000/350?random=18', 5, 'nobis-aperiam-eaque-omnis-consequatur-quasi-aut-minima', 168),
(810, 'Eum suscipit id minus at cum voluptate sequi.', 148, 'Cupiditate consequatur doloremque ea officiis aut ad laboriosam. In eum illo velit tempora non.', 'Et dolor expedita non occaecati expedita vel. Est sit esse animi veritatis eum sit officia. Officia possimus praesentium explicabo modi. Velit necessitatibus quidem id reiciendis reiciendis qui voluptate qui. Est odit quis rerum esse odit nihil. Placeat qui omnis aut debitis consequatur. A a qui autem natus quasi. Sit ea et est corrupti et. Cupiditate nihil quis dolores. Quis cupiditate non consequuntur error et eum.', 'https://picsum.photos/1000/350?random=19', 2, 'eum-suscipit-id-minus-at-cum-voluptate-sequi', 176),
(811, 'Molestias est voluptatem quam vel itaque aut.', 123, 'Culpa hic quia mollitia cum ea rerum. Est occaecati accusamus qui explicabo iste sequi excepturi nulla. Quia aliquid iure quas ex maiores.', 'Hic consequatur cumque laudantium quasi ut necessitatibus exercitationem. Nostrum eveniet velit deleniti ad. Consequuntur quia consequuntur eius ipsam. Quo enim laudantium sed at. Placeat ea omnis minus minus. Consequatur eveniet labore eum quas sunt vero. Rerum aliquid velit nam nobis tempora. Excepturi id tenetur est omnis incidunt commodi nihil. Soluta sit molestiae doloribus molestiae aut dolores deserunt officia.', 'https://picsum.photos/1000/350?random=20', 3, 'molestias-est-voluptatem-quam-vel-itaque-aut', 168),
(812, 'Itaque qui eius rerum unde sit qui cumque.', 131, 'Veniam molestiae est commodi sed. Officia porro quae recusandae aspernatur tempora earum dolor. Eum id earum aliquid quos aliquam qui adipisci.', 'Quia aut consectetur nemo qui. Quam corrupti placeat omnis quos ut. Dicta voluptates eveniet et omnis quo. Ut suscipit tempore exercitationem iure molestiae et ab. Qui quidem perferendis nam velit quia nobis. Id repudiandae iure nihil est modi rerum. Suscipit fuga iste voluptatem nostrum rerum enim. Maiores voluptatem ut repellat debitis. Architecto eum accusamus voluptas architecto exercitationem dolores. Qui architecto nesciunt incidunt sint aut et est. Modi natus provident quidem qui. At non dignissimos magni animi. Dolor culpa quibusdam voluptate.', 'https://picsum.photos/1000/350?random=21', 3, 'itaque-qui-eius-rerum-unde-sit-qui-cumque', 175),
(813, 'Magni ut nam ipsam voluptatem ea illum.', 93, 'Perspiciatis sint explicabo hic rerum. Nisi quisquam adipisci laborum.', 'Sed minus sit quasi est est. Perferendis dolor et aut cupiditate rerum reiciendis. Sit ducimus sequi nihil sed reiciendis officiis. Dolores consequuntur vero similique quidem sint maiores et. Ut et aut enim fugit iure deleniti. Magni quidem enim voluptatem molestiae sapiente omnis voluptatem. Beatae officiis reiciendis corporis debitis nemo sed enim. Rerum voluptates molestias necessitatibus nemo aut eum. Fuga quia dicta aperiam adipisci ab perspiciatis. Doloribus dolorem maxime quia sed. Nobis illo et est dolorum. Odit laudantium consectetur et in ducimus consequatur magni. Odit quo non consequatur provident. In fugit nam fugit alias dolores esse.', 'https://picsum.photos/1000/350?random=22', 2, 'magni-ut-nam-ipsam-voluptatem-ea-illum', 177),
(814, 'Explicabo et quidem saepe aut.', 139, 'Est expedita praesentium quidem rerum fugiat dignissimos aut. Rerum asperiores ex optio amet. Facere eos blanditiis itaque adipisci ullam.', 'Eius omnis nulla ut distinctio et omnis quo. Accusantium amet laborum recusandae saepe natus hic. Sequi nesciunt odio ratione velit amet consequuntur consectetur. Dolor est aut dolorem soluta omnis ipsum cum. Et id iste similique voluptatem ut alias ut. Quo id non impedit. Eos quisquam excepturi quia provident consequuntur quia.', 'https://picsum.photos/1000/350?random=23', 2, 'explicabo-et-quidem-saepe-aut', 171),
(815, 'Rerum aut error velit aut ipsam iste.', 79, 'Facilis atque non aliquid facere mollitia optio. Exercitationem rerum beatae soluta tempore nihil velit inventore.', 'Est quia ad nulla dolor illum. Aut autem dolores dolores repellendus voluptatibus sit voluptas libero. Quos qui commodi et velit ipsam omnis. Exercitationem velit vitae deserunt repudiandae recusandae eligendi. Odio dolor perferendis debitis et. Ut minima tempora velit illo optio aspernatur nemo autem. Sunt deserunt ipsam iste non. Est nostrum repellat temporibus quia harum. Quam magnam vel nemo reiciendis accusantium maxime suscipit. Qui ut dolorum quis itaque quidem voluptatem placeat odit. Magnam minus labore voluptas beatae. Modi et est eligendi. Magni et non totam nesciunt.', 'https://picsum.photos/1000/350?random=24', 3, 'rerum-aut-error-velit-aut-ipsam-iste', 170),
(816, 'Numquam earum quia eos ex.', 141, 'Qui dolor sint ut laboriosam qui. Est ut velit et aut qui voluptatem aliquid.', 'Earum culpa laudantium doloremque et eveniet. Similique quos odit suscipit facere sint doloribus sint. Et consequatur iusto ea non. Ullam quod velit placeat non. Qui animi culpa temporibus alias tempora. Itaque nesciunt reiciendis autem dolores quis dignissimos facilis. Omnis non vel magnam.', 'https://picsum.photos/1000/350?random=25', 3, 'numquam-earum-quia-eos-ex', 177),
(817, 'Error et et adipisci itaque repellendus.', 111, 'Iusto fugit id sequi sapiente et dolore sit. Odio sequi velit magnam qui sint et natus sed. Hic quaerat assumenda impedit at voluptatibus eligendi vel et.', 'Voluptatem consectetur fugiat eos illum velit vero et repudiandae. Alias et esse fugit praesentium dolores. Distinctio sed nihil et dolor. Voluptate libero voluptatem commodi delectus. Iusto error autem sequi fugiat incidunt ratione totam. Quaerat soluta et et non qui sequi. Aut culpa sit consectetur ipsam deserunt. Autem aut quas dolorem quia architecto. Accusamus perferendis quaerat esse.', 'https://picsum.photos/1000/350?random=26', 5, 'error-et-et-adipisci-itaque-repellendus', 176),
(818, 'Earum voluptatem sed doloribus.', 42, 'Doloribus aspernatur rerum accusamus ad. Et et eveniet sint dignissimos quaerat ut pariatur.', 'Qui ipsa porro minima in velit ut. Assumenda nam tempore eius enim consequatur. Quia est exercitationem recusandae consequatur eos deleniti voluptas. Necessitatibus quos et autem iusto consequatur molestias. Amet eos aut ut ducimus. Explicabo atque sit harum tempore explicabo cumque. Aliquid eos maxime voluptatibus. Accusamus est ea nam earum facilis. Quae ea ipsum minus veritatis quos earum provident. Delectus culpa minima atque non iure et. Accusamus nulla dolorum eos rem velit aliquam dolorem. Aut temporibus quas iure non et a aliquam.', 'https://picsum.photos/1000/350?random=27', 3, 'earum-voluptatem-sed-doloribus', 175),
(820, 'Rerum repudiandae et iure.', 134, 'Nobis id omnis explicabo ipsam quidem perferendis eligendi atque. Illum recusandae voluptas est autem et autem. Ut est illum veritatis aut itaque non.', 'Culpa sapiente at voluptatem impedit voluptatem. Assumenda modi esse aliquam doloribus. Enim hic occaecati voluptatum. Commodi sunt culpa dolore excepturi et sed dolor. Omnis eos quaerat facere eligendi ipsam vel reiciendis nostrum. Deserunt illum et occaecati tempore dolor. Consequatur placeat fugiat qui in illum provident. Voluptatum vitae ad dignissimos nostrum dolores. Ipsum illum dolorem blanditiis. Atque omnis error voluptatem officiis.', 'https://picsum.photos/1000/350?random=29', 4, 'rerum-repudiandae-et-iure', 170),
(821, 'Tempora est harum corrupti reprehenderit.', 58, 'Rerum qui voluptatem nihil exercitationem. Autem ea asperiores aut omnis.', 'Dolorem totam veniam incidunt ut sunt. Sed officia vero deserunt accusantium corporis adipisci. Laboriosam commodi doloremque mollitia autem ullam culpa saepe. Distinctio ipsa velit rerum ipsam. Vel nulla id error ut laborum deleniti. Porro ut et voluptatibus. Quis similique reiciendis culpa odio qui est repellendus aut. Optio voluptas esse sunt quia odit placeat. Sunt placeat quia sit ut cum.', 'https://picsum.photos/1000/350?random=30', 1, 'tempora-est-harum-corrupti-reprehenderit', 172),
(823, 'Nouvelle annonce', 150, 'Une description courte de ma nouvelle annonce', 'Une description un peu plus longue de ma nouvelle annonce après modification des fichiers css !!!', 'https://picsum.photos/1000/350?random=156', 3, 'nouvelle-annonce', 167);

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booker_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `amount` double NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_E00CEDDE8B7E4006` (`booker_id`),
  KEY `IDX_E00CEDDE4F34D596` (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `booker_id`, `ad_id`, `start_date`, `end_date`, `created_at`, `amount`, `comment`) VALUES
(184, 167, 793, '2020-03-25 00:00:00', '2020-04-04 00:00:00', '2019-12-19 13:20:47', 1010, 'Neque at qui quibusdam voluptas. Occaecati dignissimos dolores corrupti veritatis voluptate a et et. Facere et nulla aperiam dolor dolores et. Beatae quas doloribus est minima. Asperiores id soluta corrupti et.'),
(185, 175, 792, '2020-05-29 22:49:02', '2020-06-04 22:49:02', '2020-05-23 09:55:48', 792, 'Et non suscipit pariatur ex. Repellat aspernatur architecto velit qui. Id est est et consequatur ex quaerat. Hic voluptate dolor est excepturi. Doloribus incidunt quae animi tempora.'),
(186, 174, 792, '2020-06-06 22:58:08', '2020-06-12 22:58:08', '2019-12-18 17:05:50', 792, 'Iusto est accusamus eum distinctio illo. Autem voluptas deserunt voluptatem fuga illo. Deserunt magni est laudantium voluptatem enim deserunt. Quia voluptates ab animi deserunt assumenda delectus recusandae.'),
(187, 169, 793, '2020-04-02 07:20:19', '2020-04-09 07:20:19', '2020-02-27 22:47:28', 707, 'Rerum autem dolores adipisci perferendis quod. Inventore voluptatem et voluptates quae. Ut aut quia at ut necessitatibus quibusdam. Voluptates rem rem accusantium corrupti.'),
(188, 175, 793, '2020-05-06 11:41:28', '2020-05-15 11:41:28', '2020-02-23 06:20:15', 909, 'Quasi aut ea sint necessitatibus molestias qui nostrum qui. Similique facere pariatur iste harum sit omnis. Dolorem ab ut recusandae saepe ut aut molestiae.'),
(189, 174, 793, '2020-05-08 03:20:49', '2020-05-11 03:20:49', '2020-03-02 15:29:22', 303, 'Aspernatur aspernatur deserunt voluptas iure autem quia est. Veniam voluptate beatae necessitatibus enim aut. Molestias ipsa delectus nemo aut. Similique delectus laboriosam voluptas at.'),
(190, 173, 794, '2020-05-24 20:15:20', '2020-06-02 20:15:20', '2020-02-18 22:29:04', 1170, 'A vel quo amet harum. Consectetur aliquid sit dicta distinctio eaque. Ex quis ipsam harum ab omnis soluta maxime.'),
(191, 175, 794, '2020-05-24 12:03:13', '2020-06-02 12:03:13', '2020-04-14 06:16:33', 1170, 'Ab et officia voluptas unde eius. Officiis consequatur qui in provident. Cum est blanditiis dolor a sequi porro. Praesentium necessitatibus accusamus illum sit est et harum.'),
(192, 176, 794, '2020-05-24 04:36:25', '2020-06-02 04:36:25', '2020-03-17 06:22:40', 1170, 'Consequatur et est ut nobis quae dolorem qui. Magni quia veritatis cum quo quis placeat. Ut quia neque tempora id ex.'),
(193, 177, 794, '2020-04-16 06:09:44', '2020-04-26 06:09:44', '2020-03-25 03:59:45', 1300, 'Minus necessitatibus deleniti non et totam ut. Natus omnis cum sunt debitis optio unde ex atque. Et assumenda pariatur sapiente ut sint.'),
(194, 173, 795, '2020-05-20 22:57:49', '2020-05-30 22:57:49', '2020-01-25 00:22:20', 420, 'Et voluptatem velit ab sapiente quos numquam. Quia iure commodi error consequatur. Error rem reprehenderit id quaerat hic.'),
(195, 168, 795, '2020-04-05 14:13:04', '2020-04-11 14:13:04', '2019-12-28 13:50:56', 252, 'Fugit voluptatum voluptate magnam praesentium et consequatur. Dolore qui consequuntur consequuntur impedit molestiae. Sed animi vitae possimus optio ut officiis ut. Enim et ab aspernatur in. Explicabo eos fuga neque itaque neque.'),
(196, 168, 795, '2020-03-13 10:09:40', '2020-03-20 10:09:40', '2020-04-26 11:42:50', 294, 'Dolor ut nihil quaerat voluptate architecto laborum est autem. Pariatur cum accusamus debitis placeat.'),
(197, 169, 795, '2020-05-02 13:58:45', '2020-05-06 13:58:45', '2020-06-06 18:51:05', 168, 'Odit quo est ut blanditiis maxime repellat sed cupiditate. Aut consectetur rem voluptas quaerat assumenda inventore. Fugiat culpa et delectus fugit voluptas incidunt.'),
(198, 169, 796, '2020-03-31 02:25:59', '2020-04-08 02:25:59', '2020-05-11 00:00:29', 568, 'Id totam itaque repellendus et laboriosam pariatur mollitia mollitia. Ut recusandae nobis placeat sunt explicabo quia cum. Sit nostrum iusto porro reprehenderit iste aliquam consequuntur.'),
(199, 171, 796, '2020-03-12 18:01:14', '2020-03-20 18:01:14', '2020-05-29 19:21:06', 568, 'In facere ipsam quia sed tempore voluptates illum. Minus vel ut sequi beatae officia officiis iusto ducimus.'),
(200, 168, 797, '2020-05-12 05:23:03', '2020-05-17 05:23:03', '2020-03-13 07:16:50', 495, 'Libero id in fuga dolor vel. Dicta quae aut harum veniam vitae enim ut. Officiis sint neque id numquam et necessitatibus tempora.'),
(201, 173, 797, '2020-06-08 13:28:36', '2020-06-13 13:28:36', '2020-02-03 17:45:15', 495, 'Sed alias voluptatem pariatur. Quaerat perferendis eligendi sequi.'),
(202, 174, 798, '2020-03-23 15:23:20', '2020-03-29 15:23:20', '2020-03-27 07:32:01', 288, 'Officia molestias qui fugiat nostrum animi. Vitae laborum ipsa quisquam temporibus.'),
(203, 176, 798, '2020-03-30 20:52:21', '2020-04-07 20:52:21', '2020-01-26 00:09:57', 384, 'Harum officiis aliquid natus soluta qui ut eius. Laborum ut corporis accusamus quaerat repellendus temporibus totam. Suscipit ipsam ut nihil ex temporibus. Sunt nostrum nulla iusto iste nihil.'),
(204, 176, 798, '2020-03-27 20:09:24', '2020-04-05 20:09:24', '2020-03-30 13:19:29', 432, 'Qui earum quis sed aut. Et quaerat temporibus dolorum. Excepturi ad saepe doloremque aut.'),
(205, 176, 798, '2020-06-01 13:57:48', '2020-06-06 13:57:48', '2020-02-27 19:54:07', 240, 'Incidunt voluptates eum eaque eum deserunt repellendus. Magnam ab nostrum adipisci magni a nihil molestias. Animi praesentium beatae nostrum ex repudiandae voluptatibus necessitatibus.'),
(206, 173, 798, '2020-06-07 01:20:18', '2020-06-14 01:20:18', '2020-01-13 06:38:04', 336, 'Veniam quis iste quisquam nihil veniam porro labore. Eos ab ipsum corrupti unde. Earum sint voluptate sit repellat expedita facilis.'),
(207, 169, 799, '2020-04-07 20:46:48', '2020-04-12 20:46:48', '2020-02-03 16:05:10', 425, 'Tempora ut impedit error ullam veritatis eveniet ut. Incidunt voluptate ipsa quod officia voluptates. Magnam minima aperiam quisquam ipsum qui sed.'),
(208, 174, 801, '2020-06-09 16:36:19', '2020-06-12 16:36:19', '2020-03-06 14:46:06', 249, 'Numquam sequi placeat commodi aut quia autem architecto. Voluptas velit molestiae eveniet ut aperiam non. Ut dolor necessitatibus fuga quis est consequatur distinctio.'),
(209, 169, 801, '2020-04-06 22:15:07', '2020-04-14 22:15:07', '2020-03-23 13:34:39', 664, 'Autem vitae molestiae fuga. Est officia repellendus sapiente pariatur modi. Aut quia dolorem provident itaque. Reprehenderit dignissimos quia illo voluptatem quia qui.'),
(210, 170, 802, '2020-05-13 10:46:10', '2020-05-22 10:46:10', '2020-04-12 04:59:18', 1206, 'Voluptatem nulla et eum debitis esse eius. Neque quia est numquam sapiente. Sequi repellat voluptates vel iure praesentium. Expedita ipsa repellat porro rerum sed voluptas.'),
(211, 174, 802, '2020-04-15 20:07:42', '2020-04-21 20:07:42', '2020-01-13 02:36:36', 804, 'Quis maiores est non dolor consectetur sint rerum. Maxime repudiandae tempora nemo magnam quae expedita. Vel enim illo odio animi suscipit occaecati harum. Sunt et expedita quia quis omnis sint.'),
(212, 174, 803, '2020-04-19 15:19:12', '2020-04-25 15:19:12', '2020-03-16 09:21:24', 366, 'Ut consequatur commodi quis quaerat est dolorem dolorum sapiente. Quidem perferendis fuga temporibus. Aut repudiandae fugit ut. Dolorem harum quae sequi voluptate ad.'),
(213, 175, 803, '2020-05-14 09:15:09', '2020-05-17 09:15:09', '2020-06-04 23:16:09', 183, 'Facilis et explicabo enim sed corrupti. Doloremque aut voluptates et et deleniti. Et alias deleniti inventore illo velit omnis. Sunt quisquam id et.'),
(214, 176, 804, '2020-05-23 08:54:20', '2020-05-28 08:54:20', '2020-03-04 01:19:52', 585, 'Delectus natus quo voluptatem quae sunt. Nemo quas praesentium reiciendis occaecati quia officia. Officia quam nam aliquam odit.'),
(215, 168, 804, '2020-04-09 12:24:54', '2020-04-13 12:24:54', '2020-03-09 19:15:10', 468, 'Necessitatibus labore non praesentium voluptatem voluptatem voluptatem deserunt facilis. Rerum velit fugit qui ut aliquam.'),
(216, 175, 804, '2020-04-04 05:20:46', '2020-04-09 05:20:46', '2020-04-20 11:23:51', 585, 'Distinctio odit nesciunt amet. Sunt molestias fuga consectetur incidunt et asperiores laudantium. Eum deleniti et quasi. Culpa eius maiores recusandae omnis omnis.'),
(217, 173, 804, '2020-05-29 05:42:15', '2020-06-06 05:42:15', '2020-04-06 06:54:07', 936, 'Sunt facilis voluptatem a eveniet dolores ratione. Et ea excepturi et iusto perferendis et. Facilis vitae qui animi ullam id iste qui. Sed dolores quos aut.'),
(218, 176, 805, '2020-04-10 11:18:50', '2020-04-14 11:18:50', '2020-01-11 02:37:42', 272, 'Saepe ipsum laboriosam earum id eos qui. Tenetur maiores voluptatum eos quis cum. Odio aut minima et mollitia voluptatum numquam.'),
(219, 170, 805, '2020-05-30 12:15:35', '2020-06-05 12:15:35', '2020-01-13 17:31:36', 408, 'Repellat iusto minus ut repellendus aut distinctio dolorem quia. Eius animi excepturi quisquam sunt molestias. Nulla voluptatem perspiciatis quam excepturi officiis ipsa tenetur. Ullam corporis labore possimus adipisci sed voluptatem suscipit cumque.'),
(220, 173, 805, '2020-04-02 05:24:32', '2020-04-06 05:24:32', '2020-02-02 21:50:43', 272, 'Et id ipsam ipsam nemo qui impedit. Alias est sint nesciunt et assumenda aliquam magni. Eos esse qui exercitationem quasi error facilis aspernatur nobis. Aliquid dicta magni atque voluptas eius explicabo quia vel.'),
(221, 168, 805, '2020-05-15 11:26:23', '2020-05-21 11:26:23', '2020-04-26 14:57:39', 408, 'Laudantium aut alias officiis voluptatibus eius. Nam qui ut delectus culpa omnis. Optio assumenda sed inventore iste velit numquam.'),
(222, 173, 805, '2020-05-10 08:23:11', '2020-05-18 08:23:11', '2020-05-29 01:47:21', 544, 'Excepturi possimus suscipit qui quos quasi. Ut vero eius labore sed atque neque. Officia deserunt sint dicta et architecto natus temporibus.'),
(223, 169, 805, '2020-04-19 21:57:25', '2020-04-25 21:57:25', '2020-05-09 19:53:47', 408, 'Autem dolor tempore dolor alias blanditiis velit ratione et. Magni perferendis et asperiores quisquam.'),
(224, 173, 805, '2020-03-23 05:30:14', '2020-03-26 05:30:14', '2020-01-04 08:47:17', 204, 'In quia et ipsam cum aut. Debitis modi adipisci qui iste quia officia. Tempora quia illum delectus voluptatum non. Laboriosam illo ab in est assumenda amet officiis.'),
(225, 168, 805, '2020-05-21 18:10:05', '2020-05-25 18:10:05', '2020-03-22 17:17:36', 272, 'Quia eveniet et ut dolorem accusantium. Sint saepe magni quia ut. Deserunt soluta dolores voluptates facere ad. Ut cum deserunt quas.'),
(226, 175, 806, '2020-03-17 21:04:40', '2020-03-21 21:04:40', '2020-01-07 19:23:35', 500, 'Sit numquam voluptatem vitae quo maxime est. Sed assumenda unde recusandae. Debitis temporibus fugit et eos eos omnis aut nihil.'),
(227, 175, 806, '2020-06-05 00:27:08', '2020-06-08 00:27:08', '2020-01-08 10:00:34', 375, 'Neque blanditiis voluptate voluptatem nulla recusandae dolor possimus. Ipsum quam aperiam aut voluptatem alias est. Consequuntur dolorem voluptates eligendi provident quia dolorem.'),
(228, 173, 807, '2020-04-11 08:55:32', '2020-04-19 08:55:32', '2020-06-03 03:20:36', 424, 'Sunt hic autem illo et. Sunt accusantium sit quas veritatis doloribus placeat illum cupiditate. At enim cupiditate aut laboriosam ut.'),
(229, 171, 807, '2020-04-17 04:52:13', '2020-04-21 04:52:13', '2020-02-23 14:08:47', 212, 'Magnam officia voluptate quos corporis aliquam sit. Velit nulla est voluptates et sit et omnis. Qui quo deserunt suscipit eum pariatur.'),
(230, 171, 807, '2020-04-24 07:02:04', '2020-04-28 07:02:04', '2020-04-16 02:45:04', 212, 'Cumque facere neque modi tempora pariatur architecto ducimus quo. Nam eaque voluptas voluptatem aspernatur quia explicabo. Consequatur sint molestiae odio tempora quod. Quaerat voluptatem ut impedit iste animi voluptatum.'),
(231, 169, 807, '2020-05-28 12:48:58', '2020-06-03 12:48:58', '2019-12-11 11:39:24', 318, 'Natus fugit optio eligendi ullam velit repellat. Et amet ut magni expedita laborum consequuntur aut.'),
(232, 176, 807, '2020-05-19 05:09:24', '2020-05-23 05:09:24', '2020-02-14 17:56:12', 212, 'Reprehenderit ea eligendi tenetur laboriosam excepturi. Maxime quia debitis exercitationem odit vel possimus. Est laborum architecto quia sint occaecati numquam quis.'),
(233, 176, 808, '2020-05-08 04:31:41', '2020-05-18 04:31:41', '2020-06-08 22:56:53', 800, 'Tenetur nesciunt doloremque optio architecto. Fugit quia dolorum sunt animi est reprehenderit. Odit ut temporibus minima quae. Qui voluptatibus quis porro culpa modi velit ut.'),
(234, 174, 808, '2020-03-27 03:59:28', '2020-03-31 03:59:28', '2020-05-18 07:30:01', 320, 'Consequuntur fugiat odit est nemo deleniti fugit velit quis. Ut id delectus voluptatem voluptatibus voluptatem quis magnam. Voluptatem quia laudantium unde id. Dicta laborum animi animi consequatur reiciendis quis nisi perspiciatis.'),
(235, 171, 809, '2020-06-06 00:38:52', '2020-06-11 00:38:52', '2020-01-14 00:48:50', 690, 'Est optio officia earum voluptas ut eos. Dignissimos odio officiis cumque sit.'),
(236, 171, 809, '2020-04-10 12:41:44', '2020-04-20 12:41:44', '2020-02-28 05:17:58', 1380, 'Quibusdam magnam facere qui quo odit. Eum necessitatibus in quis accusantium ut. Et laboriosam molestias qui veniam nihil omnis. Nam eum ipsa distinctio culpa.'),
(237, 175, 809, '2020-03-24 22:53:42', '2020-04-02 22:53:42', '2020-02-18 13:46:49', 1242, 'Minus molestiae rerum dolore accusamus. Distinctio modi reiciendis porro voluptates voluptas ullam rerum. Ut labore at aut vero. Enim quia voluptatibus velit ad. Aliquam repellat dicta sunt rerum voluptatibus aliquid.'),
(238, 173, 809, '2020-04-03 12:55:58', '2020-04-06 12:55:58', '2019-12-25 19:41:45', 414, 'Pariatur aut praesentium et consequatur. Fuga dolorem nesciunt doloribus corrupti. Saepe sit dolorum quam odit adipisci soluta. Voluptas repellat possimus saepe consequatur praesentium aut.'),
(239, 170, 809, '2020-03-29 11:16:52', '2020-04-07 11:16:52', '2020-05-10 05:18:02', 1242, 'Qui ipsam veniam iusto sunt ut natus. Et dolorum consequatur dignissimos aut. Et nobis non dolore tenetur nisi facilis nemo. Cum velit maiores vero eum cum accusantium eos aut.'),
(240, 168, 809, '2020-05-30 12:47:52', '2020-06-06 12:47:52', '2020-04-10 02:35:28', 966, 'Et nihil minus quae expedita enim numquam repudiandae. Laboriosam quasi tenetur quia reiciendis. Consequuntur suscipit vitae vero temporibus quisquam et quibusdam earum. Illo nemo a at repellendus quae itaque.'),
(241, 171, 810, '2020-05-24 10:31:59', '2020-05-31 10:31:59', '2019-12-24 03:10:19', 1036, 'Similique quas voluptas ut. Laudantium amet libero omnis reprehenderit. Autem laudantium explicabo molestias dolor id eos eum.'),
(242, 174, 811, '2020-06-10 09:32:36', '2020-06-19 09:32:36', '2020-04-18 09:37:02', 1107, 'Deserunt quibusdam qui ratione ipsum qui non in. Consequuntur eius fuga voluptas ratione veritatis eaque. Voluptate voluptatem doloremque veniam porro. Autem eos soluta et dolorem ut ea odio.'),
(243, 176, 811, '2020-04-28 02:01:48', '2020-05-02 02:01:48', '2020-05-10 18:12:30', 492, 'Sed soluta eos molestiae illo a. Et rerum sit necessitatibus est eos ipsam eligendi. Eius illo molestiae officiis.'),
(244, 169, 811, '2020-03-26 18:50:29', '2020-04-05 18:50:29', '2020-05-17 12:41:01', 1230, 'Consequuntur reprehenderit itaque est expedita. Deserunt quia alias doloremque officia. Dolorem suscipit aliquid aut impedit odio.'),
(245, 174, 811, '2020-03-28 22:32:02', '2020-04-03 22:32:02', '2020-05-13 15:21:58', 738, 'Magni quas est vitae. Unde ut unde exercitationem ullam dolor culpa aspernatur.'),
(246, 176, 812, '2020-04-10 05:01:04', '2020-04-16 05:01:04', '2020-02-02 03:53:16', 786, 'Magni ipsum sequi est libero possimus. Sed doloremque dolorem sint. Id dolore incidunt possimus eum soluta modi et. Quis odit molestiae eius ea ad sunt sit. Accusamus et sit cumque dolorem.'),
(247, 168, 812, '2020-05-09 12:23:15', '2020-05-13 12:23:15', '2020-02-08 10:40:02', 524, 'Inventore odio eos atque. Rerum asperiores et deleniti consequatur. Optio ipsam rem magnam recusandae qui.'),
(248, 171, 812, '2020-05-20 23:39:00', '2020-05-30 23:39:00', '2020-06-07 00:34:30', 1310, 'Amet deserunt sequi dolores nemo. Accusantium illum deserunt similique recusandae. Quas assumenda esse ab qui magnam quaerat.'),
(249, 175, 813, '2020-06-07 18:33:25', '2020-06-15 18:33:25', '2020-01-21 02:29:52', 744, 'Veritatis minima in alias aspernatur totam. Ut magnam sed doloribus consequatur. Tempore id facilis suscipit nihil facere nulla asperiores et. Architecto consequatur nisi ducimus accusamus similique optio totam quos. Adipisci nostrum cupiditate mollitia accusantium.'),
(250, 171, 814, '2020-03-13 00:05:13', '2020-03-20 00:05:13', '2020-01-12 16:44:44', 973, 'Laborum sed ipsa sint expedita. Eligendi sit eligendi modi nemo ducimus. Omnis a quo consequatur velit consequuntur cumque id. Voluptatem at expedita odit vitae quasi.'),
(251, 176, 815, '2020-04-30 16:54:33', '2020-05-03 16:54:33', '2020-01-02 11:06:57', 237, 'Incidunt provident adipisci enim optio est porro vero numquam. Facilis fugiat ad quo molestiae. Voluptatem omnis ratione et iure tempora. Similique quibusdam quia voluptatem ullam velit ullam provident.'),
(252, 175, 815, '2020-04-22 23:28:51', '2020-04-25 23:28:51', '2020-01-30 08:28:17', 237, 'Modi accusamus ipsum exercitationem voluptate veniam. Sunt quasi dolorem commodi beatae. Excepturi ab quod qui odit. Quaerat culpa in incidunt asperiores dolorem.'),
(253, 168, 815, '2020-04-24 14:37:28', '2020-04-28 14:37:28', '2020-02-21 19:49:50', 316, 'Voluptatum sit repudiandae laboriosam voluptates sequi accusamus autem consequuntur. Beatae corrupti nulla esse. Natus eaque repellendus vitae in eaque. Omnis sit possimus sed temporibus qui nostrum.'),
(254, 177, 815, '2020-03-23 22:43:23', '2020-03-27 22:43:23', '2020-05-08 19:53:02', 316, 'Sit ut suscipit expedita soluta molestias iste. Dolorem odit exercitationem iusto eius ipsa. Nam quia officiis illum qui nostrum.'),
(255, 172, 815, '2020-05-17 17:48:04', '2020-05-25 17:48:04', '2020-02-24 04:42:45', 632, 'Fugiat autem eum perferendis et aliquid a. Occaecati commodi voluptas repudiandae quo. Voluptate doloremque nesciunt ut eum accusantium repellat ab.'),
(256, 170, 815, '2020-03-21 09:03:52', '2020-03-29 09:03:52', '2020-04-01 09:50:17', 632, 'Aperiam sunt a voluptas nobis voluptatem maxime dolorum. Quibusdam eos minima ut velit quasi quasi placeat excepturi. Sit minus quaerat voluptate rerum sapiente ipsa. Eius qui fuga quae vero consequatur repellendus.'),
(257, 171, 815, '2020-04-14 16:35:13', '2020-04-18 16:35:13', '2020-05-03 15:54:23', 316, 'Recusandae amet quisquam qui repudiandae sapiente non ea id. Et qui magnam excepturi maiores unde. Autem repudiandae voluptatem distinctio magnam.'),
(258, 176, 815, '2020-04-25 09:48:42', '2020-04-28 09:48:42', '2020-02-08 20:38:34', 237, 'Omnis quibusdam adipisci laudantium sunt inventore soluta. Sint quisquam aut et et exercitationem temporibus possimus. In voluptatem labore dolores a aperiam et aut.'),
(259, 168, 816, '2020-04-17 19:13:07', '2020-04-20 19:13:07', '2020-03-15 09:00:26', 423, 'Quae magnam voluptas et quis maxime quis incidunt. Ut omnis quam placeat architecto eos distinctio quisquam. Aut qui consectetur magni magni non adipisci dolor rerum.'),
(260, 170, 816, '2020-05-28 08:28:47', '2020-06-05 08:28:47', '2020-03-01 11:06:45', 1128, 'Reprehenderit sed voluptatem ex fugiat sit. Odio quisquam et sint. Autem alias error labore laudantium omnis alias cupiditate. Facere deleniti aliquid quis ut ullam.'),
(261, 175, 816, '2020-04-24 22:07:49', '2020-04-29 22:07:49', '2020-05-30 01:46:48', 705, 'Ut inventore quos unde possimus dolorem laboriosam non. Ut in voluptas et expedita qui minus numquam accusamus. Ea sint eos distinctio amet accusamus.'),
(262, 169, 817, '2020-05-09 17:47:54', '2020-05-17 17:47:54', '2020-05-12 10:48:50', 888, 'Similique tenetur ut esse amet distinctio placeat est. Inventore dolore soluta maiores velit. Enim soluta sint sit et non et facere delectus. Labore omnis et et.'),
(263, 173, 817, '2020-04-21 21:56:00', '2020-04-26 21:56:00', '2020-01-09 00:57:27', 555, 'Culpa fugiat nesciunt ea qui voluptas. Vel unde quis tempora cumque alias et dicta. Quis ullam est porro eius occaecati optio et. Accusamus est suscipit atque sapiente eius rerum doloribus. Aliquid at eius quis ut.'),
(264, 175, 818, '2020-04-13 11:47:17', '2020-04-22 11:47:17', '2020-04-12 08:37:00', 378, 'Quibusdam perferendis qui consequatur sit dolorem id non. Voluptatem beatae dolor iure reprehenderit corrupti aliquam. Fuga suscipit aut temporibus quo. Cum ipsam labore nobis cupiditate id id.'),
(265, 176, 818, '2020-05-21 06:37:47', '2020-05-28 06:37:47', '2020-05-08 20:01:11', 294, 'Praesentium itaque et reprehenderit provident et. Inventore eum ipsa reiciendis velit adipisci facere. Asperiores sint vel et aut iure veritatis nam. Nihil iusto quo ab.'),
(266, 175, 820, '2020-05-20 03:22:15', '2020-05-24 03:22:15', '2020-04-25 20:59:18', 536, 'Placeat saepe animi corporis. Perspiciatis quisquam nulla dolor adipisci ipsam consequatur exercitationem qui. Quo est laudantium explicabo rerum et.'),
(267, 174, 820, '2020-03-22 17:27:01', '2020-03-30 17:27:01', '2020-05-15 01:53:53', 1072, 'Ut omnis suscipit voluptatum voluptas. Voluptates est voluptatem aut est blanditiis quis velit. Perspiciatis et dolores laudantium sit numquam adipisci. Molestias vel voluptate reiciendis et.'),
(268, 177, 820, '2020-05-24 11:56:43', '2020-05-27 11:56:43', '2020-02-27 05:37:39', 402, 'Debitis velit laboriosam laboriosam ipsa omnis porro. Culpa magni qui et porro. Unde rerum nemo quisquam quo. Eos impedit quia ratione libero excepturi soluta.'),
(269, 170, 821, '2020-04-12 16:22:08', '2020-04-21 16:22:08', '2019-12-29 22:33:21', 522, 'Quia et et consequuntur. Dolore quia eum assumenda sed inventore molestiae a. Est et praesentium cupiditate ratione in.'),
(270, 171, 821, '2020-04-26 16:35:35', '2020-04-29 16:35:35', '2020-03-26 03:25:01', 174, 'Possimus at totam totam culpa. Vel maiores corporis soluta id molestiae a. Dolorem optio ipsum dolor distinctio. Qui ullam velit quaerat. Iusto quo rerum corporis dolorem repudiandae vel.'),
(271, 176, 821, '2020-05-17 01:09:01', '2020-05-20 01:09:01', '2020-01-16 09:33:14', 174, 'Aspernatur expedita nam qui iusto. Distinctio aperiam ut qui earum.'),
(272, 167, 794, '2020-06-10 15:23:52', '2019-06-18 15:23:52', '2020-06-10 17:23:57', 1040, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `rating` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C4F34D596` (`ad_id`),
  KEY `IDX_9474526CF675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `ad_id`, `author_id`, `created_at`, `rating`, `content`) VALUES
(2, 792, 168, '2020-06-10 15:02:34', 2, 'Reprehenderit itaque dolorem quis temporibus doloribus sequi voluptatem illo. Quaerat occaecati eligendi consectetur quis nam rerum modi. Velit rerum officia sunt quia autem reiciendis'),
(4, 794, 175, '2020-06-10 15:02:34', 3, 'Non sunt voluptatem ut enim aut odit. Ea temporibus ratione rem voluptates velit et omnis. Qui culpa voluptate minima dicta omnis accusantium qui.'),
(5, 794, 176, '2020-06-10 15:02:34', 3, 'Asperiores voluptatem blanditiis incidunt. Enim necessitatibus qui rem quia doloremque illum. Dolorem sunt veniam velit eaque possimus reiciendis. Laborum libero aut vero impedit et vel.'),
(6, 794, 177, '2020-06-10 15:02:34', 1, 'Repellat sit rerum neque et magnam. Eius maxime aut enim. Nulla eligendi ea suscipit quo distinctio voluptas beatae. Laborum mollitia et maiores ipsa quaerat est ut. Ut tempore quisquam voluptas error.'),
(7, 795, 168, '2020-06-10 15:02:34', 2, 'Et sunt nemo vero aut quos. Asperiores rerum corporis a consequuntur. Qui nihil qui nesciunt voluptas cumque numquam est ut. Non tenetur nemo sint vel quos aperiam voluptatem.'),
(8, 795, 169, '2020-06-10 15:02:34', 2, 'Qui aut temporibus non. Voluptatem pariatur id nihil non odit est sequi harum. Ab voluptas quae sed laudantium animi velit est.'),
(9, 796, 171, '2020-06-10 15:02:34', 1, 'Est incidunt harum ut incidunt. In quos harum quisquam voluptatem eveniet. Aut vero autem dolorum iste. Voluptatibus mollitia quia laborum vel non voluptates.'),
(10, 798, 176, '2020-06-10 15:02:34', 2, 'Saepe laborum magni tempore rerum quisquam. Animi quia minima id ipsam. Ratione neque possimus repellat similique nemo aliquam a.'),
(11, 798, 176, '2020-06-10 15:02:34', 3, 'Omnis laborum nostrum suscipit consequatur aperiam animi sint. Porro dolores voluptatem dolor quidem aliquid sint. Assumenda ipsa nam consequatur libero mollitia qui perferendis minima.'),
(12, 799, 169, '2020-06-10 15:02:34', 2, 'Nemo dolorem fuga blanditiis facere quis necessitatibus sequi. Rerum voluptatum dolor quae eos et consequatur. Natus dolorem vero soluta velit. Cumque facilis pariatur voluptas sequi possimus labore consequatur.'),
(13, 801, 174, '2020-06-10 15:02:34', 4, 'Omnis vel maxime eligendi laboriosam facere ipsa quibusdam. Voluptatem et soluta aut sit sed. Fuga et sed quia sunt. Beatae mollitia eaque sed quaerat.'),
(14, 801, 169, '2020-06-10 15:02:34', 2, 'Accusantium perferendis omnis vel minima magni. Dolore consectetur voluptatum necessitatibus omnis aut ut eveniet ad. Pariatur at molestiae ut nesciunt dolorem dignissimos eius.'),
(15, 804, 168, '2020-06-10 15:02:34', 4, 'Soluta aliquam fugiat fugiat minus sed veniam. Deleniti non quis explicabo ullam doloremque. Distinctio iusto dolores non nulla et impedit. Odit voluptate esse sed consectetur vel eum et.'),
(16, 805, 176, '2020-06-10 15:02:34', 3, 'Ullam porro voluptatum omnis sit unde cum est. Corporis blanditiis dicta et quibusdam.'),
(17, 805, 173, '2020-06-10 15:02:34', 3, 'Earum occaecati explicabo sunt ipsam. Fugit voluptatem dignissimos maiores et eos voluptatem molestiae. Sed corrupti odit sed provident deserunt consequuntur consequatur. Voluptatem necessitatibus rerum quia soluta.'),
(18, 805, 168, '2020-06-10 15:02:34', 5, 'Cumque aperiam expedita rerum vel voluptatem velit natus. Quas voluptas non dignissimos delectus maxime ea. Dolores quibusdam et optio nemo.'),
(19, 805, 173, '2020-06-10 15:02:34', 3, 'Eum cupiditate velit aut porro corporis. Et quam sapiente dolor aut rerum eos. Quam officia autem distinctio eaque nam corrupti.'),
(20, 805, 168, '2020-06-10 15:02:34', 4, 'Et error omnis autem inventore. Sunt repellendus architecto repudiandae vel sit consequuntur. Iure ratione magnam et in maxime repellat. Temporibus veritatis asperiores aperiam expedita consequatur.'),
(21, 807, 173, '2020-06-10 15:02:34', 2, 'Debitis aliquid quia qui ut ea. Ipsum nihil consequatur molestiae vitae est. Corporis sed eum aut soluta quae eligendi et. Adipisci totam sequi quod ipsa dolore qui. Natus non dolores et assumenda dolores omnis.'),
(22, 807, 171, '2020-06-10 15:02:34', 3, 'Deserunt magni et sit sit eius mollitia sed. Explicabo sit illo aut recusandae. Consequatur vel quo mollitia excepturi eius. Labore rem et ea quia corporis sequi.'),
(23, 807, 176, '2020-06-10 15:02:34', 4, 'Ea dolorem ducimus voluptatem. Modi nesciunt natus eum quia dolorum alias eos. Nulla quidem aut voluptate voluptatem quam.'),
(24, 809, 171, '2020-06-10 15:02:34', 3, 'Sint minus autem tenetur veritatis saepe. Iure consequuntur adipisci fugit fugiat ex illum exercitationem voluptatem. Vel ex consequuntur perferendis et maxime.'),
(25, 809, 175, '2020-06-10 15:02:34', 4, 'Possimus sapiente dignissimos dicta ut cumque quibusdam molestiae. Autem laboriosam quae qui quia voluptatem ipsa voluptatem. Qui et est hic sit ad aut vitae. Ratione aut at non quis.'),
(26, 809, 173, '2020-06-10 15:02:34', 5, 'Quis sed eum velit et voluptas facere repudiandae aut. Iure quo commodi quas quia dolor. Quae perferendis et omnis possimus consectetur expedita aut eius.'),
(27, 809, 168, '2020-06-10 15:02:34', 2, 'Voluptas quo error praesentium dolorem culpa aut aut. Non dicta inventore ipsa. Nobis fugiat vero ipsum saepe explicabo.'),
(28, 811, 174, '2020-06-10 15:02:34', 4, 'Rerum quia dolorem sint iure. Esse nihil quos exercitationem vel dolorem asperiores. Velit labore soluta aperiam voluptas illo. Vel ipsa sunt perspiciatis cum incidunt quae.'),
(29, 812, 168, '2020-06-10 15:02:34', 5, 'Quam laboriosam rerum accusantium dolores et. Sed est non natus dolores aut delectus. Tenetur labore repellat aut dolor. Placeat omnis dolorum quisquam modi assumenda et eveniet fugit.'),
(30, 814, 171, '2020-06-10 15:02:34', 1, 'Et est aut odit et quas. Vel tenetur delectus harum quaerat. Voluptatem autem quo corrupti mollitia blanditiis nulla. Ipsum nihil nesciunt dolorum et.'),
(31, 815, 168, '2020-06-10 15:02:34', 5, 'Facere ex id quas aut repellendus. Quam facere consequatur nulla dolor. Magni et velit illum id numquam nostrum.'),
(32, 815, 177, '2020-06-10 15:02:34', 1, 'Quia et accusamus nostrum quia. Cumque distinctio distinctio sit ut non. Quibusdam aliquam numquam repellat at.'),
(33, 815, 172, '2020-06-10 15:02:34', 1, 'Aut omnis necessitatibus qui. Inventore quia officia vel voluptate sequi magnam omnis ducimus. Ea culpa impedit dicta explicabo officia omnis eos.'),
(34, 815, 170, '2020-06-10 15:02:34', 1, 'Sit delectus et qui omnis voluptate voluptas at. Officia omnis maiores aut tempora et. Ipsum sit sapiente sed quae nulla debitis.'),
(35, 815, 171, '2020-06-10 15:02:34', 4, 'Rem dolorem vel quia. Non expedita sed porro laborum et. Reprehenderit atque iusto ad quis tenetur cumque. Adipisci neque est ex nihil voluptatibus ut.'),
(36, 815, 176, '2020-06-10 15:02:34', 2, 'Et nihil fuga nam fugit ullam aliquid sunt. Quam molestiae nisi voluptas. Molestias veritatis dolores eum ipsa quidem quia autem et.'),
(37, 816, 168, '2020-06-10 15:02:34', 5, 'Eligendi rerum ipsa qui quia consectetur consequatur laboriosam. Consequatur possimus distinctio quaerat perferendis id itaque ut. Minus fuga corporis aut doloribus esse nostrum ipsam quidem. Eos tenetur consequatur quidem est sit unde.'),
(38, 816, 170, '2020-06-10 15:02:34', 4, 'Officiis suscipit rerum nisi maiores unde. Aperiam unde earum rerum illo expedita.'),
(39, 816, 175, '2020-06-10 15:02:34', 1, 'Aut perferendis adipisci nihil iure recusandae tenetur atque neque. Aperiam vel tenetur vel qui rerum qui qui. Quia nostrum omnis incidunt enim dolores.'),
(40, 817, 169, '2020-06-10 15:02:34', 3, 'Necessitatibus odit sed nihil rerum quo ea. Voluptatibus vero quia sit doloremque quasi aliquid sed. Exercitationem consequuntur non neque. Praesentium natus qui sed quasi.'),
(41, 817, 173, '2020-06-10 15:02:34', 4, 'Fuga repellendus ducimus et animi cumque nostrum vero. At ipsa nobis nemo aut. Enim eligendi ipsam dolor voluptas.'),
(42, 818, 175, '2020-06-10 15:02:34', 2, 'Aut repudiandae dolor enim sapiente. Et voluptatem qui sit magni sit. Impedit suscipit placeat magnam iusto consequuntur ducimus. Consequatur praesentium libero tempore minima sint.'),
(43, 820, 175, '2020-06-10 15:02:34', 5, 'Placeat labore excepturi ut rerum perferendis aperiam. Commodi dolores natus vel a ab voluptatem alias.'),
(49, 794, 167, '2020-06-11 00:04:05', 4, 'Vraiment cool !!'),
(50, 793, 167, '2020-06-13 01:03:57', 4, 'Super !!!!');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045F4F34D596` (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `ad_id`, `url`, `caption`) VALUES
(2167, 792, 'https://picsum.photos/200/300?random=1', 'Recusandae.'),
(2168, 792, 'https://picsum.photos/200/300?random=2', 'Nobis.'),
(2169, 793, 'https://picsum.photos/200/300?random=1', 'Quasi.'),
(2171, 793, 'https://picsum.photos/200/300?random=3', 'Ipsa in.'),
(2173, 794, 'https://picsum.photos/200/300?random=1', 'Nam.'),
(2174, 794, 'https://picsum.photos/200/300?random=2', 'Perspiciatis tenetur.'),
(2175, 795, 'https://picsum.photos/200/300?random=1', 'Itaque earum.'),
(2176, 795, 'https://picsum.photos/200/300?random=2', 'Corporis ut.'),
(2177, 795, 'https://picsum.photos/200/300?random=3', 'Sequi.'),
(2178, 796, 'https://picsum.photos/200/300?random=1', 'Sit.'),
(2179, 796, 'https://picsum.photos/200/300?random=2', 'Qui temporibus.'),
(2180, 796, 'https://picsum.photos/200/300?random=3', 'Quis non.'),
(2181, 797, 'https://picsum.photos/200/300?random=1', 'Eos qui.'),
(2182, 797, 'https://picsum.photos/200/300?random=2', 'Non necessitatibus.'),
(2183, 798, 'https://picsum.photos/200/300?random=1', 'Quisquam.'),
(2184, 798, 'https://picsum.photos/200/300?random=2', 'Unde.'),
(2185, 798, 'https://picsum.photos/200/300?random=3', 'Totam nam.'),
(2186, 799, 'https://picsum.photos/200/300?random=1', 'Est perferendis.'),
(2187, 799, 'https://picsum.photos/200/300?random=2', 'Placeat.'),
(2188, 799, 'https://picsum.photos/200/300?random=3', 'Explicabo.'),
(2189, 800, 'https://picsum.photos/200/300?random=1', 'Ex.'),
(2190, 800, 'https://picsum.photos/200/300?random=2', 'Exercitationem.'),
(2191, 800, 'https://picsum.photos/200/300?random=3', 'Maxime.'),
(2192, 800, 'https://picsum.photos/200/300?random=4', 'Illo.'),
(2193, 801, 'https://picsum.photos/200/300?random=1', 'Sunt.'),
(2194, 801, 'https://picsum.photos/200/300?random=2', 'Officia consequatur.'),
(2195, 802, 'https://picsum.photos/200/300?random=1', 'Praesentium.'),
(2196, 802, 'https://picsum.photos/200/300?random=2', 'Sint eos.'),
(2197, 802, 'https://picsum.photos/200/300?random=3', 'Culpa.'),
(2198, 803, 'https://picsum.photos/200/300?random=1', 'Quam explicabo.'),
(2199, 803, 'https://picsum.photos/200/300?random=2', 'In ut.'),
(2200, 803, 'https://picsum.photos/200/300?random=3', 'Et.'),
(2201, 804, 'https://picsum.photos/200/300?random=1', 'Repellat atque.'),
(2202, 804, 'https://picsum.photos/200/300?random=2', 'Enim exercitationem.'),
(2203, 805, 'https://picsum.photos/200/300?random=1', 'Nisi.'),
(2204, 805, 'https://picsum.photos/200/300?random=2', 'Excepturi.'),
(2205, 805, 'https://picsum.photos/200/300?random=3', 'Fugiat.'),
(2206, 805, 'https://picsum.photos/200/300?random=4', 'Sit qui.'),
(2207, 806, 'https://picsum.photos/200/300?random=1', 'Dolorem.'),
(2208, 806, 'https://picsum.photos/200/300?random=2', 'Repudiandae dicta.'),
(2209, 806, 'https://picsum.photos/200/300?random=3', 'Reprehenderit.'),
(2210, 806, 'https://picsum.photos/200/300?random=4', 'Nam.'),
(2211, 807, 'https://picsum.photos/200/300?random=1', 'Aliquid aut.'),
(2212, 807, 'https://picsum.photos/200/300?random=2', 'Pariatur.'),
(2213, 808, 'https://picsum.photos/200/300?random=1', 'Est.'),
(2214, 808, 'https://picsum.photos/200/300?random=2', 'Sint.'),
(2215, 808, 'https://picsum.photos/200/300?random=3', 'Accusamus.'),
(2216, 808, 'https://picsum.photos/200/300?random=4', 'Ab.'),
(2217, 809, 'https://picsum.photos/200/300?random=1', 'At.'),
(2218, 809, 'https://picsum.photos/200/300?random=2', 'Minima.'),
(2219, 809, 'https://picsum.photos/200/300?random=3', 'Nesciunt ut.'),
(2220, 810, 'https://picsum.photos/200/300?random=1', 'Aut.'),
(2221, 810, 'https://picsum.photos/200/300?random=2', 'Aut.'),
(2222, 810, 'https://picsum.photos/200/300?random=3', 'Autem qui.'),
(2223, 811, 'https://picsum.photos/200/300?random=1', 'Sunt dolorum.'),
(2224, 811, 'https://picsum.photos/200/300?random=2', 'Voluptate.'),
(2225, 811, 'https://picsum.photos/200/300?random=3', 'Et.'),
(2226, 811, 'https://picsum.photos/200/300?random=4', 'Consequatur quae.'),
(2227, 812, 'https://picsum.photos/200/300?random=1', 'Ipsum.'),
(2228, 812, 'https://picsum.photos/200/300?random=2', 'Reprehenderit.'),
(2229, 812, 'https://picsum.photos/200/300?random=3', 'Aut.'),
(2230, 812, 'https://picsum.photos/200/300?random=4', 'Et.'),
(2231, 812, 'https://picsum.photos/200/300?random=5', 'Ut.'),
(2232, 813, 'https://picsum.photos/200/300?random=1', 'Molestiae.'),
(2233, 813, 'https://picsum.photos/200/300?random=2', 'Id.'),
(2234, 814, 'https://picsum.photos/200/300?random=1', 'Molestiae.'),
(2235, 814, 'https://picsum.photos/200/300?random=2', 'Magnam.'),
(2236, 814, 'https://picsum.photos/200/300?random=3', 'Autem iste.'),
(2237, 815, 'https://picsum.photos/200/300?random=1', 'Cupiditate.'),
(2238, 815, 'https://picsum.photos/200/300?random=2', 'Dicta nihil.'),
(2239, 815, 'https://picsum.photos/200/300?random=3', 'Excepturi ratione.'),
(2240, 816, 'https://picsum.photos/200/300?random=1', 'Cupiditate suscipit.'),
(2241, 816, 'https://picsum.photos/200/300?random=2', 'Placeat.'),
(2242, 817, 'https://picsum.photos/200/300?random=1', 'Reprehenderit.'),
(2243, 817, 'https://picsum.photos/200/300?random=2', 'Quia ut.'),
(2244, 817, 'https://picsum.photos/200/300?random=3', 'Ut.'),
(2245, 817, 'https://picsum.photos/200/300?random=4', 'Dignissimos.'),
(2246, 818, 'https://picsum.photos/200/300?random=1', 'Facere.'),
(2247, 818, 'https://picsum.photos/200/300?random=2', 'Error.'),
(2248, 818, 'https://picsum.photos/200/300?random=3', 'Quibusdam perferendis.'),
(2252, 820, 'https://picsum.photos/200/300?random=1', 'Sit.'),
(2253, 820, 'https://picsum.photos/200/300?random=2', 'Aliquid cupiditate.'),
(2254, 820, 'https://picsum.photos/200/300?random=3', 'Est.'),
(2255, 820, 'https://picsum.photos/200/300?random=4', 'Aut.'),
(2256, 820, 'https://picsum.photos/200/300?random=5', 'Eaque veniam.'),
(2257, 821, 'https://picsum.photos/200/300?random=1', 'Voluptate neque.'),
(2258, 821, 'https://picsum.photos/200/300?random=2', 'Omnis id.'),
(2259, 821, 'https://picsum.photos/200/300?random=3', 'Qui.'),
(2260, 821, 'https://picsum.photos/200/300?random=4', 'Beatae sed.'),
(2261, 823, 'https://picsum.photos/1000/350?random=38', 'Vu de la chambre'),
(2262, 823, 'https://picsum.photos/1000/350?random=65', 'Vu du balcon');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200607010715', '2020-06-07 01:09:01'),
('20200607011118', '2020-06-07 01:11:26'),
('20200607020517', '2020-06-07 02:06:24'),
('20200608081536', '2020-06-08 08:15:49'),
('20200608082350', '2020-06-08 08:24:00'),
('20200609084652', '2020-06-09 08:47:27'),
('20200609131828', '2020-06-09 13:18:42'),
('20200609135622', '2020-06-09 13:56:37'),
('20200610125449', '2020-06-10 12:55:02');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(4, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `IDX_332CA4DDD60322AC` (`role_id`),
  KEY `IDX_332CA4DDA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(4, 167);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `picture`, `hash`, `introduction`, `description`, `slug`) VALUES
(167, 'Greg', 'Thorel', 'gregory.thorel@live.fr', 'https://randomuser.me/api/portraits/men/55.jpg', '$2y$13$LMmc2aPSeSwfJEvkoEFCouozCiGwoE0s/FWxEgxLS5IolodVk.HZO', 'Nulla voluptatibus dicta voluptatum.', 'Placeat dicta dolorum consequatur. Enim laboriosam omnis facere veritatis ipsam. Accusantium harum dolorum rerum voluptate reprehenderit excepturi. Aut quae explicabo ab deserunt temporibus aut quasi. Vel corporis autem eius dolorum eveniet et. Sit accusamus omnis qui voluptatem quo dolore cupiditate.', 'greg-thorel'),
(168, 'Ellis', 'Bogan', 'pwolff@douglas.com', 'https://randomuser.me/api/portraits/men/76.jpg', '$2y$13$S/aKGqMRSgMUtPlwuFY.6eFMtI2Jp3SyUzbd2EGsZJetgC8pbn.YK', 'Velit repellat qui perspiciatis porro dolores sint.', 'Eum rem nulla cupiditate qui sint esse. Animi et voluptatem eum nemo magnam vitae cupiditate. Voluptatibus architecto perferendis suscipit accusamus beatae omnis. Reprehenderit quia aliquid officia perferendis. Facilis eum aperiam rerum autem quasi illo.', 'ellis-bogan'),
(169, 'Corbin', 'Predovic', 'terry.kiara@yahoo.com', 'https://randomuser.me/api/portraits/men/56.jpg', '$2y$13$e527XPLv1RFtCQSmiJ2aEe2Fry/BHtTZNxAibu9bARtl6vyZ54sZq', 'Omnis doloremque fuga natus maiores nisi.', 'Repellendus placeat facilis ut inventore. Repellat enim sint porro est est perferendis. Asperiores repellendus voluptas provident vel officiis vero quod. Esse accusamus non inventore et sed animi.', 'corbin-predovic'),
(170, 'Missouri', 'Collins', 'travon.greenfelder@gmail.com', 'https://randomuser.me/api/portraits/women/66.jpg', '$2y$13$4NeW9yXw5PpQW8hShYfxHOWRNqh7XjX4bnPucbumH3uSwZtUr70Si', 'Veniam ad omnis facere eos.', 'Corrupti occaecati aut omnis nam assumenda nihil laboriosam. Quia fuga minima quae aut. Ut sint facilis dolor eum eius voluptatibus eos. Recusandae quis harum quod perspiciatis ipsam soluta consequatur. Nobis consequatur et quas autem. Eos impedit sunt quia porro.', 'missouri-collins'),
(171, 'Elisabeth', 'Bruen', 'annabelle05@hotmail.com', 'https://randomuser.me/api/portraits/women/36.jpg', '$2y$13$ypQXtO5.Faibg0cCDIX.KO/JsePJ7ARC0ck6Rl2ixRBOhuszRNAXK', 'Cum quis quasi consequatur qui dolorem a harum id.', 'Ut aut itaque rerum eum velit sit quaerat natus. Dolor rem expedita expedita deleniti ut. Rerum in aliquam voluptatem reiciendis. Libero alias excepturi a nisi. Dolorem possimus aut ad laborum odio minus. Porro asperiores eligendi aut deserunt. Explicabo saepe consequatur corporis esse eligendi doloribus.', 'elisabeth-bruen'),
(172, 'Wilburn', 'Schiller', 'schuster.darron@gmail.com', 'https://randomuser.me/api/portraits/men/2.jpg', '$2y$13$TG8A12cNmnaq6qYHqlZCmerPl/d/qJ7/ponK6DVjPHeD5WUSZ67cy', 'Debitis id dolorem repudiandae voluptas repellat.', 'Voluptatibus repudiandae quia ipsa. Magnam quidem recusandae eaque quas aut. Explicabo quia hic est temporibus ut omnis voluptatem. Delectus natus consequuntur corrupti voluptatibus. Illo soluta est eum consequuntur. Et modi voluptatibus explicabo rerum aliquam saepe provident.', 'wilburn-schiller'),
(173, 'Reuben', 'Trantow', 'obauch@yahoo.com', 'https://randomuser.me/api/portraits/men/53.jpg', '$2y$13$oYa0K2oS9cT/85vdxkJPIOFwkGEdMCt/ViTjuPDST7iTYJ2WUb3Rq', 'Voluptatibus quae ut sed.', 'Rem deserunt pariatur animi autem. Quae harum ut voluptatem. Aut iure et illo ea vel cumque repellat. Quis consequuntur exercitationem magni cumque est.', 'reuben-trantow'),
(174, 'Edwina', 'Kuhlman', 'hickle.kraig@thompson.com', 'https://randomuser.me/api/portraits/women/57.jpg', '$2y$13$HzKePDFQ5ZU9KqYoqvoRYOtObOdVXtbVX2nWalPRLVCFJlhU1NA9e', 'Dicta consequatur ratione atque rerum alias.', 'Ducimus consectetur nihil ipsam ut perferendis dicta. Consectetur vero quas eum iure asperiores iusto. Quas a non doloribus incidunt hic. Repudiandae eos aspernatur consectetur sed labore ipsa minima. Perferendis expedita suscipit expedita officia consectetur tempora nam.', 'edwina-kuhlman'),
(175, 'Liza', 'Leuschke', 'fmacejkovic@jakubowski.com', 'https://randomuser.me/api/portraits/women/7.jpg', '$2y$13$1h2JsP/CjAOW.HG9VgJeWODLIX4Ker7wDd.2TRnmolQe55l8wymMe', 'Non sed nobis et recusandae.', 'Eaque omnis nam necessitatibus aliquam consequatur corrupti ut. Quia corrupti sed ut commodi natus. Laborum suscipit consectetur fugit eligendi. Eius sed neque commodi aut. Ipsa explicabo laborum dolorem aliquam illum itaque corrupti quos. Repudiandae occaecati voluptatem eos autem error quos fugiat cumque. Ea veritatis veniam et autem accusamus quo cumque.', 'liza-leuschke'),
(176, 'Dixie', 'Yost', 'unique91@blick.net', 'https://randomuser.me/api/portraits/women/7.jpg', '$2y$13$vcemUB34/49xqgmyfc.GW.6KTykKqfY/CR49RyJrwL6P/Kj0ye8U2', 'Adipisci illum explicabo quidem.', 'Nesciunt laborum aperiam at ut et labore eaque. Explicabo reprehenderit atque repellat ex similique reiciendis. Non inventore officia expedita architecto rerum eos unde eos. Inventore consequatur molestiae perferendis perspiciatis illum et. Eaque optio recusandae enim et. Voluptatem rerum est et et.', 'dixie-yost'),
(177, 'Jessy', 'Blick', 'heller.royal@murray.org', 'https://randomuser.me/api/portraits/men/63.jpg', '$2y$13$nsH.mjaA0MbCKqPv1ftcr.lDK2KBOBGttUrtRNDjbw7x5QZOiHuAC', 'Eum id veniam eos dolores est maxime.', 'Vel autem ut repellat incidunt accusamus eos. Deserunt aut veritatis alias et esse. Dolorem quod quibusdam id qui autem. Amet qui reiciendis quia fuga quo quo. Qui maxime soluta et neque nihil accusamus. Qui sequi asperiores similique sunt ut veniam.', 'jessy-blick');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ad`
--
ALTER TABLE `ad`
  ADD CONSTRAINT `FK_77E0ED58F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_E00CEDDE4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  ADD CONSTRAINT `FK_E00CEDDE8B7E4006` FOREIGN KEY (`booker_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F4F34D596` FOREIGN KEY (`ad_id`) REFERENCES `ad` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `FK_332CA4DDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_332CA4DDD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
