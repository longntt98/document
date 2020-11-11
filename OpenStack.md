<h1 style="text-align: center"> OpenStack Overview

## Quotas

<p style="text-align: center;">
    <img src="https://openstack-xenserver.readthedocs.io/en/latest/_images/page16-modify-quotas.png" style="height: 450px">
</p>

+   Tác dụng: cài đặt giới hạn cho số lượng máy ảo hoặc số lượng CPU mà 1 project hay 1 user có thể dùng -> Giới hạn tài nguyên cho người dùng được người quản trị cài đặt, được cung cấp bên trong Nova Service
+   Các fields:
    - Cores:  số lượng CPU ảo được cho phép sử dụng trong mỗi project
    - Instance: số máy ảo được khởi tạo mỗi project
    - Key_pairs: số Key pair cho phép được sử dụng mỗi user
    - Metadata_items: giới metadata cho mỗi máy ảo
    - Ram: dung lượng Ram tối đa được cho phép trong mỗi một Project
    - Server_group: Số lượng Server group được cho phép trong mỗi project
    - Server_group_member: số lượng member của mỗi server group
+   Vị trí: Nova service
#
## Ironic

<p style= 'text-align: center;';><img src=''></p>
Vị trí: ở trong Nova service

Được cung cấp nhằm tạo ra hệ thống ảo hóa bare-metal (Hệ thống máy ảo có hypervisor chạy trực tiếp phần cứng để quản lý các VMs) thay vì VM thông thường (các VM sẽ được quản lý bởi hypervisor như một phần mềm chạy trên OS)

-> VM ở đây sẽ được quản lý bởi các hypervisor chạy trực tiếp trên phần cứng
#
#
## Rescue Instance

<p style= 'text-align: center;';><img src=''></p>

Sử dụng trong trường hợp nguy cấp ví dụ như 1 hệ thống bị truy cập thất bại. Giúp sửa lại cài đặt hệ thống nhưng vẫn giữ được dữ liệu
(bằng cách kết nối disk hệ thống tới 1 server tạm thời, sau đó có thể kết nối tới server đó, cài đặt lại thống số hệ thống và khôi phục dữ liệu)
#

## abc

<p style= 'text-align: center;';><img src=''></p>

Pause: mọi trạng thái của máy ảo sẽ được giữ lại trong ram, pause sẽ từ chối tất cả truy cập vào instance đó nhưng không giải phóng tài nguyên của nó
Suspend: giữ lại tất cả những trạng thái hiện tại những sẽ được lưu vào storage, nó sẽ giải phóng tài nguyên của máy ảo, phù hợp khi 1 máy ảo không cần đc sử dụng trong thời gian dài, và shutdown luôn instance
#