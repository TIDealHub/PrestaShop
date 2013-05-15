SET NAMES 'utf8';

ALTER TABLE  `PREFIX_store` CHANGE  `latitude`  `latitude` DECIMAL( 13, 8 ) NULL DEFAULT NULL , CHANGE  `longitude`  `longitude` DECIMAL( 13, 8 ) NULL DEFAULT NULL ;

INSERT INTO `PREFIX_configuration` (`name`, `value`, `date_add`, `date_upd`) VALUES('PS_CUSTOMER_CREATION_EMAIL', 1, NOW(), NOW());

ALTER TABLE `PREFIX_webservice_account` CHANGE `class_name` `class_name` VARCHAR(64) NOT NULL DEFAULT 'WebserviceRequest',
CHANGE `module_name` `module_name` VARCHAR(64) NULL DEFAULT NULL;