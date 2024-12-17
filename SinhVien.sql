-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    MaSinhVien VARCHAR(10) PRIMARY KEY,
    HoTen NVARCHAR(50),
    Lop NVARCHAR(20)
);

-- Tạo bảng DiemDanh
CREATE TABLE DiemDanh (
    MaSinhVien VARCHAR(10),
    NgayDiemDanh DATE,
    TinhTrang NVARCHAR(20),
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien)
);

-- Tạo bảng BaiTap
CREATE TABLE BaiTap (
    MaSinhVien VARCHAR(10),
    TenBaiTap NVARCHAR(50),
    NgayNop DATE,
    Diem DECIMAL(5,2),
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien)
);

-- Chèn dữ liệu minh họa vào bảng SinhVien
INSERT INTO SinhVien (MaSinhVien, HoTen, Lop) VALUES
('SV001', 'Nguyen Van A', 'KTPM01'),
('SV002', 'Tran Thi B', 'KTPM02'),
('SV003', 'Le Van C', 'KTPM01');

-- Chèn dữ liệu minh họa vào bảng DiemDanh
INSERT INTO DiemDanh (MaSinhVien, NgayDiemDanh, TinhTrang) VALUES
('SV001', '2024-12-10', 'Có mặt'),
('SV002', '2024-12-10', 'Vắng mặt'),
('SV003', '2024-12-10', 'Có mặt');

-- Chèn dữ liệu minh họa vào bảng BaiTap
INSERT INTO BaiTap (MaSinhVien, TenBaiTap, NgayNop, Diem) VALUES
('SV001', 'Bai Tap 1', '2024-12-05', 8.5),
('SV002', 'Bai Tap 1', '2024-12-06', 9.0),
('SV003', 'Bai Tap 1', '2024-12-07', 7.5);
