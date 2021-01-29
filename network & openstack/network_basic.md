<h1 style="text-align: center;">Network basic</h1>


<h2 style="text-align: center;">Các mô hình mạng phổ biến</h1>


## Mô hình OSI

<p style="text-align: center;">
    <img src="https://itforvn.com/wp-content/uploads/2017/08/Osi-model.png" style="height: 300px ; background-color: white">

</p>


<ins style="font-size: large">Aplication layer (Lớp ứng dụng)</ins>: Giao diện tương tác trực tiếp giữa các ứng dụng và dịch vụ mạng đến người dùng

<ins style="font-size: large" >Presentation layer (Lớp trình diện)</ins>:Thực hiện chuyển đổi để 2 ứng dụng giữa 2 host giúp 2 host này có thể hiểu và giao tiếp với nhau

<ins style="font-size: large" >Session layer (Lớp phiên)</ins>: Giúp thiết lập, duy trì và giải phóng các session trao đổi dữ liệu giữa 2 ứng dụng trên 2 host

<ins style="font-size: large" >Transport layer (Lớp giao vận)</ins>:Làm công việc quản lý thực hiện các tác vụ truyền dữ liệu từ điểm đầu đến điểm cuối. Đảm bảo việc truyền dữ liệu được tối ưu nhất

<ins style="font-size: large" >Network layer (Lớp mạng)</ins>: Giúp định tuyển đường truyền (tìm đườn gđi để gửi dữ liệu từ điểm đầu đến điểm cuối thông qua các nút mạng), Router hoạt động ở tầng này

<ins style="font-size: large" >Data Link layer (Lớp liên kết dữ liệu)</ins>: Giúp định nghĩa cách thức đóng gói dữ liệu cho các loại đường truyền. Switch hoạt động ở tầng này

<ins style="font-size: large" >Physical layer (Lớp vật lý)</ins>: Chuyển đổi các dữ liệu thành các tín hiệu cơ, điện, quang từ tín hiệu nhị phân để trên đường truyền vật lý

## Mô hình TCP/IP 
<p style="text-align: center;">
    <img src="https://itforvn.com/wp-content/uploads/2017/08/FOfAU.jpg" style="height: 300px ; background-color: white">
</p>
<ins style="font-size: large" >Application layer (Tầng ứng dụng)</ins>: Cung cấp giao tiếp với người dùng, cung cấp các ứng dụng và cho phép người dùng trao đổi dữ liệu ứng dụng thông qua các dịch vụ mạng khác ( duyệt web, chat). Các protocol phổ biến:

+   TFTP: Giao thức truyền file dựa trên nền UDP
+   SMTP: giao thức phân phối thư điện tử
+   Telnet: giao thức truy cập từ xa để cấu hình thiết bị
+   SNMMP: chạy trên nền UDP, Giúp quản lý và giám sát thiết bị mạng từ xa
+   DNS: Giao thức phân giải tên miền

<ins style="font-size: large" >Transport layer</ins>: duy trì liên lạc đầu cuối trên toàn mạng. Các protocol phổ biến:

+   TCP: 2 bên lần lượt gửi các gói tin không chứa data trước để xác lập kết nối, xác lập thành công, 2 bên mới chính thức truyền dữ liệu cho nhau
+   UDP: không quan tâm gói tin có đến đích và có chính xác hay không, phù hợp với ứng dụng yêu cầu cao về mặt thời gian và độ chính xác thấp. các gói tin có dung lượng nhỏ. 
    -   Bên A gửi bên B các gói tin 1 cách liên tục nhưng không kiểm tra gói tin có đi được tới nơi hay không -> tốc độ truyền tải nhanh   

<ins style="font-size: large" >Network layer</ins>: Xử lý quá trình truyền gói tin trên mạng.

+   Định tuyến: tìm đường để gửi dữ liệu từ nguồn tới đích
+   Chuyển tiếp: Vận chuyển gói tin từ nguồn tới đích
+   Định địa chỉ: định địa chỉ cho các nút mạng
+   Đóng gói dữ liệu: nhận dữ liệu từ giao thức ở trên, thêm header chứa thông tin của tầng mạng và chuyển tiếp đến tầng tiếp theo

Các protocol: IP, ICMP, IGMP

IP protocol

+   Giao thức hướng không liên kết, mỗi gói tin IP được xử lí độc lập với các gói IP khác
+   Địa IP được chia làm 2 phần: Network ID (16 bit đầu) và HostID (16 bit cuối)

<ins style="font-size: large" >Network Accsess</ins>: truyền dữ liệu trong cùng 1 mạng. Các dữ liệu sẽ được đóng vào các Frame và vận chuyển tới đích
<p style="text-align: center;">
    <img src="https://itforvn.com/wp-content/uploads/2017/08/image7.jpeg" style="height: 300px">
</p>

#
##
<p style="text-align: center;">
    <img src="https://www.learnabhi.com/wp-content/uploads/2018/02/switch-and-router.jpg" style="height: 300px">
</p>



## Router
Thiết bị hoạt động ở tầng giao vận, dùng để vận chuyển các gói dữ liệu qua 1 liên mạng và đến các thiết bị đầu cuối thông qua quá trình định tuyến, có vai trò kết nối 2 mạng trở lên với nhau và định tuyến các package

## Switch vs Hub
Trung tâm liên kết các máy tính trong mạng

+ Hub: khi nhận Frame, Hub sẽ thực hiện nhân bản và gửi đến toàn bộ cổng kết nối với Hub
+ Switch: Nhận Frame và gửi đến cổng chỉ định vì S lưu trữ địa chỉ MAC của thiết bị kết nối với nó nên biết được cổng nào liên kết với thiết bị nào
#

## IP Public
<p style="text-align: center;">
    <img src="https://itnetworkzone.net/wp-content/uploads/2020/03/nat.jpg">
</p>
có thể được “nhìn thấy” và truy cập Internet

+ IP động: 
+ IP tĩnh:
#

## IP Private
dùng để phân biệt các thiết bị mạng trong một mạng “riêng”, với nó các thiết bị trong mạng có thể giao tiếp được với nhau, các thiết bị trong mạng riêng đều kết nối với internet thông qua Ip public của router

+ 10.0.0.0 – 10.255.255.255
+ 172.16.0.0 – 172.31.255.255
+ 192.168.0.0 – 192.168.255.255
#

## Local Network (mạng máy tính nội bộ)

<p style="text-align: center;">
    <img src="https://i.imgur.com/HF1PpPG.png" style="height: 300px">
</p>
phạm vi nhỏ, băng thông lớn. Các thiết bị trong mạng sẽ được cấp IP Private để giao tiếp với nhau và sẽ kết nối với Internet thông IP Public của Router  

### WAN
Mạng diện rộng, phạm vi lớn , băng thông thấp 

#
## MAC address
Địa chỉ vật lí, địa chỉ được thiết kế để nhận dạng các thiết bị mạng khác nhau, được gán bởi các những nhà sản xuất

#

## IPv4

<p style="text-align: center;">
    <img src="https://i.pinimg.com/originals/fe/da/fe/fedafe4b628664f0d5084260d9c268f5.png">
</p>
địa chỉ IP gồm 32bit chia làm 4 phần, giới hạn từ 0 - 255

#

## IPv6
địa chỉ IP gồm 128 bit, chia thành 8 nhóm, mỗi nhóm 16 bit, giữa mỗi nhóm phân chia bởi dấu “:”

<p style="text-align: center;">
    <img src="https://www.researchgate.net/profile/Sumit_Khandelwal/publication/271294793/figure/fig1/AS:392055806283779@1470484796300/IPv4-to-IPv6-Conversion-Method1-In-this-method-firstly-to-convert-the-Decimal-IPv4_Q640.jpg" >
</p>
VD: 192.168.25.234 - > ::C0A8:19EA (0000:...: C0A8:19EA)

#
## SubnetMask
chia 1 địa chỉ IP thành các mạng con

<p style="text-align: center;">
    <img src="https://i.imgur.com/30RQtHo.png" style="height: 300px">
</p>

+ Là 1 dải 32 bit chia làm 4 phần, sẽ chia làm 2 phân vùng, vùng bên phải chỉ chứa các bit 0, vùng bên trái chỉ có các bit 1
+ Các default subnetmask:
    -  Lớp A: 255.0.0.0
    -  Lớp B: 255.255.0.0
    -  Lớp C: 255.255.255.0 
#
## Loopback
khi trỏ tới địa chỉ này, trình duyệt sẽ cố gắng kết nối với máy tính đang sử dụng hiện tại

địa chỉ: 127.0.0.1
#

## Port

<p style="text-align: center;">
    <img src="https://sites.google.com/site/phuongpham2205/_/rsrc/1336537259107/relax-1/phanbietsecurenatclientwebproxyclient/proxy2.GIF" >
</p>
Là số nguyên có độ dài 16 bit được chèn trong phần header của gói tin, giúp phân biệt khi 1 máy tính sử dụng nhiều dịch vụ khác nhau, nghĩa là thông qua 1 port bất kì của máy tình thì chỉ nhận được 1 loại dữ liệu nhất định

Có giá trị từ 1- 65.535, được chia làm 3 loại:
+   Well Known Port: 0-1023
+   Registed Port: 1024 - 49151
+   Dynamic/ Private Port: 49152 - 65535

Các cổng WKP và RP phải được kí với IANA trước khi sử dụng

#

## Vmware network

<p style="text-align: center;">
    <img src="https://pbs.twimg.com/media/CSZpJyvUYAAeH6L.png:large" style="height: 300px">
</p>

+   NAT: VM sẽ đi ra mạng vật lý bên ngoài Internet thông qua cơ chế NAT. Lớp mạng bên trong máy ảo khác hoàn toàn với lớp mạng của card vật lý bên ngoài, 2 mạng hàn toàn tách biệt. IP của card mạng ảo sẽ được cấp bởi DHCP
+   Brigde: liên kết trực tiếp card mạng vật lý trên máy tính thật, VM sẽ kết nổi Internet thông qua card mạng vật lý và có chung lớp mạng với card mạng vật lý
+   Host-only: kết nối với một card mạng ảo tương ứng ngoài máy thật, máy ảo sẽ không kết nối vào mạng vật lý bên ngoài hay Internet thông qua máy thật, IP của mạng ảo được cấp bởi DHCP
+   LAN segment: các card mạng của máy ảo gắn kết với nhau thành từng LAN segment, k có tính năng như DHCP và không thể kết nối ra máy thật
#


## VLAN
Mạng cục bổ ảo được tạo ra bởi switch

<p style="text-align: center;">
    <img src="https://www.totolink.vn/public/uploads/img_article/vtplagivlantrunkingprotocollagiduongtrunklagi.png">
</p>

#

## Trunk
Đường kết nối giữa 2 switch để thông giữa nhiều VLAN
<p style="text-align: center;">
    <img src="https://www.totolink.vn/public/uploads/img_article/vtplagivlantrunkingprotocollagiketnoitrunk.png">
</p>

Khi vận chuyển các gói tin thông qua trunk, các gói tin sẽ được đính thêm 1 tag 4 bytes chứa 12 bit là VLAN ID để có thể xác định đích đến.

#

## VTP (VLAN Trunking Protocol)
giao thức hoạt động ở tầng Datalink trong OSI, giúp đồng bộ thông tin và cấu hình VLAN giữa các Switch trong cùng một miền domain, 3 yếu tố: VTP domain, password, mode (sever, client, transparent)
<p style="text-align: center;">
    <img src="https://www.totolink.vn/public/uploads/img_article/vtplagivlantrunkingprotocollagi3cochehoatdongcuavtp.png">
</p>


+   Server: có quyền tạo, xóa, sửa thông tin VLAN, đồng bộ thông tin VLAN từ Switch khác, chuyển tiếp thông tin VLAN đến các switch khác
+   Client: không thể thay đổi thông tin VLAN mà chỉ nhận thông tin VLAN từ Server, đồng bộ thông tin VLAN từ các switch khác và chuyển tiếp thông tin VLAN
+   Transparent: sẽ không tiếp nhẫn thông tin VLAN, nó vẫn nhận thông tin VLAN từ các switch khác nhưng không tiến hành đồng bộ thông tin VLAN. Có thể tạo, xóa sửa VLAN độc lập trên nó. Không gửi thông tin VLAN của bản thân cho các Switch khác nhưng nó có thể forward thông tin VLAN nhận được đến các Switch khác
#


<p style="text-align: center;">
    <img src="https://vnpro.vn/wp-content/uploads/2015/08/C%c3%a1c-h%c3%acnh-th%e1%bb%a9c-truy%e1%bb%81n-tin.jpg">
</p>

+   Unicast: gói tin được chuyển tiếp trực từ một máy phát tới máy thu
+   Multicast: gói tin được chuyển từ một máy đến một mạng con hay một nhóm trong segment
+   Broadcast (miền quảng bá): gói tin được gửi từ một máy đến tất cả các máy trong mạng

#

## NAT 
<p style="text-align: center;">
    <img src="https://itnetworkzone.net/wp-content/uploads/2020/03/nat.jpg">
</p>
sẽ thực hiện thay đổi địa chỉ IP bên trong gói tin, sau đó chuyển qua router và đưa lên Internet. Khi nhận gói tin từ Public, NAT sẽ thay đổi địa chỉ đích thành IP Private để chuyển đi

#

## VPN (mạng riêng ảo)

<p style="text-align: center;height: 300px">
    <img src="https://vnn-imgs-a1.vgcloud.vn/image1.ictnews.vn/_Files/2019/09/08/1982927.jpg">
</p>

Giúp người dùng thiết lập mạng riêng ảo với 1 mạng khác trên Internet. VPN sẽ chuyển tiếp tất cả lưu lượng mạng tới 1 nơi có thể tuy cập tài nguyên mạng cục bộ và vượt qua kiểm duyệt web. Có thể dùng vị trí của VPN làm vị trí của host khi truy cập Internet

Chức năng:
+   Tryt cập web hạn chế mặt địea lý
+   Bảo vệ hoạt động duyệt web

#
## VPS hosting vs Shared hosting

<p style= 'text-align: center; height: 300px';><img src='https://files.namecheap.com/cdn/1071/assets/img/seo/what-is-shared-hosting_img4.png'></p>

VPS Hosting (Server ảo cá nhân): nhà cung cấp dịch vụ ảo hóa tài nguyên của 1 server vật lí để chia sẻ với những người dùng khác. Nhưng cái tài nguyên sẽ được chia phần một cách độc lập

Shared Hosting: người thuê sẽ thuê tài nguyên của bên cung cấp dịch vụ, nhưng sẽ phải dùng chung tài nguyên với những người thuê khác. Vì vậy bộ nhớ và vi xử lý sẽ bị ảnh hưởng nếu ở những dịch vụ của người khác có lượng truy cập tăng cao bất thường

Floatting IP: Dùng để lữu trữ IP public và điều hướng sang những VPS khác nhau trên cùng Datacenter, khi muốn thay đổi VPS mà không muốn thay đổi
#