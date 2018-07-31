use master;
Go
drop database Movies;
Go
create Database Movies;
Go
Use Movies;
Go
Create table Movie(
 ID         int           primary key Identity ,
 Title      nvarchar(50)  not null    ,
 mYear      int           not null    ,
 Starring   nvarchar(100) not null    ,
 Poster     nvarchar(150) not null    ,
 Summary    nvarchar(400) not null    ,
 );
 Go
 Create table TopTenMovies(
 ID         int           primary key Identity ,
 Title      nvarchar(50)  not null    ,
 mYear      int           not null    ,
 Starring   nvarchar(100) not null    ,
 Poster     nvarchar(150) not null    ,
 Summary    nvarchar(400) not null    ,
 );
 Go
Create table Genre(
ID     int           primary key  ,
Name                 nvarchar(50) ,
)
Go
insert into Genre values
(1 , 'Romance'   ) ,
(2 , 'Comedy'    ) ,
(3 , 'Adventure' ) ,
(4 , 'Action'    ) ,
(5 , 'Drama '    ) ;
insert into Movie values
('Lion King'                                 ,1994,'Mathew Broderick, Jeremy Irons'       ,'TheLionKing.jpg'         , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Halloween'                                 ,1963,'Donald Pleasence, Jamie Lee Curtis'   ,'Halloween.jpg'           , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Titanic'                                   ,1997,'Leonardo DiCaprio, Kate Winslet'      ,'Titanic.jpg'             , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Terminator'                            ,1984,'Arnold Schwarzenegger, Linda Hamilton','TheTerminator.jpg'       , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Dragon Ball Z Resurrection F'              ,2015,'Masako Nozawa, Ryô Horikawa'          , 'dbz.jpg'                , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Kungfu Panda'                              ,2008,'Jack Black , Anggelina Jolie'         ,'Kungfu Panda.jpg'        , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Dark Night Rises'                      ,2012,'Tom Hardy, Anne Hathaway'             ,'The Dark Night Rises.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Star Wars: Episode VII - The Force Awakens',2015,'Daisy Ridley, John Boyega'            ,'StarWars.jpg'            , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Hobbit: An Unexpected Journey'         ,2012,'Martin Freeman, Ian McKellen'         ,'TheHobbit.jpg'           , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.');            
Go
insert into TopTenMovies values
('Lion King'                                 ,1994,'Mathew Broderick, Jeremy Irons'       ,'TheLionKing.jpg'         , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Halloween'                                 ,1963,'Donald Pleasence, Jamie Lee Curtis'   ,'Halloween.jpg'           , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Titanic'                                   ,1997,'Leonardo DiCaprio, Kate Winslet'      ,'Titanic.jpg'             , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Terminator'                            ,1984,'Arnold Schwarzenegger, Linda Hamilton','TheTerminator.jpg'       , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Dragon Ball Z Resurrection F'              ,2015,'Masako Nozawa, Ryô Horikawa'          , 'dbz.jpg'                , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Kungfu Panda'                              ,2008,'Jack Black , Anggelina Jolie'         ,'Kungfu Panda.jpg'        , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Dark Night Rises'                      ,2012,'Tom Hardy, Anne Hathaway'             ,'The Dark Night Rises.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('Star Wars: Episode VII - The Force Awakens',2015,'Daisy Ridley, John Boyega'            ,'StarWars.jpg'            , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.'),
('The Hobbit: An Unexpected Journey'         ,2012,'Martin Freeman, Ian McKellen'         ,'TheHobbit.jpg'           , 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis at felis posuere scelerisque. Nullam.');            
Go
create table MovieGenre(
 MovieID   int references Movie(ID) ,
 GenreID   int references Genre(ID) ,
 Primary key(MovieID , GenreID)
);
Go
Create Table Roles
( 
ID  int Primary Key Identity ,
RoleName nvarchar(50) not null,
);
Go
Create table Accounts
(
        ID int Primary key Identity,
        Username              nvarchar(50)    not null ,
        [Password]            nvarchar(50)    not null,
        RoleID                int             not null references Roles(ID)
);
Insert Into Roles Values ('Admin'),('User');
Insert Into Accounts values('Osama' , '569011',1),('Reem','1234',2);
select*from Movie;
Go
Create Procedure Authenticate
@UserName nvarchar(50),
@Password nvarchar(50)
As
Begin
Select * From Accounts
Where 
UserName = @UserName
and 
[Password] = @Password
End
go
Create Procedure selectMovie
as
Begin
select * from Movie;
end 
Go

   