create database jonson_brothers;

use jonson_brothers;

create table employee
(
number int,
name varchar(50),
salary int,
manager int,
birthyear int,
startyear int,
primary key(number)
);

create table city
(
name varchar(30),
state varchar(30),
primary key(name)
);

create table store
(
number int,
name varchar(30),
primary key(number),
foreign key(name) references city(name)
);

create table dept
(
number int,
name varchar(30),
store int,
floor int,
manager int,
primary key(number),
foreign key(store) references store(number),
foreign key(manager) references employee(number)
);

create table parts
(
number int,
name varchar(30),
color char(20),
weight int,
qoh int,
primary key(number)
);

create table supplier
(
number int,
name varchar(30),
city varchar(30),
primary key(number),
foreign key(city) references city(name)
);

create table supply
(
supplier int,
part int,
shipdate varchar(20),
quan int,
foreign key(supplier) references supplier(number),
foreign key(part) references parts(number)
);

create table debit 
(
number int,
sdate varchar(20),
employee int,
account int,
primary key(number),
foreign key(employee) references employee(number)
);

create table items
(
number int,
name varchar(30),
dept int,
price int,
qoh int,
supplier int,
primary key(number),
foreign key(dept) references dept(number),
foreign key(supplier) references supplier(number)
);

create table sale
(
debit int,
item int,
quantity int,
foreign key(debit) references debit(number),
foreign key(item) references items(number)
);

select * from employee;

INSERT INTO EMPLOYEE values ("10","Ross Stanley","15908","199","1927","1945");
INSERT INTO EMPLOYEE values ("11","Ross Stuart","12067",NULL,"1931","1932");
INSERT INTO EMPLOYEE values ("13","Edwards Peter","9000","199","1928","1958");
INSERT INTO EMPLOYEE values ("26","Thompson Bob","13000","199","1930","1970");
INSERT INTO EMPLOYEE values ("32","Smythe Carol","9050","199","1929","1967");
INSERT INTO EMPLOYEE values ("33","Hayes Evelyn","10100","199","1931","1963");
INSERT INTO EMPLOYEE values ("35","Evans Michael","5000","32","1952","1974");
INSERT INTO EMPLOYEE values ("37","Raveen Lemont","11985","26","1950","1974");
INSERT INTO EMPLOYEE values ("55","James Mary","12000","199","1920","1969");
INSERT INTO EMPLOYEE values ("98","Williams Judy","9000","199","1935","1969");
INSERT INTO EMPLOYEE values ("129","Thomas Tom","10000","199","1941","1962");
INSERT INTO EMPLOYEE values ("157","Jones Tim","12000","199","1940","1960");
INSERT INTO EMPLOYEE values ("199","Bullock J.D.","27000",NULL,"1920","1920");
INSERT INTO EMPLOYEE values ("215","Collins Joanne","7000","10","1950","1971");
INSERT INTO EMPLOYEE values ("430","Brunet Paul C.","17674","129","1938","1959");
INSERT INTO EMPLOYEE values ("843","Schmidt Herman","11204","26","1936","1956");
INSERT INTO EMPLOYEE values ("994","Iwano Masahiro","15641","129","1944","1970");
INSERT INTO EMPLOYEE values ("1110","Smith Paul","6000","33","1952","1973");
INSERT INTO EMPLOYEE values ("1330","Onstad Richard","8779","13","1952","1971");
INSERT INTO EMPLOYEE values ("1523","Zugnoni Arthur A.","19868","129","1928","1949");
INSERT INTO EMPLOYEE values ("1639","Choy Wanda","11160","55","1947","1970");
INSERT INTO EMPLOYEE values ("2398","Wallace Maggie J.","7880","26","1940","1959");
INSERT INTO EMPLOYEE values ("4901","Bailey Chas M.","8377","32","1956","1975");
INSERT INTO EMPLOYEE values ("5119","Bono Sonny","13621","55","1939","1963");
INSERT INTO EMPLOYEE values ("5219","Schwarz Jason B.","13374","33","1944","1959");

select * from city;

INSERT INTO city values ("Amherst","Mass");
INSERT INTO city values ("Atlanta","Ga");
INSERT INTO city values ("Boston","Mass");
INSERT INTO city values ("Dallas","Tex");
INSERT INTO city values ("Denver","Colo");
INSERT INTO city values ("El Cerrito","Calif");
INSERT INTO city values ("Hickville","Okla");
INSERT INTO city values ("Los Angeles","Calif");
INSERT INTO city values ("Madison","Wisc");
INSERT INTO city values ("New York","NY");
INSERT INTO city values ("Oakland","Calif");
INSERT INTO city values ("Paxton","Ill");
INSERT INTO city values ("Salt Lake City","Utah");
INSERT INTO city values ("San Diego","Calif");
INSERT INTO city values ("San Francisco","Calif");
INSERT INTO city values ("Seattle","Wash");
INSERT INTO city values ("White Plains","Neb");

select * from store;

INSERT INTO store values ("5","San Francisco");
INSERT INTO store values ("7","Oakland");
INSERT INTO store values ("8","El Cerrito");

select * from dept;

INSERT INTO dept values ("1","Bargain","5","0","37");
INSERT INTO dept values ("10","Candy","5","1","13");
INSERT INTO dept values ("14","Jewelry","8","1","33");
INSERT INTO dept values ("19","Furniture","7","4","26");
INSERT INTO dept values ("20","Major","Appliances","7","4","26");
INSERT INTO dept values ("26","Linens","7","3","157");
INSERT INTO dept values ("28","Women's","8","2","32");
INSERT INTO dept values ("34","Stationary","5","1","33");
INSERT INTO dept values ("35","Book","5","1","55");
INSERT INTO dept values ("43","Children's","8","2","32");
INSERT INTO dept values ("47","Junior Miss","7","2","129");
INSERT INTO dept values ("49","Toys","8","2","35");
INSERT INTO dept values ("58","Men's","7","2","129");
INSERT INTO dept values ("60","Sportswear","5","1","10");
INSERT INTO dept values ("63","Women's","7","3","32");
INSERT INTO dept values ("65","Junior's","7","3","37");
INSERT INTO dept values ("70","Women's","5","1","10");
INSERT INTO dept values ("73","Children's","5","1","10");
INSERT INTO dept values ("99","Giftwrap","5","1","98");

select * from parts;

INSERT INTO parts values ("1","central processor","pink","10","1");
INSERT INTO parts values ("2","memory","gray","20","32");
INSERT INTO parts values ("3","disk drive","black","685","2");
INSERT INTO parts values ("4","tape drive","black","450","4");
INSERT INTO parts values ("5","tapes","gray","1","250");
INSERT INTO parts values ("6","line printer","yellow","578","3");
INSERT INTO parts values ("7","l-p paper","white","15","95");
INSERT INTO parts values ("8","terminals","blue","19","15");
INSERT INTO parts values ("9","terminal paper","white","2","350");
INSERT INTO parts values ("10","byte-soap","clear","0","143");
INSERT INTO parts values ("11","card reader","gray","327","0");
INSERT INTO parts values ("12","card punch","gray","427","0");
INSERT INTO parts values ("13","paper tape reader","black","107","0");
INSERT INTO parts values ("14","paper tape punch","black","147","0");

select * from supplier;

INSERT INTO supplier values ("5","Amdahl","San Diego");
INSERT INTO supplier values ("15","White Stag","White Plains");
INSERT INTO supplier values ("20","Wormley","Hickville");
INSERT INTO supplier values ("33","Levi-Strauss","San Francisco");
INSERT INTO supplier values ("42","Whitman's","Denver");
INSERT INTO supplier values ("62","Data General","Atlanta");
INSERT INTO supplier values ("67","Edger","Salt Lake City");
INSERT INTO supplier values ("89","Fisher-Price","Boston");
INSERT INTO supplier values ("122","White Paper","Seattle");
INSERT INTO supplier values ("125","Playskool","Dallas");
INSERT INTO supplier values ("199","Koret","Los Angeles");
INSERT INTO supplier values ("213","Cannon","Atlanta");
INSERT INTO supplier values ("241","IBM", "New York");
INSERT INTO supplier values ("440","Spooley","Paxton");
INSERT INTO supplier values ("475","DEC","Amherst");
INSERT INTO supplier values ("999","A E Neumann","Madison");

select * from supply;

INSERT INTO supply values ("5","4","1994-11-15","3");
INSERT INTO supply values ("5","4","1995-01-22","6");
INSERT INTO supply values ("20","5","1995-01-10","20");
INSERT INTO supply values ("20","5","1995-01-11","75");
INSERT INTO supply values ("62","3","1994-06-18","3");
INSERT INTO supply values ("67","4","1995-07-01","1");
INSERT INTO supply values ("89","3","1995-07-04","1000");
INSERT INTO supply values ("89","4","1995-07-04","1000");
INSERT INTO supply values ("122","7","1995-02-01","144");
INSERT INTO supply values ("122","7","1995-02-02","48");
INSERT INTO supply values ("122","9","1995-02-01","144");
INSERT INTO supply values ("241","1","1995-06-01","1");
INSERT INTO supply values ("241","2","1995-06-01","32");
INSERT INTO supply values ("241","3","1995-06-01","1");
INSERT INTO supply values ("241","4","1993-12-31","1");
INSERT INTO supply values ("241","8","1995-07-01","1");
INSERT INTO supply values ("241","9","1995-07-01","144");
INSERT INTO supply values ("440","6","1994-10-10","2");
INSERT INTO supply values ("475","1","1993-12-31","1");
INSERT INTO supply values ("475","1","1994-07-01","1");
INSERT INTO supply values ("475","2","1993-12-31","32");
INSERT INTO supply values ("475","2","1994-05-31","32");
INSERT INTO supply values ("475","3","1993-12-31","2");
INSERT INTO supply values ("475","4","1994-05-31","1");
INSERT INTO supply values ("999","10","1996-01-01","144");

select * from debit;

INSERT INTO debit values ("100581","1995-01-15","157","10000000");
INSERT INTO debit values ("100582","1995-01-15","1110","14356540");
INSERT INTO debit values ("100586","1995-01-16","35","14096831");
INSERT INTO debit values ("100592","1995-01-17","129","10000000");
INSERT INTO debit values ("100593","1995-01-18","13","11652133");
INSERT INTO debit values ("100594","1995-01-18","215","12591815");

select * from items;

INSERT INTO items values ("11","Wash Cloth","1","75","575","213");
INSERT INTO items values ("19","Bellbottoms","43","450","600","33");
INSERT INTO items values ("21","ABC Blocks","1","198","405","125");
INSERT INTO items values ("23","1 lb Box","10","215","100","42");
INSERT INTO items values ("25","2 lb Box, Mix","10","450","75","42");
INSERT INTO items values ("26","Earrings","14","1000","20","199");
INSERT INTO items values ("43","Maze","49","325","200","89");
INSERT INTO items values ("52","Jacket","60","3295","300","15");
INSERT INTO items values ("101","Slacks","63","1600","325","15");
INSERT INTO items values ("106","Clock Book","49","198","150","125");
INSERT INTO items values ("107","The 'Feel' Book","35","225","225","89");
INSERT INTO items values ("115","Gold Ring","14","4995","10","199");
INSERT INTO items values ("118","Towels, Bath","26","250","1000","213");
INSERT INTO items values ("119","Squeeze Ball","49","250","400","89");
INSERT INTO items values ("120","Twin Sheet","26","800","750","213");
INSERT INTO items values ("121","Queen Sheet","26","1375","600","213");
INSERT INTO items values ("127","Ski Jumpsuit","65","4350","125","15");
INSERT INTO items values ("165","Jean","65","825","500","33");
INSERT INTO items values ("258","Shirt","58","650","1200","33");
INSERT INTO items values ("301","Boy's Jean Suit","43","1250","500","33");

select * from sale;

INSERT INTO sale values ("100581","118","5");
INSERT INTO sale values ("100581","120","1");
INSERT INTO sale values ("100582","26","1");
INSERT INTO sale values ("100586","106","2");
INSERT INTO sale values ("100586","127","3");
INSERT INTO sale values ("100592","258","1");
INSERT INTO sale values ("100593","23","2");
INSERT INTO sale values ("100594","52","1");

/* 1. All tuples in  Employee  Table*/ 

select * from employee;

/* 2. department names from dept table   */

select name from dept;

/* 3. which parts are not in store   */

select name from parts where qoh = 0;

/* 4. employees having salary between 10000 and 12000 * */

select name from employee where salary >=10000 AND salary <=12000;

/* 5. items with dept =49 */ 

select name,price,price+(price*10/100) as increase from items where dept =49;

 
/* 6. family name starting with "S" */

select name,number,salary from employee where name like '% S%';

/* 7. names and wts of all parts deliveres by a supplier called "DEC" */

select name, weight 
from parts
where number in ( select part
                from supply,supplier
                where supplier = number and name = "DEC");
                
/* 8. same queries without subqueries */

select distinct a.name,weight,part
from parts a,supply ,supplier b
where supplier = b.number and part = a.number  and b.name = "DEC";

/* 9. name and color of parts having wt > black tape drive(where subquery)  */

select name,color
from parts 
where weight > (select weight
                from parts
                where name="tape drive" and color="black");
        

/* 10. name and color of parts having wt > black tape drive(without where subquery)  */

select a.name,a.color
from parts a, parts b
where a.weight > b.weight and  b.name = "tape drive" and b.color = "black";
                
/* 11. avg salary  */

select avg(salary)
from employee
where manager = 199;
                
/* 12. retrieve its name and number for each supplier  */

select name
from items 
where 



/* 13. total weight of parts delivered ny the supplier in state MASS  */
select sum(weight) as total_weight
from parts 
where number in(select part 
                from supply 
                where supplier in(select number 
                                from supplier
                                where city in(select name 
                                                from city
                                                where state = "Mass"
                                                group by supplier)));
                                                
                                                
/* 14. Insert a new supplier to the supply table */

insert into city values("Bangalore","Karnataka");
insert into supplier valueS("25","Prer","Bangalore");

/* delete from supplier where name ="Prer"; */


/* 15. give managers 5% raise  */


select a.name,b.name,salary,salary+(salary*5/100),store as updated_sal from dept a,employee b where a.store = 8 and a.manager = b.number;







use jonson_brothers;