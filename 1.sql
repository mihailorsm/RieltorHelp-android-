--
-- Файл сгенерирован с помощью SQLiteStudio v3.0.7 в Чт апр 21 19:33:38 2016
--
-- Использованная кодировка текста: windows-1251
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: ArendImage
CREATE TABLE ArendImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, ArendID INTEGER REFERENCES Arend (ID) ON DELETE CASCADE);

-- Таблица: ArendRoom
CREATE TABLE ArendRoom (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING (0, 30), ПІБ STRING, Дата_появи STRING, Тип_Оренди STRING, Кількість_Кімнат STRING, Район STRING, Адреса STRING, Поверх STRING, Площа STRING, Стан STRING, Опалення STRING, Меблі STRING, Меблі_список STRING, Побутова_техніка STRING, Список_техніки STRING, Тип_Заселення STRING, Тип_Кімнати STRING, Для_кого STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: EarthSellImage
CREATE TABLE EarthSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, EarthSellID INTEGER REFERENCES EarthSell (ID) ON DELETE CASCADE);

-- Таблица: KVsell
CREATE TABLE KVsell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Район STRING, Адреса STRING, Кількість_кімнат STRING, Кількість_поверхів STRING, Тип_ринку STRING, Тип_будинку STRING, Загальна_площа STRING, Площа_житлова STRING, Площа_кухні STRING, Опалення STRING, Стан_квартири STRING, Меблі STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: ArendPrimImage
CREATE TABLE ArendPrimImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, ArendPrimID INTEGER REFERENCES ArendPrim (ID) ON DELETE CASCADE);

-- Таблица: PrimSellImage
CREATE TABLE PrimSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, PrimSellID INTEGER REFERENCES PrimSell (ID) ON DELETE CASCADE);

-- Таблица: ArendRoomImage
CREATE TABLE ArendRoomImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, ArendRoomID INTEGER REFERENCES ArendRoom (ID) ON DELETE CASCADE);

-- Таблица: Arend
CREATE TABLE Arend (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Кількість_кімнат STRING, Тип_обєкту STRING, Район STRING, Адреса STRING, Поверх STRING, Площа STRING, Стан STRING, Опалення STRING, Меблі STRING, Список_меблів STRING, Побутова_техніка STRING, Список_техніки STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: HostelSell
CREATE TABLE HostelSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Район STRING, Адреса STRING, Система_гуртожитку STRING, Кількість_поверхів STRING, Тип_будинку STRING, Загальна_площа STRING, Стан STRING, Опалення STRING, Наявність_меблів STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: KVsellImage
CREATE TABLE KVsellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, KVsellID INTEGER REFERENCES KVsell (ID) ON DELETE CASCADE);

-- Таблица: EarthSell
CREATE TABLE EarthSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Райони_Терн_обл STRING, Адреса STRING, Відстань_км INTEGER, Загальна_площа STRING, Комунікації_список STRING, Документи STRING, Документи_список STRING, Господарскі_будівлі STRING, Господарскі_будівлі_список STRING, Тип_Ділянки STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: ArendPrim
CREATE TABLE ArendPrim (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Район STRING, Адреса STRING, Тип_Ринку STRING, Вид_Приміщення STRING, Тип_обєкту STRING, Розташування STRING, Кільк_Поверхів STRING, Площа STRING, Кількість_Кімнат STRING, Стан STRING, Опалення STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: HostelSellImage
CREATE TABLE HostelSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, HostelSellID INTEGER REFERENCES HostelSell (ID) ON DELETE CASCADE);

-- Таблица: PrimSell
CREATE TABLE PrimSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Район STRING, Адреса STRING, Тип_Ринку STRING, Вид_приміщення STRING, Тип_обєкту STRING, Розташування STRING, Кільк_поверхів STRING, Площа STRING, Кількість_Кімнат STRING, Стан STRING, Опалення STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: HouseSell
CREATE TABLE HouseSell (ID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, Телефон STRING, ПІБ STRING, Дата_появи STRING, Райони_Терн_обл STRING, Повна_адреса STRING, Віддаль_від_міста INTEGER, Площа_землі STRING, Площа_будинку STRING, Тип_будинку STRING, Господарські_будівлі_список STRING, Комунікації STRING, Список_комунікацій STRING, Документи STRING, Документи_список STRING, ЦінаГРН INTEGER, ЦінаДол INTEGER, Загальне STRING);

-- Таблица: HouseSellImage
CREATE TABLE HouseSellImage (ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, Картинка BLOB, Назва STRING, houseSellID INTEGER REFERENCES HouseSell (ID) ON DELETE CASCADE);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
