## Scope

Scope là tập hợp các biến cũng như các quy về cách truy cập các biến đó. Chỉ Code bên trong func đó mới có thể truy cập các biến trong Scope của func đó.

Một biến phải là duy nhất trong một Scope, không thể có 2 biến cùng tên trong 1 Scope. Nhưng có thể có 2 biến có cùng tên tồn tại ở 2 Scope khác nhau

<p style= 'text-align: center;';><img src='./img/screenshot_1.png'></p>

Nếu 1 Scope được bọc trong 1 Scope khác, code ở Scope bên trong có thể truy cập các biến ở các Scope bọc bên ngoài nó

<p style= 'text-align: center;';><img src='./img/screenshot_2.png'></p>

#

## Values & Types

Js chỉ có kiểu của giá trị, KHÔNG CÓ KIỂU CỦA BIẾN. 

Các kiểu giá trị trong JS:
<p style= 'text-align: center;';><img src='./img/screenshot_3.png'></p>

JS cung cấp toán tử `typeof` sẽ trả về 1 trong số các Type mà JS có.

`typeof a` sẽ không trả về Type của biến a mà sẽ trả về Type của giá trị lưu trong biến a
__Objects__

Khởi tạo và và truy cập các phần tử trong 1 Object:
<p style= 'text-align: center;';><img src='./img/screenshot_4.png'></p>
<p style= 'text-align: center;';><img src='./img/screenshot_5.png'></p>

Ngoài những Object bình thường, kiểu Object còn có các Subtype/các phiên bản đặc biệt như Array và Function. Nghĩa là khi dùng `type of` với 1 `array` hoặc 1 `func` thì trả về sẽ là `Object`

__Array__

Khởi tạo và và truy cập các phần tử trong 1 Array:
<p style= 'text-align: center;';><img src='./img/screenshot_6.png'></p>
<p style= 'text-align: center;';><img src='./img/screenshot_7.png'></p>

`Kiểu của 1 Array là Object`

#
__Function__

<p style= 'text-align: center;';><img src='./img/screenshot_8.png'></p>

`Kiểu của 1 Function là Object`

#

## So sánh giá trị

__Coercion (Ép kiểu)__

Có 2 kiểu ép kiểu trong Js: `explicit` và `implicit`
+ EXPLICIT Coercion: có thể dễ dàng nhìn thấy trong code có 1 sự chuyển đổi từ 1 kiểu sang 1 kiểu khác
<p style= 'text-align: center;';><img src='./img/screenshot_9.png'></p>

+ IMPLICIT Coercion: Sự chuyển đổi kiểu xảy như 1 tác dụng phụ không rõ ràng của một số thao tác khác
<p style= 'text-align: center;';><img src='./img/screenshot_10.png'></p>

__Truthy & Falsy__

Khi 1 Giá trị không phải kiểu boolean được ép về kiểu boolean, giá trị sau khi ép sẽ như sau:
+ Falsy: 
  - ' ' (empty string)
  - 0, -0, NaN(số không hợp lệ)
  - null, undifined
  - false
+ Truthy: 
  - 'hello'
  - 42
  - true
  - [ ], [1,2,3] (array)
  - { }, {a:23} (object)
  - function foo(){...} (function)

__Equality(So sánh bằng)__

Có 4 toán tử so sánh bằng `==`, `===`, `!==`, `!=`
  + `==` : so sánh giá trị
  + `===` : so sánh giá trị và kiểu

Khi sử dụng so sánh '42' == 42, '42' sẽ được ép kiểu về 42 để thực hiện 42 == 42
#

## Function Scopes (Phạm vi hàm)

__Hoisting__

Khi khởi tạo 1 biến bằng `var` , sự định nghĩa này sẽ thuộc về toàn bộ Scope và có thể truy cập từ bất cứ đâu. Nghĩa là, khi 1 biến var được khai báo nó sẽ được 'move' tới đầu của Scope bao bọc nó
<p style= 'text-align: center;';><img src='./img/screenshot_11.png'></p>

#


