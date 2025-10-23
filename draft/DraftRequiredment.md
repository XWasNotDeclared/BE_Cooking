# This doc for draft only
#### Tính năng "Follow" cho phép:

- Một người dùng (User) có thể theo dõi (follow) một người dùng khác.
- Mỗi mối quan hệ follow là một chiều (A follow B không có nghĩa là B follow A).
- Ngăn không cho người dùng tự theo dõi chính mình.
- Đảm bảo rằng một người dùng không thể theo dõi người khác nhiều lần (unique constraint).
- Lưu thời gian khi một người dùng bắt đầu theo dõi người khác.
- Có thể truy xuất danh sách người mà một người dùng đang theo dõi (following) và danh sách người đang theo dõi người dùng đó(followers).
----------