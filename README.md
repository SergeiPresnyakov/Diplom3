## Сайт с пользователями с уровня "Погружение", выполненный с помощью готовых компонентов.

### Установка:

1. Клонировать репозиторий
2. composer install

### Тут можно:

1. Регистрироваться
2. Делать login
3. Редактировать свои данные
4. Редактировать свои ссылки на соцсети (раньше это было возможно только при создании пользователя от имени администратора)
5. Просматривать профили других пользователей (клик по аватарке)
6. Менять статус
7. Менять аватарку
8. Менять Email и пароль (указать текущий и новый пароль)
8. Удалять своего пользователя

### От имени администратора можно:

1. Все то же, что и от имени рядового пользователя
2. Редактировать данные других пользователей
3. Удалять профили других пользователей

#### Дополнительно:

1. Есть пагинация (по 6 пользователей на страницу)
2. Настройки подключения к базе данных в файле public/index.php на строке 23
```php
  	PDO::class => function() {
        return new PDO('mysql:host=localhost;dbname=examdb;charset=utf8', 'root', 'root');
  	},
```
3. Прилагается дамп базы данных с пользователями
4. Email администратора johndoe@gmail.com
5. На случай пустой базы данных оставлена возможность сделать текущего залогиненного пользователя администратором. Для этого нужно перейти по адресу "/becameadmin".
6. Можно отключить эту возможность, удалив строку 56 из public/index.php
```php
	$r->addRoute('GET', '/becameadmin', ['App\Controller\AuthorizationController', 'becameAdmin']);
```
7. Аккаунты пользователей из базы:

	* johndoe@gmail.com
	* dicaprio@gmail.com
	* ivanivanov@mail.com
	* petrsamoilov@gmail.com
	* kirillzacharov@gmail.com
	* elizavetam@gmail.com
	* maximsemenov@gmail.com
	* sergeyrudakov@gmail.com
	* vladislavvolkov@gmail.com
	* knyazev@mail.com
	* kiraastahova@mail.com
	* ivankuznecov@gmail.com
	* vladimirsmirnov@gmail.com
	* novikovap@gmail.com
	* michaila@gmail.com

	Ко всем пользователям пароль: 12345