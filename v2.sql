-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2021 at 12:11 PM
-- Server version: 10.3.31-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.2.34-22+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `position_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ads_position`
--

CREATE TABLE `ads_position` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_assistscorers`
--

CREATE TABLE `api_assistscorers` (
  `id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_cardscorers`
--

CREATE TABLE `api_cardscorers` (
  `id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `yellowcards` int(11) DEFAULT NULL,
  `redcards` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_countries`
--

CREATE TABLE `api_countries` (
  `id` int(11) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extra` longtext DEFAULT NULL,
  `flag` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_goalscorers`
--

CREATE TABLE `api_goalscorers` (
  `id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL,
  `penalty_goals` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_leagues`
--

CREATE TABLE `api_leagues` (
  `id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `legacy_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_geo` varchar(191) DEFAULT NULL,
  `is_cup` tinyint(2) DEFAULT NULL,
  `current_season_id` int(11) DEFAULT NULL,
  `current_round_id` int(11) DEFAULT NULL,
  `current_stage_id` int(11) DEFAULT NULL,
  `live_standings` tinyint(2) DEFAULT NULL,
  `coverage` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `transfer_top_league` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_matches`
--

CREATE TABLE `api_matches` (
  `id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `aggregate_id` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL,
  `localteam_id` int(11) DEFAULT NULL,
  `visitorteam_id` int(11) DEFAULT NULL,
  `weather_report` text DEFAULT NULL,
  `commentaries` tinyint(2) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `pitch` varchar(255) DEFAULT NULL,
  `winning_odds_calculated` tinyint(2) DEFAULT NULL,
  `formations` text DEFAULT NULL,
  `scores` text DEFAULT NULL,
  `localteam_score` int(11) DEFAULT NULL,
  `visitorteam_score` int(11) DEFAULT NULL,
  `localteam_pen_score` int(11) DEFAULT NULL,
  `visitorteam_pen_score` int(11) DEFAULT NULL,
  `ht_score` varchar(255) DEFAULT NULL,
  `ft_score` varchar(255) DEFAULT NULL,
  `et_score` varchar(255) DEFAULT NULL,
  `time` text DEFAULT NULL,
  `time_status` varchar(255) DEFAULT NULL,
  `starting_at` timestamp NULL DEFAULT NULL,
  `time_minute` int(11) DEFAULT NULL,
  `time_second` int(11) DEFAULT NULL,
  `time_added_time` int(11) DEFAULT NULL,
  `time_extra_minute` int(11) DEFAULT NULL,
  `time_injury_time` int(11) DEFAULT NULL,
  `localteam_coach_id` int(11) DEFAULT NULL,
  `visitorteam_coach_id` int(11) DEFAULT NULL,
  `standings_localteam_position` int(11) DEFAULT NULL,
  `standings_visitorteam_position` int(11) DEFAULT NULL,
  `leg` varchar(255) DEFAULT NULL,
  `colors` varchar(255) DEFAULT NULL,
  `deleted` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `starting_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `match_json` longtext DEFAULT NULL,
  `time_status_priority` tinyint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_rounds`
--

CREATE TABLE `api_rounds` (
  `id` int(11) NOT NULL,
  `round_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_rounds_copy1`
--

CREATE TABLE `api_rounds_copy1` (
  `id` int(11) NOT NULL,
  `round_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_seasons`
--

CREATE TABLE `api_seasons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `is_current_season` tinyint(2) DEFAULT NULL,
  `current_round_id` int(11) DEFAULT NULL,
  `current_stage_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stats` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_seasons_`
--

CREATE TABLE `api_seasons_` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `is_current_season` tinyint(2) DEFAULT NULL,
  `current_round_id` int(11) DEFAULT NULL,
  `current_stage_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stats` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_seasons_copy1`
--

CREATE TABLE `api_seasons_copy1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `is_current_season` tinyint(2) DEFAULT NULL,
  `current_round_id` int(11) DEFAULT NULL,
  `current_stage_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_stages`
--

CREATE TABLE `api_stages` (
  `id` int(11) NOT NULL,
  `stage_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `league_id` bigint(20) NOT NULL,
  `season_id` bigint(20) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `has_standings` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `api_standings`
--

CREATE TABLE `api_standings` (
  `id` int(11) NOT NULL,
  `standing_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `round_name` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `stage_name` varchar(255) DEFAULT NULL,
  `standings` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_teams`
--

CREATE TABLE `api_teams` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `legacy_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_geo` varchar(255) NOT NULL,
  `short_code` varchar(30) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `national_team` tinyint(2) DEFAULT NULL,
  `founded` int(11) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `json_data` longtext DEFAULT NULL,
  `current_season_id` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `stats` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_teams_players`
--

CREATE TABLE `api_teams_players` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_teams_players_copy1`
--

CREATE TABLE `api_teams_players_copy1` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_teams_players_copy_10_05`
--

CREATE TABLE `api_teams_players_copy_10_05` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_teams_standings`
--

CREATE TABLE `api_teams_standings` (
  `id` int(11) NOT NULL,
  `standing_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `season_id` int(11) DEFAULT NULL,
  `round_id` int(11) DEFAULT NULL,
  `round_name` int(11) DEFAULT NULL,
  `stage_id` int(11) DEFAULT NULL,
  `stage_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `team_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `recent_form` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `overall` text DEFAULT NULL,
  `home` text DEFAULT NULL,
  `away` text DEFAULT NULL,
  `total` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `api_team_leagues`
--

CREATE TABLE `api_team_leagues` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_team_order` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_team_leagues_bak`
--

CREATE TABLE `api_team_leagues_bak` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_team_order` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apple_sign_in_tokens`
--

CREATE TABLE `apple_sign_in_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `main_gallery_item_id` int(10) UNSIGNED DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_blog_post` tinyint(1) NOT NULL DEFAULT 0,
  `is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp(),
  `video_gallery_id` int(11) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8 DEFAULT NULL,
  `old_id` int(255) DEFAULT 0,
  `main_video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `match_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` enum('hidden','top','bottom') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hidden',
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `likes` int(11) NOT NULL DEFAULT 0,
  `transfer_status` enum('ოფიციალური','ტყუილი/ჩაშლა','მაღალი ალბათობა','საშუალო ალბათობა') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_anchors`
--

CREATE TABLE `article_anchors` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_number` int(10) UNSIGNED NOT NULL,
  `open_new_tab` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_gallery_item`
--

CREATE TABLE `article_gallery_item` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `gallery_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_hashtags`
--

CREATE TABLE `article_hashtags` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `hashtag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_league`
--

CREATE TABLE `article_league` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_likes`
--

CREATE TABLE `article_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_player`
--

CREATE TABLE `article_player` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_team`
--

CREATE TABLE `article_team` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `article_views`
--

CREATE TABLE `article_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `category_subscriptions`
--

CREATE TABLE `category_subscriptions` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status_id` int(11) DEFAULT 1,
  `team_id` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `comments_rates`
--

CREATE TABLE `comments_rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments_reply_rates`
--

CREATE TABLE `comments_reply_rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cs_groups`
--

CREATE TABLE `cs_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `next_group_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cs_group_player`
--

CREATE TABLE `cs_group_player` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `player_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `advances_to_next_stage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cs_matches`
--

CREATE TABLE `cs_matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_1_id` int(10) UNSIGNED NOT NULL,
  `player_2_id` int(10) UNSIGNED NOT NULL,
  `stage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_1_score` int(10) UNSIGNED DEFAULT NULL,
  `player_2_score` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cs_players`
--

CREATE TABLE `cs_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fa_cup_groups`
--

CREATE TABLE `fa_cup_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `next_group_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fa_cup_group_player`
--

CREATE TABLE `fa_cup_group_player` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `player_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `advances_to_next_stage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fa_cup_matches`
--

CREATE TABLE `fa_cup_matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_1_id` int(10) UNSIGNED NOT NULL,
  `player_2_id` int(10) UNSIGNED NOT NULL,
  `stage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_1_score` int(10) UNSIGNED DEFAULT NULL,
  `player_2_score` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fa_cup_players`
--

CREATE TABLE `fa_cup_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visibility` tinyint(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_items`
--

CREATE TABLE `gallery_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `filename_preview` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `album_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_in_video_gallery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `id` int(10) UNSIGNED NOT NULL,
  `hashtag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `journalist_comments`
--

CREATE TABLE `journalist_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `journalist_id` int(10) UNSIGNED NOT NULL,
  `content_manager_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `league_l`
--

CREATE TABLE `league_l` (
  `id` int(11) NOT NULL,
  `league_id` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `menu` tinyint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `match_comments`
--

CREATE TABLE `match_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `match_id` int(10) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `match_comments_rates`
--

CREATE TABLE `match_comments_rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `match_comments_reply_rates`
--

CREATE TABLE `match_comments_reply_rates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `match_comment_replies`
--

CREATE TABLE `match_comment_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `match_rate`
--

CREATE TABLE `match_rate` (
  `id` int(11) NOT NULL,
  `match_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `new_polls`
--

CREATE TABLE `new_polls` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET latin1 DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_poll_answers`
--

CREATE TABLE `new_poll_answers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `poll_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_poll_answer_data`
--

CREATE TABLE `new_poll_answer_data` (
  `id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT 0,
  `answer_id` int(11) DEFAULT 0,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_videos`
--

CREATE TABLE `new_videos` (
  `id` int(11) NOT NULL,
  `video_url` text DEFAULT NULL,
  `video_img` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status_id` tinyint(2) DEFAULT 1,
  `title` varchar(255) DEFAULT NULL,
  `video_id` int(11) DEFAULT 0,
  `embed` text DEFAULT NULL,
  `ad_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_video_item`
--

CREATE TABLE `new_video_item` (
  `id` int(11) NOT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `params`
--

CREATE TABLE `params` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status_id` tinyint(2) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `player_subscriptions`
--

CREATE TABLE `player_subscriptions` (
  `user_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `poll_answers`
--

CREATE TABLE `poll_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poll_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `poll_answer_user`
--

CREATE TABLE `poll_answer_user` (
  `poll_answer_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prerolls`
--

CREATE TABLE `prerolls` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `click_tracking_url` text NOT NULL,
  `impression_tracking_url` text NOT NULL,
  `video_url` text NOT NULL,
  `percentage` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sidebar`
--

CREATE TABLE `sidebar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_id` tinyint(2) DEFAULT 1,
  `position` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider_user_id` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_facebook_accounts`
--

CREATE TABLE `social_facebook_accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider_user_id` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tag_subscriptions`
--

CREATE TABLE `tag_subscriptions` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `league_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `matches` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `team_subscriptions`
--

CREATE TABLE `team_subscriptions` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `top_teams`
--

CREATE TABLE `top_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `from_team_id` int(11) NOT NULL,
  `to_team_id` int(11) NOT NULL,
  `transfer_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_transfer_order` tinyint(1) NOT NULL DEFAULT 0,
  `transfer_season_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_leagues`
--

CREATE TABLE `transfer_leagues` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(10) UNSIGNED NOT NULL,
  `league_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_seasons`
--

CREATE TABLE `transfer_seasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tv_programs`
--

CREATE TABLE `tv_programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tv_program_items`
--

CREATE TABLE `tv_program_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `tv_program_id` int(10) UNSIGNED NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_videos`
--

CREATE TABLE `uploaded_videos` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `fav_league_id` int(11) DEFAULT NULL,
  `fav_team_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_copy1`
--

CREATE TABLE `users_copy1` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `fav_league_id` int(11) DEFAULT NULL,
  `fav_team_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fav_leagues` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_teams` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_players` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fav_matches` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `link_hd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_sd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_default` int(11) DEFAULT NULL,
  `view_after` int(11) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery_categories`
--

CREATE TABLE `video_gallery_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `video_gallery_category__gallery_item`
--

CREATE TABLE `video_gallery_category__gallery_item` (
  `gallery_item_id` int(10) UNSIGNED NOT NULL,
  `vgc_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ads_position`
--
ALTER TABLE `ads_position`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `api_assistscorers`
--
ALTER TABLE `api_assistscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`season_id`);

--
-- Indexes for table `api_cardscorers`
--
ALTER TABLE `api_cardscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`season_id`);

--
-- Indexes for table `api_countries`
--
ALTER TABLE `api_countries`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `api_goalscorers`
--
ALTER TABLE `api_goalscorers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`season_id`);

--
-- Indexes for table `api_leagues`
--
ALTER TABLE `api_leagues`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `league_id` (`league_id`),
  ADD KEY `is_cup` (`is_cup`);

--
-- Indexes for table `api_matches`
--
ALTER TABLE `api_matches`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `starting_date` (`starting_date`),
  ADD KEY `league_id` (`league_id`),
  ADD KEY `season_id` (`season_id`),
  ADD KEY `matche_id` (`match_id`),
  ADD KEY `localteam_id` (`localteam_id`,`visitorteam_id`);

--
-- Indexes for table `api_rounds`
--
ALTER TABLE `api_rounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_rounds_copy1`
--
ALTER TABLE `api_rounds_copy1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_seasons`
--
ALTER TABLE `api_seasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `league_id` (`league_id`,`current_round_id`,`season_id`);

--
-- Indexes for table `api_seasons_`
--
ALTER TABLE `api_seasons_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_seasons_copy1`
--
ALTER TABLE `api_seasons_copy1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_stages`
--
ALTER TABLE `api_stages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stage_id` (`stage_id`),
  ADD KEY `season_id` (`season_id`),
  ADD KEY `league_id` (`league_id`);

--
-- Indexes for table `api_standings`
--
ALTER TABLE `api_standings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `league_id` (`league_id`);

--
-- Indexes for table `api_teams`
--
ALTER TABLE `api_teams`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `team_id` (`team_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `api_teams_players`
--
ALTER TABLE `api_teams_players`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `api_teams_players_copy1`
--
ALTER TABLE `api_teams_players_copy1`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `api_teams_players_copy_10_05`
--
ALTER TABLE `api_teams_players_copy_10_05`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `api_teams_standings`
--
ALTER TABLE `api_teams_standings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `league_id` (`league_id`);

--
-- Indexes for table `api_team_leagues`
--
ALTER TABLE `api_team_leagues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`,`league_id`);

--
-- Indexes for table `api_team_leagues_bak`
--
ALTER TABLE `api_team_leagues_bak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`,`league_id`);

--
-- Indexes for table `apple_sign_in_tokens`
--
ALTER TABLE `apple_sign_in_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apple_sign_in_tokens_token_index` (`token`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `articles_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `articles_main_gallery_item_id_foreign` (`main_gallery_item_id`) USING BTREE;
ALTER TABLE `articles` ADD FULLTEXT KEY `title` (`title`);

--
-- Indexes for table `article_anchors`
--
ALTER TABLE `article_anchors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `article_category_article_id_foreign` (`article_id`) USING BTREE,
  ADD KEY `article_category_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `article_gallery_item`
--
ALTER TABLE `article_gallery_item`
  ADD KEY `article_gallery_item_article_id_foreign` (`article_id`) USING BTREE,
  ADD KEY `article_gallery_item_gallery_item_id_foreign` (`gallery_item_id`) USING BTREE;

--
-- Indexes for table `article_hashtags`
--
ALTER TABLE `article_hashtags`
  ADD KEY `article_hashtags_article_id_foreign` (`article_id`),
  ADD KEY `article_hashtags_hashtag_id_foreign` (`hashtag_id`);

--
-- Indexes for table `article_league`
--
ALTER TABLE `article_league`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `article_likes`
--
ALTER TABLE `article_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_player`
--
ALTER TABLE `article_player`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_article_id_foreign` (`article_id`) USING BTREE,
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`) USING BTREE;

--
-- Indexes for table `article_team`
--
ALTER TABLE `article_team`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `article_views`
--
ALTER TABLE `article_views`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `article_views_article_id_foreign` (`article_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`) USING BTREE;

--
-- Indexes for table `category_subscriptions`
--
ALTER TABLE `category_subscriptions`
  ADD KEY `category_subscriptions_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_subscriptions_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_article_id_foreign` (`article_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `comments_rates`
--
ALTER TABLE `comments_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments_reply_rates`
--
ALTER TABLE `comments_reply_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cs_groups`
--
ALTER TABLE `cs_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cs_group_player`
--
ALTER TABLE `cs_group_player`
  ADD KEY `cs_group_player_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `cs_group_player_player_id_foreign` (`player_id`) USING BTREE;

--
-- Indexes for table `cs_matches`
--
ALTER TABLE `cs_matches`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cs_matches_player_1_id_foreign` (`player_1_id`) USING BTREE,
  ADD KEY `cs_matches_player_2_id_foreign` (`player_2_id`) USING BTREE;

--
-- Indexes for table `cs_players`
--
ALTER TABLE `cs_players`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fa_cup_groups`
--
ALTER TABLE `fa_cup_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fa_cup_group_player`
--
ALTER TABLE `fa_cup_group_player`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fa_cup_group_player_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `fa_cup_group_player_player_id_foreign` (`player_id`) USING BTREE;

--
-- Indexes for table `fa_cup_matches`
--
ALTER TABLE `fa_cup_matches`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fa_cup_matches_player_1_id_foreign` (`player_1_id`) USING BTREE,
  ADD KEY `fa_cup_matches_player_2_id_foreign` (`player_2_id`) USING BTREE;

--
-- Indexes for table `fa_cup_players`
--
ALTER TABLE `fa_cup_players`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gallery_items`
--
ALTER TABLE `gallery_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `gallery_items_album_id_foreign` (`album_id`) USING BTREE;

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `home_categories_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `journalist_comments`
--
ALTER TABLE `journalist_comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `journalist_comments_journalist_id_foreign` (`journalist_id`) USING BTREE,
  ADD KEY `journalist_comments_content_manager_id_foreign` (`content_manager_id`) USING BTREE;

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `leagues_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `league_l`
--
ALTER TABLE `league_l`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `match_comments`
--
ALTER TABLE `match_comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_article_id_foreign` (`match_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `match_comments_rates`
--
ALTER TABLE `match_comments_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match_comments_reply_rates`
--
ALTER TABLE `match_comments_reply_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `match_comment_replies`
--
ALTER TABLE `match_comment_replies`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `replies_comment_id_foreign` (`comment_id`) USING BTREE,
  ADD KEY `replies_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `match_rate`
--
ALTER TABLE `match_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `new_polls`
--
ALTER TABLE `new_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_poll_answers`
--
ALTER TABLE `new_poll_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_poll_answer_data`
--
ALTER TABLE `new_poll_answer_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_videos`
--
ALTER TABLE `new_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_video_item`
--
ALTER TABLE `new_video_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `params`
--
ALTER TABLE `params`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `permission_role_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `player_subscriptions`
--
ALTER TABLE `player_subscriptions`
  ADD PRIMARY KEY (`user_id`,`player_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `polls_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `poll_answers`
--
ALTER TABLE `poll_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `poll_answers_poll_id_foreign` (`poll_id`) USING BTREE;

--
-- Indexes for table `poll_answer_user`
--
ALTER TABLE `poll_answer_user`
  ADD KEY `poll_answer_user_poll_answer_id_foreign` (`poll_answer_id`) USING BTREE,
  ADD KEY `poll_answer_user_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `prerolls`
--
ALTER TABLE `prerolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `replies_comment_id_foreign` (`comment_id`) USING BTREE,
  ADD KEY `replies_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `role_user_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `sidebar`
--
ALTER TABLE `sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `slides_article_id_foreign` (`article_id`) USING BTREE;

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tag_subscriptions`
--
ALTER TABLE `tag_subscriptions`
  ADD KEY `tag_subscriptions_tag_id_foreign` (`tag_id`) USING BTREE,
  ADD KEY `tag_subscriptions_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `teams_tag_id_foreign` (`tag_id`) USING BTREE,
  ADD KEY `teams_league_id_foreign` (`league_id`) USING BTREE;

--
-- Indexes for table `team_subscriptions`
--
ALTER TABLE `team_subscriptions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `top_teams`
--
ALTER TABLE `top_teams`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `top_teams_tag_id_foreign` (`tag_id`) USING BTREE;

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_leagues`
--
ALTER TABLE `transfer_leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_seasons`
--
ALTER TABLE `transfer_seasons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfer_seasons_name_unique` (`name`);

--
-- Indexes for table `tv_programs`
--
ALTER TABLE `tv_programs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `tv_programs_channel_id_date_unique` (`channel_id`,`date`) USING BTREE;

--
-- Indexes for table `tv_program_items`
--
ALTER TABLE `tv_program_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tv_program_items_tv_program_id_foreign` (`tv_program_id`) USING BTREE;

--
-- Indexes for table `uploaded_videos`
--
ALTER TABLE `uploaded_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `users_copy1`
--
ALTER TABLE `users_copy1`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `video_gallery_categories`
--
ALTER TABLE `video_gallery_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `video_gallery_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`) USING BTREE;

--
-- Indexes for table `video_gallery_category__gallery_item`
--
ALTER TABLE `video_gallery_category__gallery_item`
  ADD KEY `video_gallery_category__gallery_item_gallery_item_id_foreign` (`gallery_item_id`) USING BTREE,
  ADD KEY `video_gallery_category__gallery_item_vgc_id_foreign` (`vgc_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads_position`
--
ALTER TABLE `ads_position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_assistscorers`
--
ALTER TABLE `api_assistscorers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_cardscorers`
--
ALTER TABLE `api_cardscorers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_countries`
--
ALTER TABLE `api_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_goalscorers`
--
ALTER TABLE `api_goalscorers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_leagues`
--
ALTER TABLE `api_leagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_matches`
--
ALTER TABLE `api_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_rounds`
--
ALTER TABLE `api_rounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_rounds_copy1`
--
ALTER TABLE `api_rounds_copy1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_seasons`
--
ALTER TABLE `api_seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_seasons_`
--
ALTER TABLE `api_seasons_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_seasons_copy1`
--
ALTER TABLE `api_seasons_copy1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_stages`
--
ALTER TABLE `api_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_standings`
--
ALTER TABLE `api_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_teams`
--
ALTER TABLE `api_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_teams_players`
--
ALTER TABLE `api_teams_players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_teams_players_copy1`
--
ALTER TABLE `api_teams_players_copy1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_teams_players_copy_10_05`
--
ALTER TABLE `api_teams_players_copy_10_05`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_teams_standings`
--
ALTER TABLE `api_teams_standings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_team_leagues`
--
ALTER TABLE `api_team_leagues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_team_leagues_bak`
--
ALTER TABLE `api_team_leagues_bak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apple_sign_in_tokens`
--
ALTER TABLE `apple_sign_in_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_anchors`
--
ALTER TABLE `article_anchors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_league`
--
ALTER TABLE `article_league`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_likes`
--
ALTER TABLE `article_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_player`
--
ALTER TABLE `article_player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_team`
--
ALTER TABLE `article_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_views`
--
ALTER TABLE `article_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_rates`
--
ALTER TABLE `comments_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_reply_rates`
--
ALTER TABLE `comments_reply_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_groups`
--
ALTER TABLE `cs_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_matches`
--
ALTER TABLE `cs_matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cs_players`
--
ALTER TABLE `cs_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fa_cup_groups`
--
ALTER TABLE `fa_cup_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fa_cup_group_player`
--
ALTER TABLE `fa_cup_group_player`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fa_cup_matches`
--
ALTER TABLE `fa_cup_matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fa_cup_players`
--
ALTER TABLE `fa_cup_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_items`
--
ALTER TABLE `gallery_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `journalist_comments`
--
ALTER TABLE `journalist_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `league_l`
--
ALTER TABLE `league_l`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_comments`
--
ALTER TABLE `match_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_comments_rates`
--
ALTER TABLE `match_comments_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_comments_reply_rates`
--
ALTER TABLE `match_comments_reply_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_comment_replies`
--
ALTER TABLE `match_comment_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_rate`
--
ALTER TABLE `match_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_polls`
--
ALTER TABLE `new_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_poll_answers`
--
ALTER TABLE `new_poll_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_poll_answer_data`
--
ALTER TABLE `new_poll_answer_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_videos`
--
ALTER TABLE `new_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_video_item`
--
ALTER TABLE `new_video_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `params`
--
ALTER TABLE `params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_answers`
--
ALTER TABLE `poll_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prerolls`
--
ALTER TABLE `prerolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sidebar`
--
ALTER TABLE `sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_subscriptions`
--
ALTER TABLE `team_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_teams`
--
ALTER TABLE `top_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_leagues`
--
ALTER TABLE `transfer_leagues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_seasons`
--
ALTER TABLE `transfer_seasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tv_programs`
--
ALTER TABLE `tv_programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tv_program_items`
--
ALTER TABLE `tv_program_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploaded_videos`
--
ALTER TABLE `uploaded_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_copy1`
--
ALTER TABLE `users_copy1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_gallery_categories`
--
ALTER TABLE `video_gallery_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_hashtags`
--
ALTER TABLE `article_hashtags`
  ADD CONSTRAINT `article_hashtags_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_hashtags_hashtag_id_foreign` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
