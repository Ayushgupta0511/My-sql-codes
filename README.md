# 🗄️ MySQL Masterclass — Engineering Digest

<div align="center">
  <img src="https://capsule-render.vercel.app/api?type=slice&color=00758f&height=240&section=header&text=MYSQL%20MASTERCLASS&fontSize=50&animation=fadeIn&fontColor=F29111&desc=🗄️%20Database%20Engineering%20with%20Engineering%20Digest&descSize=20&descAlignY=70&descColor=FFFFFF" width="100%" />

  <br><br>

  <p align="center">
    <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f42c/512.gif" alt="Dolphin" width="75" height="75" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f5c4_fe0f/512.gif" alt="File Cabinet" width="75" height="75" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f511/512.gif" alt="Key" width="75" height="75" />
  </p>
  
  <p align="center"><b>⚡ Think in Relations • Query with Precision • Optimize for Scale ⚡</b></p>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" />
  <img src="https://img.shields.io/badge/Status-In_Progress-orange?style=for-the-badge&logo=gitbook&logoColor=white" alt="Status" />
  <img src="https://img.shields.io/badge/Resource-Engineering%20Digest-blueviolet?style=for-the-badge&logo=youtube&logoColor=white" alt="Resource" />
</p>

---

## 🚀 Repository Overview

> "A bad programmer worries about the code. A good programmer worries about data structures and their relationships." — Linus Torvalds

Welcome to my **MySQL Architecture and Querying** journal! This repository is a dedicated space where I document my deep dive into relational databases, structured query language, and underlying database mechanics, heavily inspired by the clear, conceptual approach of **Engineering Digest**. 

Instead of just memorizing syntax, this repository focuses on understanding *how* the MySQL storage engine handles data under the hood.

---

## 🗺️ Learning Roadmap & Architecture

<div align="center">
  <img src="https://noborus.github.io/ov/mysql/ov-mysql2.gif" width="450" alt="Coding GIF" />
  <p><i>Me trying to figure out why my query took 4.5 seconds before adding an Index</i></p>
</div>

### 🔹 Phase 1: Foundations & The CRUD Paradigm
* **Topics:** Relational Models, Data Types, Constraints (`PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`), and Basic CRUD Operations.
* **Core Goal:** Designing rock-solid, error-free schemas from day one.

### 🔹 Phase 2: Relational Intelligence (Joins & Subqueries)
* **Topics:** `INNER JOIN`, `LEFT/RIGHT JOIN`, `FULL OUTER JOIN` implementations, Self Joins, Subqueries, and Co-related Queries.
* **Core Goal:** Extracting complex datasets across multiple tables efficiently.

### 🔹 Phase 3: Database Design & Normalization
* **Topics:** Anomaly removal, Normal Forms (1NF, 2NF, 3NF, BCNF), and Entity-Relationship (ER) Diagrams.
* **Core Goal:** Structuring data to completely minimize redundancy and preserve integrity.

### 🔹 Phase 4: Production-Level Database Engineering
* **Topics:** Deep dive into **Indexes** (B-Trees / B+ Trees), Query Execution Plans (`EXPLAIN`), Transactions & ACID Properties, Views, and Stored Procedures.
* **Core Goal:** Optimizing raw performance and ensuring systemic reliability.

---

## 🛠️ Tech Stack & Utilities

* **Database Engine:** MySQL Server (v8.x)
* **GUI Client:** MySQL Workbench / DBeaver
* **CLI Engine:** Native MySQL Shell
* **Key Focus:** Performance Tuning & Query Execution Plans

---

## 📊 Practical Assignments & SQL Case Studies

Here are the complete database designs and case studies I have implemented so far:

| Case Study / Project | Concepts Demonstrated | Schema Link |
| :--- | :--- | :---: |
| **🛒 E-Commerce DB Engine** | Complex Foreign Keys, `ON DELETE CASCADE`, Aggregations (`GROUP BY`, `HAVING`) | [View Script](./) |
| **🏦 Banking System Schema** | ACID Compliance, `START TRANSACTION`, `COMMIT`, `ROLLBACK` | [View Script](./) |
| **🎓 Student Course Portal** | Many-to-Many Relationships, Junction Tables, Multi-table `JOINS` | [View Script](./) |

---

## 📅 Structured Progression Log

<details>
<summary><b>Click to expand the Detailed Learning Log 👇</b></summary>

| Day/Module | Core Concepts Mastered | Status | Lab Script |
| :---: | :--- | :---: | :---: |
| 01 | Introduction to DBMS vs RDBMS & Installing MySQL | ✅ | [Module 01](./) |
| 02 | DDL Commands: Creating, Altering, and Dropping Databases/Tables | ✅ | [Module 02](./) |
| 03 | DML Commands: Insert, Update, Delete operations | ✅ | [Module 03](./) |
| 04 | Data Constraints: Restricting bad inputs via Keys | ✅ | [Module 04](./) |
| 05 | Deep Dive into Joins: Merging worlds together | ⏳ | [Module 05](./) |
| 06 | Indexes: How B+ Trees speed up the retrieval process | 📅 | [Coming Soon](./) |

</details>

---

## 🧠 Core Engineering Insights Gained

* **`WHERE` vs `HAVING`:** `WHERE` filters rows *before* rows are grouped, while `HAVING` filters aggregate properties *after* grouping has taken place.
* **The Magic of `EXPLAIN`:** Prefixing queries with `EXPLAIN` lets you see if your database is executing a fast index scan or a slow, agonizing Full Table Scan.
* **Indexes aren't free:** While they speed up `SELECT` operations exponentially, they slow down `INSERT`, `UPDATE`, and `DELETE` actions due to index tree re-balancing.

<div align="center">
  <img src="https://media0.giphy.com/media/v1.Y2lkPTZjMDliOTUyMmtkaXExcXM0YXJsazZjYTdiNHQ5a2F6azQyendhemhwZG42ZmRtbiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/OI4ZG4SjbCJz9VTb53/giphy.gif" width="400" alt="Debugging Meme" />
  <p><i>The exact moment you run an UPDATE query but forgot to append the WHERE clause...</i></p>
</div>

---

## 🤝 Connect With Me

Let's discuss databases, backend architectures, or queries!

<p align="left">
  <a href="https://linkedin.com/in/YOUR_USERNAME" target="_blank">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" />
  </a>
  <a href="https://github.com/YOUR_USERNAME" target="_blank">
    <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" />
  </a>
</p>

---
<p align="center">⭐ Star this repo if you are tracking along with my SQL journey! ⭐</p>
