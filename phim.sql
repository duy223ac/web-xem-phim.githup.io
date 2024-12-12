-- Tạo cơ sở dữ liệu
CREATE DATABASE IF NOT EXISTS websitexemphim;

-- Sử dụng cơ sở dữ liệu
USE websitexemphim;

-- Tạo bảng user
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- Tạo bảng loaiphim
CREATE TABLE IF NOT EXISTS loaiphim (
    id_loaiphim INT AUTO_INCREMENT PRIMARY KEY,
    tênloai_phim VARCHAR(255) NOT NULL
);

-- Tạo bảng chitiet_phim
CREATE TABLE IF NOT EXISTS chitiet_phim (
    id_phim INT AUTO_INCREMENT PRIMARY KEY,
    tenphim VARCHAR(255) NOT NULL,
    linkphim TEXT NOT NULL,
    anh VARCHAR(255) NOT NULL,
    ten_english VARCHAR(255) NOT NULL,
    noidung TEXT,
    id_loaiphim INT,
    FOREIGN KEY (id_loaiphim) REFERENCES loaiphim(id_loaiphim)
);

-- Tạo bảng trailer
CREATE TABLE IF NOT EXISTS trailer (
    id_trailer INT AUTO_INCREMENT PRIMARY KEY,
    tenphim_trailer VARCHAR(255) NOT NULL,
    link_trailer TEXT NOT NULL,
    image_trailer VARCHAR(255) NOT NULL,
    tenenglish_trailer VARCHAR(255) NOT NULL,
    noidung_trailer TEXT,
    id_loaiphim INT,
    FOREIGN KEY (id_loaiphim) REFERENCES loaiphim(id_loaiphim)
);