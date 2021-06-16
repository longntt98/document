Cách nhận biệt các partial: Tên file được bắt đầu với một dấu gạch dưới (\_) và kết thúc bằng đuôi mở rộng .html.erb
<% render "abc", product: product %> == <% render :partial "abc", locals: { product: @product }%>:partial : phần giao diện
:locals : biến truyền vào nếu có

:object option
<%= render partial: "account", object: @buyer %>

# Tương đương với

<%= render partial: "account", locals: {account: @buyer} %>

# Với :as option, chúng ta có thể đặc tả một tên khác cho biến local

# Ví dụ chúng ta muốn sử dụng tên là user thay vì account

<%= render partial: "account", object: @buyer, as: "user" %>

# Điều này tương đương với:

<%= render partial: "account", locals: {user: @buyer} %>
