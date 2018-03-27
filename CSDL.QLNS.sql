CREATE DATABASE QUANLYNHANSU
USE QUANLYNHANSU

CREATE TABLE PhongBan
(
PhongbanID char(10),
TenPB nvarchar (50),
DiaChi nvarchar(50),
DienThoai int,
primary key (PhongbanID)
)

CREATE TABLE ChucVu
(
ChucvuID char(10),
Tenchucvu nvarchar(50),
Mota nvarchar(100),
Primary key (ChucvuID)
)
CREATE TABLE NhanVien(
NhanvienID char(10),
Tennhanvien nvarchar(50),
GioiTinh bit,
SoCMND int,
NgaySinh Date,
Dienthoai int,
DanToc nvarchar(50),
Tongiao nvarchar(50),
primary key (NhanvienID),
PhongbanID char(10) references PhongBan(PhongbanID),
ChucvuID char(10) references ChucVu(ChucvuID),
)
Create table NhomQuyen(
NhomquyenID char(10),
primary key (NhomquyenID)
)
CREATE TABLE TaiKhoan(
TaikhoanID char(10),
primary key (TaikhoanID),
Tentaikhoan nvarchar(50),
MatKhau char(20),
NhomquyenID char(10) references NhomQuyen(NhomquyenID)
)
CREATE TABLE TaiKhoanNV
(
primary key (TaikhoanID,NhanvienID),
TaikhoanID char(10) references TaiKhoan(TaikhoanID),
NhanvienID char(10) references NhanVien(NhanvienID),

)
