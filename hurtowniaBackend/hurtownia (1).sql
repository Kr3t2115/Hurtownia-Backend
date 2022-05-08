-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Maj 2022, 00:13
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `hurtownia`
--

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `api_faktura`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `api_faktura` (
`id` int(11)
,`nazwa_klienta` varchar(255)
,`nip_klienta` varchar(10)
,`miejscowosc_klienta` varchar(255)
,`nazwa_produktu` varchar(255)
,`cena_netto_za_sztuke` double
,`cena_netto` double(19,2)
,`podatek_vat` double(19,2)
,`cena_brutto` double(19,2)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `api_klienci`
--

CREATE TABLE `api_klienci` (
  `id_klienta` int(11) NOT NULL,
  `nazwa_klienta` varchar(255) NOT NULL,
  `nip_klienta` varchar(10) NOT NULL,
  `miejscowosc_klienta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `api_klienci`
--

INSERT INTO `api_klienci` (`id_klienta`, `nazwa_klienta`, `nip_klienta`, `miejscowosc_klienta`) VALUES
(1, 'BUDOWLANKA U TWOJEGO STAREGO S.A', '1234567890', 'Warszawa'),
(2, 'MAŁPA W Z.O.O', '1234567890', 'Łódź'),
(3, 'KACPERBUD', '0987654321', 'Bełchatów');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `api_produkty`
--

CREATE TABLE `api_produkty` (
  `id_produktu` int(11) NOT NULL,
  `nazwa_produktu` varchar(255) NOT NULL,
  `cena_netto_za_sztuke` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `api_produkty`
--

INSERT INTO `api_produkty` (`id_produktu`, `nazwa_produktu`, `cena_netto_za_sztuke`) VALUES
(1, 'Cement 25kg', 13.39),
(2, 'Pustak ceramiczny', 9.99),
(3, 'Grunt pod płytki Expert 6 10L Kreisel', 49.99),
(4, 'Uszczelniacz Fasady i Dachy 280 ml', 14.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `api_zamowienia`
--

CREATE TABLE `api_zamowienia` (
  `id` int(11) NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `api_zamowienia`
--

INSERT INTO `api_zamowienia` (`id`, `id_klienta`, `id_produktu`, `ilosc`) VALUES
(1, 1, 2, 20),
(7, 1, 1, 20),
(8, 2, 3, 200),
(9, 3, 2, 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add klienci', 7, 'add_klienci'),
(26, 'Can change klienci', 7, 'change_klienci'),
(27, 'Can delete klienci', 7, 'delete_klienci'),
(28, 'Can view klienci', 7, 'view_klienci'),
(29, 'Can add produkty', 8, 'add_produkty'),
(30, 'Can change produkty', 8, 'change_produkty'),
(31, 'Can delete produkty', 8, 'delete_produkty'),
(32, 'Can view produkty', 8, 'view_produkty');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$AZPyOwN624UiVBnv76aF7d$H9GodEmU6lsVSf2twJZ2E6MMleHQNuQzy/qz5OQoTvA=', '2022-05-07 07:27:19.856306', 1, 'kret', '', '', '', 1, 1, '2022-05-07 07:27:04.971607');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-07 07:28:14.344005', '1', 'produkty object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2022-05-07 07:34:25.480495', '1', 'klienci object (1)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-05-07 07:52:52.782024', '2', 'produkty object (2)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'api', 'klienci'),
(8, 'api', 'produkty'),
(9, 'api', 'zamowienia'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'api', '0001_initial', '2022-05-07 06:58:56.689601'),
(2, 'contenttypes', '0001_initial', '2022-05-07 07:13:55.711918'),
(3, 'auth', '0001_initial', '2022-05-07 07:13:56.195653'),
(4, 'admin', '0001_initial', '2022-05-07 07:13:56.310643'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-05-07 07:13:56.320687'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-07 07:13:56.328478'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-05-07 07:13:56.452434'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-05-07 07:13:56.506156'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-05-07 07:13:56.524292'),
(10, 'auth', '0004_alter_user_username_opts', '2022-05-07 07:13:56.532991'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-05-07 07:13:56.579408'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-05-07 07:13:56.582409'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-05-07 07:13:56.590483'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-05-07 07:13:56.606616'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-05-07 07:13:56.622770'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-05-07 07:13:56.640912'),
(17, 'auth', '0011_update_proxy_permissions', '2022-05-07 07:13:56.649973'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-05-07 07:13:56.666056'),
(19, 'sessions', '0001_initial', '2022-05-07 07:13:56.702491');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9n7y9qrcie2ml1eevrrzkkyqnmisfi8v', '.eJxVjDsOwjAQBe_iGlnexJ-Ykj5nsHa9CwkgW4qTCnF3iJQC2jcz76USbuuUtiZLmlmdFajT70aYH1J2wHcst6pzLesyk94VfdCmx8ryvBzu38GEbfrWzjiAbCJ29mqNz0S-IyGJFCIigTWDWM8GOCDHANAP2fSdi310LAHU-wPY4Tde:1nnEqV:PinYubiVvqw1E83eIohMgvJ6ZPv-FWELBi9t3dWmoiI', '2022-05-21 07:27:19.859308');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `test`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `test` (
`id` int(11)
,`nazwa_klienta` varchar(255)
,`nip_klienta` varchar(10)
,`miejscowosc_klienta` varchar(255)
,`nazwa_produktu` varchar(255)
,`cena_netto_za_sztuke` double
,`cena_netto` double(19,2)
,`podatek_vat` double(19,2)
,`cena_brutto` double(19,2)
);

-- --------------------------------------------------------

--
-- Struktura widoku `api_faktura`
--
DROP TABLE IF EXISTS `api_faktura`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `api_faktura`  AS SELECT `api_zamowienia`.`id` AS `id`, `api_klienci`.`nazwa_klienta` AS `nazwa_klienta`, `api_klienci`.`nip_klienta` AS `nip_klienta`, `api_klienci`.`miejscowosc_klienta` AS `miejscowosc_klienta`, `api_produkty`.`nazwa_produktu` AS `nazwa_produktu`, `api_produkty`.`cena_netto_za_sztuke` AS `cena_netto_za_sztuke`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc`,2) AS `cena_netto`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` * 0.23,2) AS `podatek_vat`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` + `api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` * 0.23,2) AS `cena_brutto` FROM ((`api_zamowienia` join `api_klienci` on(`api_klienci`.`id_klienta` = `api_zamowienia`.`id_klienta`)) join `api_produkty` on(`api_produkty`.`id_produktu` = `api_zamowienia`.`id_produktu`)) ;

-- --------------------------------------------------------

--
-- Struktura widoku `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS SELECT `api_zamowienia`.`id` AS `id`, `api_klienci`.`nazwa_klienta` AS `nazwa_klienta`, `api_klienci`.`nip_klienta` AS `nip_klienta`, `api_klienci`.`miejscowosc_klienta` AS `miejscowosc_klienta`, `api_produkty`.`nazwa_produktu` AS `nazwa_produktu`, `api_produkty`.`cena_netto_za_sztuke` AS `cena_netto_za_sztuke`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc`,2) AS `cena_netto`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` * 0.23,2) AS `podatek_vat`, round(`api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` + `api_produkty`.`cena_netto_za_sztuke` * `api_zamowienia`.`ilosc` * 0.23,2) AS `cena_brutto` FROM ((`api_zamowienia` join `api_klienci` on(`api_klienci`.`id_klienta` = `api_zamowienia`.`id_klienta`)) join `api_produkty` on(`api_produkty`.`id_produktu` = `api_zamowienia`.`id_produktu`)) ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `api_klienci`
--
ALTER TABLE `api_klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `api_produkty`
--
ALTER TABLE `api_produkty`
  ADD PRIMARY KEY (`id_produktu`);

--
-- Indeksy dla tabeli `api_zamowienia`
--
ALTER TABLE `api_zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klienci` (`id_klienta`),
  ADD KEY `produkt` (`id_produktu`);

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `api_klienci`
--
ALTER TABLE `api_klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `api_produkty`
--
ALTER TABLE `api_produkty`
  MODIFY `id_produktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `api_zamowienia`
--
ALTER TABLE `api_zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `api_zamowienia`
--
ALTER TABLE `api_zamowienia`
  ADD CONSTRAINT `klienci` FOREIGN KEY (`id_klienta`) REFERENCES `api_klienci` (`id_klienta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produkt` FOREIGN KEY (`id_produktu`) REFERENCES `api_produkty` (`id_produktu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
