functional programing:

- Concepts:
  - Concept 1: Purity (Sự bất biến): Thông qua việc sư dụng Pure Func, mục tiêu là hạn chế các side effect(những thay đổi của các giá trị bên ngoài func)
  - Concept 2: Immutability (Sự thuần khiết)
  - Concept 3: Higher-order Function: là các hàm hoặc trả về hàm hoặc vừa nhận hàm làm tham số vừa trả về hàm
  - Concept 4: Closures(Bao đóng): Khi 1 hàm trả về 1 hàm khác, hàm được trả về có thể truy cập đến các biến thuộc hàm cha của nó
  - Concept 5: Func Composition(Hàm hợp): viết những hàm cơ bản chung chung để thực hiện các công việc cụ thể về sau
  - Concept 6: Point-free Notation(Không phải chỉ rõ tham số đầu vào khi khởi tạo hàm):
  - Concept 7: Currying: Một Curryied func là một hàm chỉ nhận một tham số trong một thời điểm
    - Thứ tự tham số là rất quan trọng trong việc tận dụng khả năng Currying
  -

pure function:

- là một hàng có đầu ra chỉ được xác định bởi tham số truyền vào của chúng, nếu tham số truyền vào giống nhau thì hàm sẽ trả về kết quả giống nhau và đặc biệt nó không làm thay đổi dữ liệu bên ngoài phạm vi của nó.
- Các pure func có thể chạy song song.
- Một pure func đảm bảo việc sẽ không có side effects
-

callback: một hàm trả về một hàm khác

side effects:

- Xảy ra khi ta tác động thứ gì đó vào bên trong hàm khiến cho bên ngoài hàm cũng bị tác động và ngược lại
  - Thay đổi giá trị biến global
  - Hiển thị dữ liệu ra màn hình
  - Viết hoặc tạo một file
  - Thay đổi Dom
  - Lưu dữ liệu về DB
- Kết luân: bất kể những hành động gì gây ra sự thay đổi về trạng thái hay tính chất số lượng đều gọi là side effects

immutable và mutable

lí do js phải xử lý bất đồng bộ:

- Vì js ngôn ngữ xử lý đơn luồng, không giống java/ C++ có các cơ chế xử lý đa luồng. Lập trình bất đồng bộ giúp js xử lý được nhiều tác vụ trong cùng 1 thời điểm: Việc gọi API, nhận response nhưng vẫn có thể bắt được các sự kiện từ chuột và bàn phím của người dùng -> Tăng trải nghiệm người dùng và hiệu suất của phần mềm

so sánh trong js

- đối với number, string, phép so sánh sẽ so sánh giá trị của chúng
- đối với obj, sẽ so sánh qua tham chiếu, kiểm tra xem đối tượng có được tham chiếu đến cùng vị trí ô nhớ hay không
  - ví dụ: khi so sánh 2 obj có các cặp key value giống nhau, nhưng trong quá trình khởi tạo 2 biến, 2 obj được tham chiếu được các giá trị có vị trí ô nhớ khác nhau -> false

Cách kiểm tra 2 obj có bằng nhau không

- B1: Khởi tạo hàm equal() nhận vào 2 obj
- B2: Tạo 2 mảng chứa key của 2 obj là array2 và array2
- B3: so sánh độ dài 2 mảng vừa tạo.
- Nếu sai -> false
- Nếu đúng -> B4
- B4: vòng for of của array 1
- B5: Trong vòng for, khởi tạo 2 biến là val1 và val2 tương ứng với obj1[key] và obj2[key]
- B5: khởi tạo biến areobjs kiểm tra val1 và val2 có đồng thời cùng có kiểu là obj k, bằng kiểm tra chúng có khác null và typeof của chúng bằng obj
- B6: kiểm tra nếu areobjs == true và đệ quy hàm equal(val1, val2)== false hoặc areobjs == false và val1 != val2 -> false
- B7: vượt qua tất cả những test bên trên -> true

Redux

- Nguyên lí:
  - State của toàn bộ ứng dụng được chứa trong 1 obj tree duy nhất
  - Cách duy nhất để thay đổi State là dùng action
  - State không được thao tác trực tiếp mà mỗi phần được sao chép và gộp lại thành một State mới
  - Các component sẽ nhận state hoặc dispatch từ store dưới dạng State được bọc bởi HOC connect
- Cấu trúc:
  - Action: Hành động được thực thi
  - Reducer: Nơi xác định State sẽ thay đổi như nào
  - Store: Nơi quản lí State
    - Truy cập State bằng getState()
    - update State bằng dispatch
    - Đăng kí listener bằng subcribe
    - View

Saga

- Các effect method:
  - Fork: Thực hiện một hoạt động non-blocking trên func được truyền cho nó
  - Take: tạm dừng cho đến khi nhận được action
  - Race: chạy nhiều effect đồng thời, sau đó hủy tất cả nếu một trong số đó kết thúc
  - Call: gọi fuc, nếu return về 1 promise, tạm dừng saga cho đến khi promise được giải quyết
  - Put: dispatch một action
  - Select: chạy một selector func để lấy data từ state
  - takeLatest: nếu ta thực hiện một loạt các actions, nó sẽ chỉ thực thi vầ trả lại kết quả của actions cuối
  - takeEvery: thực thi và trả lại kết quả của mọi actions

isolate

Cách browser render trang web
