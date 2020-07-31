# SocialNetwork
A simple Friendster/MySpace-type social network made using ASP.NET. Still on the works!

It has always been my dream to revive the vibe that Friendster and MySpace once had. Creating a simple one using ASP.NET.

![alt text](https://sys.reinertupaz.com/fileman/Uploads/programming/screenshot.png)

## Dev Requirements/Environment:

1. Visual Studio (Not visual studio code!) 2012-2019
2. MS SQL Express, preferrably 2012 or later.

## How to set up:

1. Clone the repo, the open the solution file with VS.
2. Create a new DB in MS SQL.
3. On the SocialNetwork website project inside the solution, there is an SQL script inside the dbscripts folder. Run that script on your new DB. It should create the tables and initial data for you.
4. Adjust the connection string on your web.config folder to match your new DB.
5. Reload NuGet packages.
6. Build and run!

### Finished Parts:

1. Login and Registration UI, under default page.
2. Model and services for creating users
3. Implementation of ASP.NET authentication

### TODO's:

1. Account Creation (Service already exists, just implementation.)
2. Login (Service already exists, just implementation.)
3. Create dashboard page.
4. Implement ReCaptcha, set private and public keys inside web.config.
5. Implement SMTP configurations on web.config
6. Create account verification page.
7. Send verification email.
8. Implement upload profile photo
