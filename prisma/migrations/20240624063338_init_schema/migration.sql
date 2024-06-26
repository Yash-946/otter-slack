-- CreateTable
CREATE TABLE "Meetings" (
    "id" SERIAL NOT NULL,
    "transcript" TEXT NOT NULL,
    "screenshots_link" TEXT NOT NULL,

    CONSTRAINT "Meetings_pkey" PRIMARY KEY ("id")
);
