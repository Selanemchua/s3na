create table KHOA (
MAKH varchar(4) primary key NOT NULL,
TENKH nvarchar(50) NOT NUll,
SLSV int
)
create table SINHVIEN (
MASV varchar(4) primary key NOT NULL,
HOSV nvarchar(30),
TENSV nvarchar(10),
PHAI nvarchar(4),
NGSINH datetime,
NOISINH nvarchar(30),
MAKH varchar (4) foreign key references KHOA(MAKH),
HOCBONG	money,
DIEMTB numeric(4,2),
)
create table MONHOC (
MAMH varchar(4) primary key NOT NULL,
TENMH nvarchar(35),
SOTIET tinyint,
)
create table KETQUA (
MASV varchar(4) foreign key references SINHVIEN(MASV),
MAMH varchar(4) foreign key references MONHOC(MAMH),
LANTHI tinyint,
DIEM numeric(4,2),
KQ varchar(1),

);
