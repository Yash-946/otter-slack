/*
  Warnings:

  - The primary key for the `Meetings` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `transcript` on the `Meetings` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Meetings" DROP CONSTRAINT "Meetings_pkey",
DROP COLUMN "transcript",
ADD COLUMN     "Meeting_Transcript" TEXT,
ADD COLUMN     "attendees" TEXT,
ADD COLUMN     "chunk_number" TEXT,
ADD COLUMN     "embedding" TEXT,
ADD COLUMN     "meet_link" TEXT,
ADD COLUMN     "month" INTEGER,
ADD COLUMN     "time" TEXT,
ADD COLUMN     "title" TEXT,
ADD COLUMN     "year" INTEGER,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "screenshots_link" DROP NOT NULL,
ADD CONSTRAINT "Meetings_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "Meetings_id_seq";
