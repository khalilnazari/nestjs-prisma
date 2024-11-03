## Create NestjsApp

## Create Neon project

## Configure Prisma ORM

### Install Prisma

```
npm i prisma -D

```

### Intialize Prisma

```
npx prisma init
```

This will create 'prisma' directory and the schema file inside it
It all creates .env file so you can add the DATABAES_URL for Neon project.

### Update the .env file

Add Neon url inside the .env file

### Update the Prisma schema based on Neon config

```
// prisma/schema.prisma
datasource db {
  provider  = "postgresql"
  url  	    = env("DATABASE_URL")
  // uncomment next line if you use Prisma <5.10
  // directUrl = env("DATABASE_URL_UNPOOLED")
}
```

# Work with Prisma ORM

### Create Prisma models

inside the schema.prsima file create the models

```
model Employee {
  id        Int      @id @default(autoincrement())
  name      String
  email     String   @unique
  role      Role
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}

enum Role {
  INTERN
  ENGINEER
  ADMIN
}
```

### Create the initial Prisma migrations

Run the command lines for the initial migration file

```
npx prisma migrate dev --name init
```

This will also install the @prisma/client package. Additionally, it will create the Tables inside the database based on the Models created in schema file.

### Create migration for a change in schema

Make a change in schema file. For instance, add a new column 'contact'.

Frist: generate the migration

```
npx prisma generate
```

Second: run the migration

```
npx prisma migrate dev --name <migration-file-name>
```
