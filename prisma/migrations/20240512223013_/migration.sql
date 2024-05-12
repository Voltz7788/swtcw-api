/*
  Warnings:

  - You are about to drop the column `rank` on the `Clone` table. All the data in the column will be lost.
  - Added the required column `role` to the `Clone` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Clone" DROP COLUMN "rank",
ADD COLUMN     "role" TEXT NOT NULL;
