/*
  Warnings:

  - Changed the type of `rank` on the `Clone` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Clone" DROP COLUMN "rank",
ADD COLUMN     "rank" TEXT NOT NULL;

-- DropEnum
DROP TYPE "Rank";
