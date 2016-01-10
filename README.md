# LearningSite
SimpleSite
Проект образовательного сайта 

Выполнен AlexOAnder
-----
Данный проект был создан для выполнения контрольной работы #1 по предмету ПСП. 
Представляет собой страничку, которая поделена на функциональные области:

-	1) Header(верхняя часть) - содержит название сайта и логотип
-	2) Navigation (левый фрэйм) - содержит навигационные ссылки, котоыре позволяют перемещаться по контенту
-	3) Body ( правый фрэйм) - тело сайта, который содержи в себе необходимую информацию

Сайт в своей работе использует CSS и JS. Сss проявляется в оформлении сайта - цвет фона,
кнопок, некоторые эффекты в навигационной панели. Описывается в файле /css/styles.css.
JS проявляется в обработке события нажатия кнопки на странице заказа, а также для загрузки xsl обработчика.
Может быть встроенным на самой странице, так и внешне поддгружаемым сриптом .js .
Основная часть данного задания сосредоточена на странице order.html ( кнопка "Записаться online" в навигационной панели ).
На данной странице есть несколько особенностей :
	1) 
	```js
	<script type="text/javascript" src="../js/fileSave.js"></script> 
	```
	Подгружает стороннюю библиотеку(скрипт) для сохранения результатов. 
Делается это в блоке 
<code><script type="text/javascript"></code>
в 43 строке. Через поиск id с помощью библиотеки Jqery мы находим 
	а) кнопку, по которой нажали
	б) Добавляем событие на нажатие 
	с) Записываем в переменные значения полей ввода и передаем их сторонней библиотеке для формирования blob массива, в котором мы поместим наши данные.
	2) Загрузка xsl/sml 
	В html мы можем увидеть данную запись 
		<body onLoad="initXML()">
	Она (запись) означает, что после загрузки содержимого страницы, будет вызвана функция initXML().
	Cама функция представляет собой использование особенность ActiveObject для загрузки и обработки XMLDOM.
	Данный метод работает исключительно в браузере InternetExplorer. 
	Поэтому в функции предусмотрена обработка ошибки - она выведет на экран сообщение, что xml загрузка не поддерживается
3) Xml/xsl 
	Файлы данного формата находятся в папке /xml/. Всего их три : 1.xml, 1a.xsl, 1b.xsl
	Файл XML - это данные, которые будут выведены
	XSL - это то, как мы должны вывести эти данные. В нашем случае, это будет таблица.
	В построенной таблице есть две кликабельные ссылки - Курс и Цена. Нажатие на них приводит к вызову orderByName() и orderByCost()
	соответственно. Делается это подгрузкой нужного xsl файла
