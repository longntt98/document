single thread: Trong một thời điểm chỉ có một tác vụ đang hoạt động
multi thread: Nhiều tác vụ hoạt động trong cùng 1 thời điểm
Sync: Một chuỗi hành động được diễn ra với quy tắc việc trước hoàn thành, việc sau mới bắt đầu được thực hiện
Async: Một chuỗi hành động được diễn ra với quy tắc, các hành động sẽ được thực hiện bất kể hành động trước nó có được hoàn thành xong hay k

functional programing:

this: Tham chiếu đến đói tượng gọi nó, chứa các thuộc tính và các phương thức của đối tượng gọi

- Concepts:
  - Concept 1: Purity (Sự thuần khiết): Thông qua việc sư dụng Pure Func, mục tiêu là hạn chế các side effect(những thay đổi của các giá trị bên ngoài func)
  - Concept 2: Immutability (Sự bất biến): Không có khái niệm biến trong FP, và không có các vòng lặp. FP sử dụng các thành phần là các hàm và lấy các kết quả ở đầu ra để xử lý tiếp, các vòng lặp sẽ được thay thế bởi đệ quy
  - Concept 3: Higher-order Function: là các hàm hoặc trả về hàm hoặc vừa nhận hàm làm tham số vừa trả về hàm
  - Concept 4: Closures(Bao đóng): Khi 1 hàm trả về 1 hàm khác, hàm được trả về có thể truy cập đến các biến thuộc hàm cha của nó
  - Concept 5: Func Composition(Hàm hợp): viết những hàm cơ bản chung chung để thực hiện các công việc cụ thể về sau
  - Concept 6: Point-free Notation(Không phải chỉ rõ tham số đầu vào khi khởi tạo hàm):
  - Concept 7: Currying: Một Curryied func là một hàm chỉ nhận một tham số trong một thời điểm
    - Thứ tự tham số là rất quan trọng trong việc tận dụng khả năng Currying
  - Concept 8: Referential Transparency(Tham chiếu minh bạch): Khi các vị trí sử dụng pure func đều có thể thay thế bằng phần thân hàm(phần định nghĩa của hàm)

pure function:

- là một hàng có đầu ra chỉ được xác định bởi tham số truyền vào của chúng, nếu tham số truyền vào giống nhau thì hàm sẽ trả về kết quả giống nhau và đặc biệt nó không làm thay đổi dữ liệu bên ngoài phạm vi của nó.
- Các pure func có thể chạy song song.
- Một pure func đảm bảo việc sẽ không có side effects
-

callback: truyền hàm làm tham số của 1 hàm khác, thứ tự xử lý sẽ là, hàm gọi chạy xong r mới tới hàm được gọi

Promise: laf một đối tượng bao hàm một hàm chứa các code không đồng bộ. Promise nhận vào 2 tham số

- resolve: hàm sẽ được gọi nếu code async trong Promise thành công
- reject: hàm sẽ được gọi nếu code async trong Promise thất bại
- method then(): xử lý sau khi Promise được thực hiện thành công
- method catch(): xử lý sau khi Promeise thất bại

Async/Await:

- Async: Khai báo rằng hàm này sẽ xử lý các hàm bất dồng bộ, nó sẽ chờ kết quả của các hàm bất đồng bộ được trả về sau đó mới thực hiện tiếp
- Await: Hàm bất đồng bộ mà Async chờ xử lý, bắt buộc phải trả về một Promise

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
  - Các component sẽ nhận state hoặc dispatch từ store dưới dạng Props được bọc bởi HOC connect
- Cấu trúc:
  - Action: chứa những thông tin dùng để gửi từ ứng dụng đến Store , các thông tin là 1 obj mổ tả những gì đã xảy ra, gồm type và payload, tham số truyền vào
  - Reducer: Nơi xác định State sẽ thay đổi như nào
  - View: hiển thị dữ liệu được cung cấp bởi store
  - Store: Nơi quản lí State
    - Truy cập State bằng getState()
    - update State bằng dispatch
    - Đăng kí listener bằng subcribe

Saga

Tác dụng: là một redux middleware giúp quản lí các side effect trong redux đơn gian hơn (VD: xử lí các bất đồng bộ khi load data)

- Các effect method:

  - Fork: Thực hiện một hoạt động non-blocking trên func được truyền cho nó
  - Take: tạm dừng cho đến khi nhận được action
  - Race: chạy nhiều effect đồng thời, sau đó hủy tất cả nếu một trong số đó kết thúc
  - Call: gọi fuc, nếu return về 1 promise, tạm dừng saga cho đến khi promise được giải quyết
  - Put: dispatch một action
  - Select: chạy một selector func để lấy data từ state
  - takeLatest: nếu ta thực hiện một loạt các actions, nó sẽ chỉ thực thi vầ trả lại kết quả của actions cuối
  - takeEvery: thực thi và trả lại kết quả của mọi actions

- Generator func:
  - Hàm có thể tạm thời dừng và quay lại xử lí tiếp nhiều lần. Một function có thể thực thi nhiều lần mà ngữ cảnh (số lượng biến, giá trị biến, trạng trái của các thành phần bên trong hàm) đều có thể lưu lại sử dụng sau mỗi phiên
  - Gfunc khi được khởi chạy sẽ chạy tự trên xuống dưới, trái sang phải giống 1 func bình thường và sẽ dừng lại khi gặp yield hoặc khi kết thúc func đó. Khi tạm dừng func ta có thể thực hiện các action bất đồng bộ (vd như: request dữ liệu, xử lí dữ liệu mất nhiều thời gian,..) khi thực hiện action async xong, Gfunc có thể tiếp tục chạy với context mới được cập nhật(giá trị của biến, trạng thái những thành phần trong hàm)

Điểm mạnh và điểm yếu của JS

- Mạnh: Khi khai báo biến không phải khai báo kiểu dữ liệu
- Yếu: Khi khai báo biến không phải khai báo kiểu dữ liệu, khi truyền biến đó cho một hàm, vì k kiểm soát kiểu dữ liệu của biến nên ta khó kiểm soát đầu ra, dẫn tới có thể sinh ra bug

isolate

useMemo

- Thường sử dụng để lưu các value mang tính phức tạp cao, khi các value trong depen thay đổi, value đó mới được tính toán lại
- gồm 2 tham số, func và depen, chỉ khi nào các biết trong depen bị thay đội, func mới được chạy lại

useCallback

- Thường được sử dụng để lưu các function các tính phức tạp cao, khi các value trong depen thay đổi, func đó mới được tính toán lại

useRef

- lưu dữ liệu giữa các lần hiện thị, dữ liệu bị thay đổi cũng không thực hiện re-render

pure component

- những component chỉ dùng giá trị props và state để render, không cần tính toán logic

Cách browser render trang web

- Parse HTML: Khi browser nhận dữ liệu HTML, nó sẽ parse thành các dom node
- External resource: Khi gặp các file css, js nó sẽ chạy đi lấy dữ liệu đó
- Parse CSS: khi có được dữ liệu css, browser thực hiện parse CSS và build CSSOM
- Parse JS
- Merge DOM Và CSSOM để tạo ra render tree
- Có được render tree, trình duyệt sẽ tính toán được phần nào, đặt ở đâu, kích thước ra sao, kết thúc quả trình tính toán, trình duyệt sẽ bắt đầu paint là những gì người dùng thấy trên trình duyệt

webpack:

- Công cụ để đóng module.Dự án có nhiều file ts, js style, webpack sẽ đọc hiểu những file này, đóng gói thành những file mà trình duyệt hiểu được và có thể chạy web app

HTML DOM:

- Cấu trúc dạng cây và có thể duyệt dễ dàng. Mỗi khi DOM thay đổi, browser phải tính toán lại CSS và dựng lại trang web -> lâu
  VDOM
- Thực hiện Snapshot trạng thái của cây DOM trước và sau khi cập nhật, tìm điểm khác nhau, thay đổi điểm khác nhau đó và giữ nguyên các element không liên quan, cập nhập lên dom thật

New:
