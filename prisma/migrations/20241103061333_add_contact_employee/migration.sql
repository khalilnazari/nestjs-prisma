/*
  Warnings:

  - Added the required column `contact` to the `Employee` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Employee" ADD COLUMN     "contact" TEXT NOT NULL;
