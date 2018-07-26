-- ALTER TABLE chettinad_handloom.ch_product_category ADD IF NOT EXISTS c_ref_code varchar(20) NOT NULL AFTER id;
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc01' WHERE `id`='1';
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc02' WHERE `id`='2';
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc03' WHERE `id`='3';

-- ALTER TABLE chettinad_handloom.ch_product_category ADD IF NOT EXISTS c_ref_code varchar(20) NOT NULL AFTER id;
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc01' WHERE `id`='1';
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc02' WHERE `id`='2';
-- UPDATE `ch_product_category` SET `c_ref_code`='pdc03' WHERE `id`='3';

-- ALTER TABLE `ch_product_details` ADD COLUMN `published` tinyint(1) NOT NULL DEFAULT 0 AFTER `status`;
-- UPDATE `ch_product_details` SET `published`=1;

-- RENAME TABLE `chettinad_handloom`.`ch_product_model` TO `chettinad_handloom`.`ch_product_albums`;
-- ALTER TABLE `ch_product_albums` CHANGE `model_code` `album_code` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, CHANGE `model_name` `album_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;

-- ALTER TABLE `ch_product_details` CHANGE `model_id` `album_id` INT(255) NOT NULL;

-- ALTER TABLE `ch_product_albums` ADD `category_id` INT(200) NOT NULL AFTER `album_name`;
-- UPDATE `ch_product_albums` SET `category_id` = '1' WHERE `ch_product_albums`.`id` = 1;
-- UPDATE `ch_product_albums` SET `category_id` = '1' WHERE `ch_product_albums`.`id` = 2;
-- UPDATE `ch_product_albums` SET `category_id` = '2' WHERE `ch_product_albums`.`id` = 3;
-- INSERT INTO `ch_product_albums` (`id`, `album_code`, `album_name`, `category_id`, `description`, `status`, `created_at`, `updated_at`) VALUES (NULL, 'album-2-2', 'album 2-2', '2', 'Regular plain saree pattern', '1', '2017-09-26 02:28:48', '2018-07-23 01:48:24'), (NULL, 'album-3-1', 'album 3-1', '3', 'Temple buttas desgins', '1', '2017-09-26 02:28:48', '2018-07-23 01:49:00'), (NULL, 'album-3-2', 'album 3-2', '3', 'Annapatchai crafts', '1', '2017-09-26 02:28:49', '2018-07-23 01:49:00');

-- UPDATE `ch_product_albums` SET `album_code` = 'album-1-1' WHERE `ch_product_albums`.`id` = 1;
-- UPDATE `ch_product_albums` SET `album_code` = 'album-1-2' WHERE `ch_product_albums`.`id` = 2;
-- UPDATE `ch_product_albums` SET `album_code` = 'album-2-1' WHERE `ch_product_albums`.`id` = 3;

-- UPDATE `ch_product_albums` SET `album_name` = 'album 1-1' WHERE `ch_product_albums`.`id` = 1;
-- UPDATE `ch_product_albums` SET `album_name` = 'album 1-2' WHERE `ch_product_albums`.`id` = 2;
-- UPDATE `ch_product_albums` SET `album_name` = 'album 1-3' WHERE `ch_product_albums`.`id` = 3;

-- UPDATE `ch_product_details` SET `album_id` = '3' WHERE `ch_product_details`.`id` = 6;
-- UPDATE `ch_product_details` SET `album_id` = '4' WHERE `ch_product_details`.`id` = 5;
-- UPDATE `ch_product_details` SET `album_id` = '4' WHERE `ch_product_details`.`id` = 7;
-- UPDATE `ch_product_details` SET `album_id` = '3' WHERE `ch_product_details`.`id` = 8;

-- UPDATE `ch_product_details` SET `album_id` = '5' WHERE `ch_product_details`.`id` = 9;
-- UPDATE `ch_product_details` SET `album_id` = '5' WHERE `ch_product_details`.`id` = 10;
-- UPDATE `ch_product_details` SET `album_id` = '5' WHERE `ch_product_details`.`id` = 12;
-- UPDATE `ch_product_details` SET `album_id` = '6' WHERE `ch_product_details`.`id` = 11;
-- UPDATE `ch_product_details` SET `album_id` = '6' WHERE `ch_product_details`.`id` = 14;
-- UPDATE `ch_product_details` SET `album_id` = '6' WHERE `ch_product_details`.`id` = 13;

CREATE TABLE IF NOT EXISTS `chettinad_handloom`.`ch_filter_price_range` (
    id int(200) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    option_name varchar(50) NOT NULL,
    range_type ENUM ('BETWEEN','ABOVE') NOT NULL,
    value_from float(32,2) NOT NULL,
    value_to float(32,2) NULL,
    is_active tinyint(1) DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `ch_filter_price_range`(`option_name`, `range_type`, `value_from`, `value_to`) VALUES ('Below INR 1000', 'BETWEEN', '0', '1000');
INSERT INTO `ch_filter_price_range`(`option_name`, `range_type`, `value_from`, `value_to`) VALUES ('INR 1000 - INR 2000', 'BETWEEN', '1000', '2000');
INSERT INTO `ch_filter_price_range`(`option_name`, `range_type`, `value_from`) VALUES ('Above INR 2000', 'ABOVE', '2000');

UPDATE `ch_product_albums` SET `album_name` = 'album 2-1' WHERE `ch_product_albums`.`id` = 3;



