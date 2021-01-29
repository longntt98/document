# HTML
## Validate form

| Pattern | Description |
| -------- | ----------- |
| [A-Za-z0-9]{1,15}| kí tự 0-9, a-z, A-Z, độ dài từ 1-15 kí tự|
| ^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$ | validate email, có dấu @, có .abc|
| ^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$ | validate date, dd/mm/yyyy|
|^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$|Minimum eight and maximum 10 characters, at least one uppercase letter, one lowercase letter, one number and one special character |
|"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"|Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character|
|^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$|Minimum eight characters, at least one uppercase letter, one lowercase letter and one number|
|^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$|Minimum eight characters, at least one letter, one number and one special character:|
|^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$|Minimum eight characters, at least one letter and one number|
|^[a-zA-Z].*|chữ cái đầu là chữ, sau đó là gì cũng được|


#