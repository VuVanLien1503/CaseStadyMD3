create database book_management;
USE book_management;
create table users(
id int auto_increment primary key,
name varchar(255),
email varchar(255),
password varchar(255) ,
status boolean default true
);
insert into users (name,email,password)values("Hoàng","hoang@gmail.com","123456");
insert into users (name,email,password)values("Liên","lien@gmail.com","123456");
insert into users (name,email,password)values("Sơn","son@gmail.com","123456");
insert into users (name,email,password)values("Vũ Anh","vuAnh@gmail.com","123456");
select*from users;


create table info_user(
id int auto_increment primary key,
birthDay date,
phone varchar(10),
image varchar(255),
user_id int,
foreign key(user_id)references users(id),
status boolean default true
);
insert into info_user(birthDay,phone,image,user_id)values('2000-1-15','0989123455','D:\CodeGym\MD3\Week2\bookManager\src\image\imageUser\user_1.png','1');
insert into info_user(birthDay,phone,image,user_id)values('2001-2-16','0989123456','D:\CodeGym\MD3\Week2\bookManager\src\image\imageUser\user_2.png','2');
insert into info_user(birthDay,phone,image,user_id)values('2002-3-17','0989123457','D:\CodeGym\MD3\Week2\bookManager\src\image\imageUser\user_3.png','3');
insert into info_user(birthDay,phone,image,user_id)values('2003-4-18','0989123458','D:\CodeGym\MD3\Week2\bookManager\src\image\imageUser\user_4.png','4');


create table producer(
 id int auto_increment primary key,
 name varchar (255),
 status boolean default true
 );
 insert into producer(name) values('Nhà xuất bản Trẻ');
 insert into producer(name) values('Nhà xuất bản Kim Đồng');
 insert into producer(name) values('Nhà xuất bản CodeGym');
 insert into producer(name) values('Nhà xuất bản Hội Nhà văn');
 
 create table category(
 id int auto_increment primary key,
 name varchar (255),
 status boolean default true
 );
  insert into category(name) values('Trinh Thám');
  insert into category(name) values('Tiểu Thuyết');
  insert into category(name) values('Lập Trình');
  insert into category(name) values('Ma Thuật');
  
  
 create table book_position(
 id int auto_increment primary key,
 name varchar (255),
 positionContain int,
 position varchar(255),
 quantityVailble int,
 status boolean default true
 );
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A001','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A002','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A003','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A004','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A005','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng một','100','A006','10');
 
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B001','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B002','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B003','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B004','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B005','10');
 insert into book_position(name,positionContain,position,quantityVailble)values('Tầng Hai','100','B006','10');
 
  create table book(
 id int auto_increment primary key,
 name varchar (255),
descriptions varchar(255),
image varchar(255),
status_book boolean default true,
quantity int ,
producer_id int,
category_id int,
book_position int,
foreign key (producer_id) references producer(id),
foreign key (category_id) references category(id),
foreign key (book_position) references book_position(id),
status boolean default true
 );
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_1','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_1.png',50,1,1,1);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_2','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_2.png',50,2,1,2);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_3','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_3.png',50,3,1,3);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_4','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_4.png',50,4,1,4);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_5','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_5.png',50,1,1,5);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_6','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_6.png',50,2,1,6);
 
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Tieu_Thuyet_1','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_1.png',50,3,2,7);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Tieu_Thuyet_2','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_2.png',50,4,2,8);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Tieu_Thuyet_3','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_3.png',50,4,2,9);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Tieu_Thuyet_4','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_4.png',50,3,2,10);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Tieu_Thuyet_5','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_5.png',50,3,2,11);
 insert into book(name,descriptions,image,quantity,producer_id,category_id,book_position) values('Sach_Trinh_Tham_6','Tốt','D:\CodeGym\MD3\Week2\bookManager\src\image\imageBook\TrinhTham\Sach_Trinh_Tham_6.png',50,1,1,12);
