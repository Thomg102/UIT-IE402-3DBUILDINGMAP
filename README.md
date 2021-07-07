# UIT-IE402-3DBUILDINGMAP
## 1. Công nghệ sử dụng
- Frontend: Bootstrap, JS, HTML
- Backend: Java
- Frameworks: Spring MVC, Hibernate
- View Engine: JSP
- Database: SQL Server
- Công nghệ nền tảng: **GIS** và **ArcGIS API for JavaScript**

# 2. Chạy chương trình
## 2.1 Thiết lập môi trường
- [jdk](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html)
  > JDK là một thành phần nền tảng chính để xây dựng các ứng dụng Java. 
- [Apache Tomcat](https://tomcat.apache.org/download-90.cgi)
  > Tomcat cung cấp một môi trường máy chủ web HTTP "thuần Java" trong đó mã Java có thể chạy.
 - Eclipse 
  > Các IDE hỗ trợ chạy các chương trình java.
 - [Maven](https://maven.apache.org/download.cgi)
  > Apache maven là một chương trình quản lý dự án cho phép các developers có thể quản lý về version, các dependencies, quản lý build, tự động download javadoc & source, …
  
## 2.2 Thay đổi giá trị một số thuộc tính trong file config Hibernate
- Truy cập file theo đường dẫn _.\UIT-IE402-3DBUILDINGMAP\src\main\resources\hibernate.cfg.xml_
- Thay thế **?** trong file  _hibernate.cfg.xml_  với tài khoản  **SQL Server Authentication**
  `<property name="hibernate.connection.password">?</property>`
  `<property name="hibernate.connection.username">?</property>`
  
## 2.3 Tạo cở sở dữ liệu và thêm dữ liệu
- Mở file  _spatial_data.sql_  theo đường dẫn  _.\UIT-IE402-3DBUILDINGMAP\src\main\resources\spatial_data.sql_ bằng Microsoft SQL Server Management Studio và tiến hành import dữ liệu.

## 2.4 Chạy chương trình
- Khởi chạy Tomcat Server và chạy project.


----------------
Chúc mọi người may mắn!! :relaxed: :heart:

 Hãy liên hệ với tôi nếu có thắc mắc: 18520369@gm.uit.edu.vn
