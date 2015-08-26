# Check-Data-In-CURSOR-Oracle
Kiểm tra CURSOR  có lấy được dữ liệu không, nếu không thì trả về 1 bản ghi 

– Tối ưu hóa câu lệnh truy vấn với bảng đánh partition và index

Vấn đề: Đối với những bảng có dữ liệu lớn, khi tạo bảng người thiết kế phải thực hiện một số kỹ thuật để tăng tốc độ truy vấn dữ liệu như đánh index, partition. Khi truy vấn người lập trình phải tuân thủ một số nguyên tắc để đảm bảo tối ưu hóa thời gian thực hiện câu lệnh:

Không nên sử dụng hàm đối với trường đánh index, partition:
 
-- khong nen su dung
SELECT *
  FROM users
 WHERE UPPER (user_name) = UPPER ('USER_NAME');
Không nên sử dụng sử dụng toán tử not like, not in, <> với trường đánh index, partition

-- khong nen su dung
SELECT *
  FROM users
 WHERE user_name NOT LIKE 'USER_NAME%';
-- khong nen su dung
SELECT *
  FROM users
 WHERE user_name NOT IN ('USER_NAME1', 'USER_NAME2', 'USER_NAME3');
-- khong nen su dung
SELECT *
  FROM users
 WHERE user_name <> 'USER_NAME1';
Không nên sử dụng like ‘%str’
-- khong nen su dung
SELECT *
  FROM users
 WHERE user_name LIKE '%USER_NAME';
Lưu ý: Các trường hợp trên không nên sử dụng do làm mất tác dụng của cột đánh index
