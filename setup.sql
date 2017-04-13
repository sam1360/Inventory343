-- setup part types
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('batteryHigh', 5.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('batteryMedium', 4.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('batteryLow', 3.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('screenHigh', 5.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('screenMedium', 4.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('screenLow', 3.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('screenFlip', 2.00, datetime('now'), NULL, NULL);
INSERT INTO `part_types` (`partName`, `price`, `startDate`, `endDate`, `deletedAt`) VALUES ('memory', 5.00, datetime('now'), NULL, NULL);

-- setup phone types
INSERT INTO `phone_types` (`phoneType`, `screenTypeId`, `batteryTypeId`, `memoryTypeId`, `description`, `imagePath`, `price`, `deletedAt`) VALUES ('High', 4, 1, 8, 'High End Phone', 'junk/garbage.jpg', 600.00, NULL);
INSERT INTO `phone_types` (`phoneType`, `screenTypeId`, `batteryTypeId`, `memoryTypeId`, `description`, `imagePath`, `price`, `deletedAt`) VALUES ('Medium', 5, 2, 8, 'Medium Tier Phone', 'moreJunk/garbage.tiff', 500.00, NULL);
INSERT INTO `phone_types` (`phoneType`, `screenTypeId`, `batteryTypeId`, `memoryTypeId`, `description`, `imagePath`, `price`, `deletedAt`) VALUES ('Low', 6, 3, 8, 'Low Tier Phone', 'thisistrash/garbage.gif', 300.00, NULL);
INSERT INTO `phone_types` (`phoneType`, `screenTypeId`, `batteryTypeId`, `memoryTypeId`, `description`, `imagePath`, `price`, `deletedAt`) VALUES ('Flip', 7, 3, 8, 'Flip Phone for the budget conscious buyer', 'whatsgoingon/guys.png', 40.00, NULL);

-- setup parts
--Phone id 1 parts high end
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (1, 0, 1, 1, 1, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (1, 0, 1, 4, 1, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (1, 0, 1, 7, 1, 0);

--Phone id 2 parts with defective part middle end
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 0, 1, 5, 3, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 1, 1, 2, 3, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 0, 1, 7, 3, 0);

--Phone id 3 refurbished with broken part in db
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 0, 1, 5, 2, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 0, 1, 2, 2, 0);
INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 0, 1, 7, 2, 0);

INSERT INTO `parts` (`modelType`, `defective`, `used`, `partTypeId`, `phoneId`, `Bogo`) VALUES (2, 1, 0, 2, 2, 0);






-- setup phones
INSERT INTO `phones` (`status`,`modelId`,`saleDate`,`returnDate`,`refurbishedDate`, `Bogo`) VALUES ('New', 1, datetime('now'), datetime('now'), datetime('now'),0);
INSERT INTO `phones` (`status`,`modelId`,`saleDate`,`returnDate`,`refurbishedDate`, `Bogo`) VALUES ('Broken', 2, datetime('now'), datetime('now'), datetime('now'), 0);
INSERT INTO `phones` (`status`,`modelId`,`saleDate`,`returnDate`,`refurbishedDate`, `Bogo`) VALUES ('Refurbished', 2, datetime('now'), datetime('now'), datetime('now'), 0);
