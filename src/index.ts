import express from "express";
import prisma from "./prismaGlobal";
import { addData } from "./addData";

const app = express();
const port = 3000;

app.get("/", async (req, res) => {
  const index = Math.floor(Math.random() * 21) + 1;
  const trooper = await prisma.clone.findUnique({ where: { id: index } });
  console.log(trooper);
  res.json({ ...trooper });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
