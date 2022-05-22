# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             elearning
# Server version:       5.5.28
# Server OS:            Win64
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'elearning'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "elearning" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "elearning";


#
# Table structure for table 'category'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "category" (
  "cid" int(5) DEFAULT NULL,
  "maincat" varchar(50) DEFAULT NULL,
  "substream" varchar(50) DEFAULT NULL,
  "parsub" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'category'
#

TRUNCATE TABLE "category";
LOCK TABLES "category" WRITE;
/*!40000 ALTER TABLE "category" DISABLE KEYS;*/
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(7,'Engineering','CSE','C_Fundamentals');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(8,'Engineering','CSE','C++');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(9,'Engineering','CSE','.Net');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(10,'Engineering','CSE','JAVA');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(11,'Engineering','IT','Core_JAVA');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(12,'Engineering','IT','C_Programming');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(13,'Medical','Aalopathy','General_medicine');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(14,'Medical','Aalopathy','Cardio_Related');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(15,'Medical','Homiyopathy','Cardio_Related');
INSERT INTO "category" ("cid", "maincat", "substream", "parsub") VALUES
	(16,'Medical','Homiyopathy','General_Infecation');
/*!40000 ALTER TABLE "category" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'documents'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "documents" (
  "docid" int(5) DEFAULT NULL,
  "maincat" varchar(20) DEFAULT NULL,
  "subcat" varchar(20) DEFAULT NULL,
  "parcat" varchar(20) DEFAULT NULL,
  "fname" varchar(50) DEFAULT NULL,
  "authname" varchar(50) DEFAULT NULL,
  "docno" varchar(20) DEFAULT NULL,
  "price" varchar(10) DEFAULT NULL,
  "ddesc" varchar(50) DEFAULT NULL,
  "docadd" varchar(2000) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'documents'
#

TRUNCATE TABLE "documents";
LOCK TABLES "documents" WRITE;
/*!40000 ALTER TABLE "documents" DISABLE KEYS;*/
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(1,'Engineering','ComputerScience','JAVA','aa','aa','54566','50','dddd','Abstract.docx');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(2,'Engineering','ComputerScience','JAVA','java','ajja','222','11','zzzz','Android Application Workshop.docx');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(3,'Engineering','ComputerScience','JAVA','complete','harbird','55','66','ssss','IMG-20151010-WA0008.jpg');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(4,'Engineering','ComputerScience','JAVA','bb','bb','66','33','sasssss','Hydrangeas.jpg');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(5,'Engineering','ComputerScience','JAVA','cc','cc','22','99','kmsdkmskm','Koala.jpg');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(6,'Engineering','IT','.Net','Complete Reference','Herbird','45886','45','Complete Corse study Book','8. Data mining with big data.pdf');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(7,'Engineering','IT','.Net','aa','aa','22','2344','ssss','Chrysanthemum.jpg');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(8,'Engineering','CSE','JAVA','Complete Reference','Herbert Shildt','1456','500','Good Book for Java','Java Course Notes.docx');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(9,'Engineering','CSE','JAVA','Complete Reference','Herbert Shildt','1456','500','Good Book for Java','Java Course Notes.pdf');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(10,'Engineering','CSE','JAVA','General Notes','Dr. Joshi','2552','200','Good Notes','Java  Course Syllabus.doc');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(11,'Engineering','CSE','JAVA','JAVA PPTs','Prof. Pande','3541','150','Complete Presentation','JAVA.pptx');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(12,'Engineering','CSE','JAVA','JAVA  Audios','Herbird','451','250','Study Audio','01. Jab Jab Phool Khile - Pardesiyon Se Na.mp3');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(13,'Engineering','CSE','JAVA','JAVA  Course Audios','Prof. Gaykwad','452','225','Study Audio','02. Bramhachari - Dil Ke Zarokhe Mein.mp3');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(14,'Engineering','CSE','JAVA','2 JAVA  Course Audios','Gaykwad sir','452','225','Study Audio','Violin Instrumentals1.mp3');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(15,'Engineering','CSE','JAVA','3 JAVA  Course Audios','by sir','455','300','Study Audio 2','instrumental-heartbeat.mp3');
INSERT INTO "documents" ("docid", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(16,'Engineering','CSE','JAVA','3 JAVA  Course Audios','by sir','455','300','Study Audio 2','instrumental-heartbeat.mp3');
/*!40000 ALTER TABLE "documents" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'downloads'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "downloads" (
  "docid" int(5) DEFAULT NULL,
  "uname" tinyint(3) unsigned DEFAULT NULL,
  "maincat" varchar(20) DEFAULT NULL,
  "subcat" varchar(20) DEFAULT NULL,
  "parcat" varchar(20) DEFAULT NULL,
  "fname" varchar(50) DEFAULT NULL,
  "authname" varchar(50) DEFAULT NULL,
  "docno" varchar(20) DEFAULT NULL,
  "price" varchar(10) DEFAULT NULL,
  "ddesc" varchar(50) DEFAULT NULL,
  "docadd" varchar(2000) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'downloads'
#

TRUNCATE TABLE "downloads";
# (No data found.)



#
# Table structure for table 'evaluation'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "evaluation" (
  "evalid" int(5) DEFAULT NULL,
  "subject" varchar(50) DEFAULT NULL,
  "marks" varchar(20) DEFAULT NULL,
  "attempt" varchar(50) DEFAULT NULL,
  "correct" varchar(50) DEFAULT NULL,
  "date" varchar(50) DEFAULT NULL,
  "time" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'evaluation'
#

TRUNCATE TABLE "evaluation";
# (No data found.)



#
# Table structure for table 'exam'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "exam" (
  "qid" int(10) unsigned DEFAULT NULL,
  "subject" varchar(50) DEFAULT NULL,
  "question" varchar(100) DEFAULT NULL,
  "option1" varchar(50) DEFAULT NULL,
  "option2" varchar(50) DEFAULT NULL,
  "option3" varchar(50) DEFAULT NULL,
  "option4" varchar(50) DEFAULT NULL,
  "eval" varchar(20) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'exam'
#

TRUNCATE TABLE "exam";
LOCK TABLES "exam" WRITE;
/*!40000 ALTER TABLE "exam" DISABLE KEYS;*/
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('1','Core_JAVA','Method Overloading is an example of','Static Binding.','Dynamic Binding.','Both of the above.','None of the above.','Static Binding.');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('2','Core_JAVA','What is inheritance?','It is the process where one object acquires the pr','inheritance is the ability of an object to take on','inheritance is a technique to define different met','None of the above.','It is the process wh');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('3','Core_JAVA','Inheritance represents','HAS-A relationship.','IS-A relationship.','Both of the above.','None of the above.','IS-A relationship.');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('4','Core_JAVA','What is the default value of byte variable?','0','0','null','not defined','0');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('5','Core_JAVA','What is the default value of Boolean variable?','TRUE','FALSE','null','not defined','FALSE');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('6','Core_JAVA','What of the following is the default value of a local variable?','null','0','Depends upon the type of variable','Not assigned','Not assigned');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('7','Core_JAVA','What is currentThread()?','It is a Thread public static method used to obtain','It is a thread''s instance method used to get threa','It is a object''s public static method used obtain ','It is a object''s instance method used to get threa','It is a Thread publi');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('8','Core_JAVA','Does garbage collection guarantee that a program will not run out of memory?','TRUE','FALSE','null','not defined','FALSE');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('9','Core_JAVA','Can a top level class be private or protected?','TRUE','FALSE','null','not defined','FALSE');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('10','Core_JAVA','What is a class in java?','A class is a blue print from which individual obje','class is a special data type.','class is used to allocate memory to a data type.','none of the above.','A class is a blue pr');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('11','Core_JAVA','What is the default value of long variable?','0','0','0L','not defined','');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('12','Core_JAVA','Which method must be implemented by all threads?','wait()','start()','stop()','run()','run()');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('13','Core_JAVA','Can be constructor be made private?','True.','False.','','','');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('14','Core_JAVA','What is the size of float variable?','8 bit','16 bit','32 bit','64 bit','32 bit');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('15','Core_JAVA','When finally block gets executed?','"Always when try block get executed',' no matter exception occured or not."','"Always when a method get executed',' no matter exception occured or not."','"Always when a try b');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('16','Core_JAVA','Can try statements be nested?','True.','False.','null','not defined','True.');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('17','Core_JAVA','Dynamic binding uses which information for binding?','type.','object.','Both of the above.','None of the above.','object.');
INSERT INTO "exam" ("qid", "subject", "question", "option1", "option2", "option3", "option4", "eval") VALUES
	('18','Core_JAVA','What is Deserialization?','Deserialization is the process of restoring state ','Serialization is the process of restoring state of','Both of the above.','None of the above.','Deserialization is t');
/*!40000 ALTER TABLE "exam" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "feedback" (
  "fid" int(5) DEFAULT NULL,
  "username" varchar(50) DEFAULT NULL,
  "too" varchar(50) DEFAULT NULL,
  "feedback" varchar(500) DEFAULT NULL,
  "type" varchar(20) DEFAULT NULL,
  "date" varchar(50) DEFAULT NULL,
  "time" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'feedback'
#

TRUNCATE TABLE "feedback";
LOCK TABLES "feedback" WRITE;
/*!40000 ALTER TABLE "feedback" DISABLE KEYS;*/
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(1,'anup',NULL,'This is good feedback','Student','22/03/2017','9:03 AM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(2,'anup',NULL,'This is good feedback','Student','22/03/2017','9:10 AM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(3,'anup','','sssss','Admin','28/04/2017','6:40 PM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(4,'teach','','fffffffff','Student','28/04/2017','6:41 PM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(5,'teach','anup','fffff','Student','28/04/2017','6:44 PM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(6,'teach','anup','fffff','Student','28/04/2017','6:46 PM');
INSERT INTO "feedback" ("fid", "username", "too", "feedback", "type", "date", "time") VALUES
	(7,'Admin','','welcome','Student','28/04/2017','7:28 PM');
/*!40000 ALTER TABLE "feedback" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'files'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "files" (
  "fid" int(5) DEFAULT NULL,
  "filename" varchar(50) DEFAULT NULL,
  "faddress" varchar(200) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'files'
#

TRUNCATE TABLE "files";
# (No data found.)



#
# Table structure for table 'message'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "message" (
  "mid" int(5) DEFAULT NULL,
  "fromm" varchar(50) DEFAULT NULL,
  "too" varchar(50) DEFAULT NULL,
  "subject" varchar(100) DEFAULT NULL,
  "message" varchar(500) DEFAULT NULL,
  "type" varchar(20) DEFAULT NULL,
  "date" varchar(50) DEFAULT NULL,
  "time" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'message'
#

TRUNCATE TABLE "message";
LOCK TABLES "message" WRITE;
/*!40000 ALTER TABLE "message" DISABLE KEYS;*/
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(1,'anup','Test','HI Sir','Hello...','Student','22/03/2017','11:47 AM');
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(4,'Test','anup','Hello sir','I want to give exam','Student','28/04/2017','9:55 AM');
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(5,'anup','teach','aa','aa','Student','28/04/2017','9:56 AM');
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(6,'anup','Test','HI Sir','ddddd','Student','28/04/2017','9:56 AM');
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(7,'teach','anup','hi anup','How your study is going on ?','Teacher','28/04/2017','11:28 AM');
INSERT INTO "message" ("mid", "fromm", "too", "subject", "message", "type", "date", "time") VALUES
	(8,'teach','anup','hi anup','thanks for reply','Teacher','28/04/2017','11:55 AM');
/*!40000 ALTER TABLE "message" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'mycourse'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "mycourse" (
  "cid" int(5) DEFAULT NULL,
  "uname" varchar(50) DEFAULT NULL,
  "maincat" varchar(20) DEFAULT NULL,
  "subcat" varchar(20) DEFAULT NULL,
  "parcat" varchar(20) DEFAULT NULL,
  "fname" varchar(50) DEFAULT NULL,
  "authname" varchar(50) DEFAULT NULL,
  "docno" varchar(20) DEFAULT NULL,
  "price" varchar(10) DEFAULT NULL,
  "ddesc" varchar(50) DEFAULT NULL,
  "docadd" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'mycourse'
#

TRUNCATE TABLE "mycourse";
LOCK TABLES "mycourse" WRITE;
/*!40000 ALTER TABLE "mycourse" DISABLE KEYS;*/
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(1,NULL,'Engineering','ComputerScience','JAVA','aa','aa','54566','50','dddd','Abstract.docx');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(2,NULL,'Engineering','ComputerScience','JAVA','java','ajja','222','11','zzzz','Android Application Workshop.docx');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(3,NULL,'Engineering','ComputerScience','JAVA','complete','harbird','55','66','ssss','IMG-20151010-WA0008.jpg');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(4,NULL,'Engineering','ComputerScience','JAVA','bb','bb','66','33','sasssss','Hydrangeas.jpg');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(5,NULL,'Engineering','ComputerScience','JAVA','cc','cc','22','99','kmsdkmskm','Koala.jpg');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(6,NULL,'Engineering','IT','.Net','Complete Reference','Herbird','45886','45','Complete Corse study Book','8. Data mining with big data.pdf');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(7,'stud','Engineering','ComputerScience','JAVA','complete','harbird','55','66','ssss','IMG-20151010-WA0008.jpg');
INSERT INTO "mycourse" ("cid", "uname", "maincat", "subcat", "parcat", "fname", "authname", "docno", "price", "ddesc", "docadd") VALUES
	(8,'anup','Engineering','ComputerScience','JAVA','complete','harbird','55','66','ssss','IMG-20151010-WA0008.jpg');
/*!40000 ALTER TABLE "mycourse" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'student'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "student" (
  "fname" varchar(20) DEFAULT NULL,
  "lname" varchar(20) DEFAULT NULL,
  "semail" varchar(50) DEFAULT NULL,
  "scontact" varchar(20) DEFAULT NULL,
  "saddress" varchar(50) DEFAULT NULL,
  "seducation" varchar(50) DEFAULT NULL,
  "organization" varchar(50) DEFAULT NULL,
  "learn_intrest" varchar(50) DEFAULT NULL,
  "learned_skill" varchar(20) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'student'
#

TRUNCATE TABLE "student";
# (No data found.)



#
# Table structure for table 'teacher'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "teacher" (
  "fname" varchar(20) DEFAULT NULL,
  "lname" varchar(20) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "contact" varchar(20) DEFAULT NULL,
  "address" varchar(200) DEFAULT NULL,
  "qualification" varchar(50) DEFAULT NULL,
  "ocupation" varchar(50) DEFAULT NULL,
  "sub_intrest" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'teacher'
#

TRUNCATE TABLE "teacher";
# (No data found.)



#
# Table structure for table 'userprofile'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "userprofile" (
  "uid" int(5) DEFAULT NULL,
  "username" varchar(20) DEFAULT NULL,
  "fname" varchar(50) DEFAULT NULL,
  "lname" varchar(50) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "phone" varchar(20) DEFAULT NULL,
  "address" varchar(200) DEFAULT NULL,
  "city" varchar(20) DEFAULT NULL,
  "country" varchar(50) DEFAULT NULL,
  "age" varchar(10) DEFAULT NULL,
  "gender" varchar(10) DEFAULT NULL,
  "qualification" varchar(50) DEFAULT NULL,
  "occupation" varchar(50) DEFAULT NULL,
  "maincat" varchar(50) DEFAULT NULL,
  "subcat" varchar(50) DEFAULT NULL,
  "type" varchar(50) DEFAULT NULL,
  "profpic" varchar(200) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'userprofile'
#

TRUNCATE TABLE "userprofile";
LOCK TABLES "userprofile" WRITE;
/*!40000 ALTER TABLE "userprofile" DISABLE KEYS;*/
INSERT INTO "userprofile" ("uid", "username", "fname", "lname", "email", "phone", "address", "city", "country", "age", "gender", "qualification", "occupation", "maincat", "subcat", "type", "profpic") VALUES
	(3,'student','Piyush','Dabhade','stud@gmail.com','8798654123','Amt','amt','India','22','Male','BE','Student',NULL,NULL,'Student','No');
INSERT INTO "userprofile" ("uid", "username", "fname", "lname", "email", "phone", "address", "city", "country", "age", "gender", "qualification", "occupation", "maincat", "subcat", "type", "profpic") VALUES
	(4,'test','test','test','test@gmail.com','4578965889','ss','ss','ss','12','','','',NULL,NULL,NULL,'Desert.jpg');
INSERT INTO "userprofile" ("uid", "username", "fname", "lname", "email", "phone", "address", "city", "country", "age", "gender", "qualification", "occupation", "maincat", "subcat", "type", "profpic") VALUES
	(5,'anup','Anup','Lahoti','anup@gmail.com','7588751461','Sai Nagar','Amravati','INDIA','25','Male','ME','Developer',NULL,NULL,'Student','No');
INSERT INTO "userprofile" ("uid", "username", "fname", "lname", "email", "phone", "address", "city", "country", "age", "gender", "qualification", "occupation", "maincat", "subcat", "type", "profpic") VALUES
	(6,'teach','aa','aa','teach@gmail.com','7894567894','amt','amt','INDIA','25','male','ME','Developer','Engineering','IT','Teacher','No');
/*!40000 ALTER TABLE "userprofile" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'users'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "users" (
  "uid" int(5) DEFAULT NULL,
  "uname" varchar(50) DEFAULT NULL,
  "email" varchar(50) DEFAULT NULL,
  "password" varchar(50) DEFAULT NULL,
  "type" varchar(20) DEFAULT NULL,
  "city" varchar(20) DEFAULT NULL,
  "country" varchar(20) DEFAULT NULL,
  "address" varchar(200) DEFAULT NULL,
  "status" varchar(50) DEFAULT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'users'
#

TRUNCATE TABLE "users";
LOCK TABLES "users" WRITE;
/*!40000 ALTER TABLE "users" DISABLE KEYS;*/
INSERT INTO "users" ("uid", "uname", "email", "password", "type", "city", "country", "address", "status") VALUES
	(1,'Test','test@gmail.com','test','Teacher','Amravati','INDIA','Amt','Yes');
INSERT INTO "users" ("uid", "uname", "email", "password", "type", "city", "country", "address", "status") VALUES
	(3,'student','stud@gmail.com','stud','Student','Amravati','INDIA','aaa','Yes');
INSERT INTO "users" ("uid", "uname", "email", "password", "type", "city", "country", "address", "status") VALUES
	(4,'sagar','sagar@gmail.com','sagar','Teacher','Amravati','USA','Camp','Yes');
INSERT INTO "users" ("uid", "uname", "email", "password", "type", "city", "country", "address", "status") VALUES
	(5,'anup','anup@gmail.com','anup','Student','amt','INDIA','amt','Yes');
INSERT INTO "users" ("uid", "uname", "email", "password", "type", "city", "country", "address", "status") VALUES
	(6,'teach','teach@gmail.com','tt','Teacher','amt','INDIA','amt','No');
/*!40000 ALTER TABLE "users" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
