# Java API Exercise

## Learning Objectives
- Introduce SQL version of FKs and demonstrate how they relate to PKs in other tables
- Elaborate on the link between one-to-zero and one-to-many relationships between the tables
- Show how database normalisation removes redundancy in a database (and why this is a good thing)
- Explain how and why normalisation affects the ERD and the relationships it encapsulates.
- Introduce common joins
- Demonstrate joins using SQL

## Instructions

1. Fork this repository
2. Clone your fork to your machine
3. Open TablePlus and connect to your ElephantSQL database
4. You are going to create some tables to match a schema
5. Then populate the tables with the data shown
6. Once you have the tables and data set up then you need to create queries to return the data needed as shown below:

   1. Show the title and director name for all films
   2. Show the title, director and star name for all films
   3. 

## Extension Task 1

1. Refactor the database tables so that the Actors, Directors and Writers all identify people (using a Foreign Key) that are present in a single People table

## Extension Task 2

1. Where necessary refactor the queries to take advantage of this new structure

## Extension Task 3

1. Add a `Cast` table that links Films to Actors (ie the Cast table contains details of all of the Actors in addition to the Star who appear in the Film).
