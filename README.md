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
