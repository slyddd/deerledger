-- DropForeignKey
ALTER TABLE `item` DROP FOREIGN KEY `item_categoryid_fkey`;

-- AlterTable
ALTER TABLE `item` MODIFY `categoryid` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `item` ADD CONSTRAINT `item_categoryid_fkey` FOREIGN KEY (`categoryid`) REFERENCES `category`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
