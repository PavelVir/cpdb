﻿#Использовать "../src"
#Использовать cmdline
#Использовать readparams
#Использовать v8runner
#Использовать yadisk
#Использовать logos
#Использовать asserts
#Использовать fs
#Использовать tempfiles
#Использовать moskito

Перем ЮнитТест;
Перем ИнструментыСУБД;
Перем МокИсполнительКоманд;
Перем ВременныйКаталог;
Перем Лог;

// Процедура выполняется после запуска теста
//
Процедура ПередЗапускомТеста() Экспорт
	
	ИнструментыСУБД = Новый ИнструментыСУБД();
	
	Лог = Логирование.ПолучитьЛог("ktb.lib.cpdb");
	Лог.УстановитьУровень(УровниЛога.Отладка);

КонецПроцедуры // ПередЗапускомТеста()

// Функция возвращает список тестов для выполнения
//
// Параметры:
//	Тестирование	- Тестер		- Объект Тестер (1testrunner)
//	
// Возвращаемое значение:
//	Массив		- Массив имен процедур-тестов
//	
Функция ПолучитьСписокТестов(Тестирование) Экспорт
	
	ЮнитТест = Тестирование;
	
	СписокТестов = Новый Массив;
	СписокТестов.Добавить("ТестДолжен_СоздатьРезервнуюКопиюБазы");

	Возврат СписокТестов;
	
КонецФункции // ПолучитьСписокТестов()

// Процедура выполняется после запуска теста
//
Процедура ПослеЗапускаТеста() Экспорт

КонецПроцедуры // ПослеЗапускаТеста()
