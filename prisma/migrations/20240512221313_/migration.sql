/*
  Warnings:

  - Added the required column `designation` to the `Clone` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Clone" ADD COLUMN     "designation" TEXT NOT NULL;
