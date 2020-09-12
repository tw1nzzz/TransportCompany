CREATE TABLE Марки_автомобилей
(
  Код_марки INT NOT NULL,
  Наименование INT NOT NULL,
  Технические_характеристики INT NOT NULL,
  Описание INT NOT NULL,
  PRIMARY KEY (Код_марки)
);

CREATE TABLE Виды_грузов
(
  Код_вида_груза INT NOT NULL,
  Наименование INT NOT NULL,
  Код_вида_автомобиля_для_транспортировки INT NOT NULL,
  Описание INT NOT NULL,
  PRIMARY KEY (Код_вида_груза),
  UNIQUE (Код_вида_автомобиля_для_транспортировки)
);

CREATE TABLE Должности
(
  Код_должности INT NOT NULL,
  Наименование_должности INT NOT NULL,
  Оклад INT NOT NULL,
  Обязанности INT NOT NULL,
  Требования INT NOT NULL,
  PRIMARY KEY (Код_должности)
);

CREATE TABLE Рейсы
(
  Код_автомобиля INT NOT NULL,
  Откуда INT NOT NULL,
  Дата_прибытия INT NOT NULL,
  Код_груза INT NOT NULL,
  Цена INT NOT NULL,
  Отметка_об_оплате INT NOT NULL,
  Дата_отправления INT NOT NULL,
  Отметка_о_возвращении INT NOT NULL,
  Код_сотрудника INT NOT NULL,
  Заказчик INT NOT NULL,
  Куда INT NOT NULL,
  PRIMARY KEY (Код_автомобиля),
  UNIQUE (Код_груза),
  UNIQUE (Код_сотрудника)
);

CREATE TABLE Автомобили
(
  Код_автомобиля INT NOT NULL,
  Регистрационный_номер INT NOT NULL,
  Номер_кузова_ INT NOT NULL,
  Номер_двигателя INT NOT NULL,
  Год_выпуска INT NOT NULL,
  Код_сотрудника_водителя INT NOT NULL,
  Дата_последнего_ПО INT NOT NULL,
  Код_сотрудника_механика INT NOT NULL,
  Код_марки INT NOT NULL,
  Код_вида_автомобиля INT NOT NULL,
  PRIMARY KEY (Код_автомобиля),
  UNIQUE (Код_сотрудника_водителя),
  UNIQUE (Код_сотрудника_механика),
  UNIQUE (Код_марки),
  UNIQUE (Код_вида_автомобиля)
);

CREATE TABLE Грузы
(
  Код_груза INT NOT NULL,
  Наименование INT NOT NULL,
  Код_вида_груза INT NOT NULL,
  Срок_годности INT NOT NULL,
  Особенности INT NOT NULL,
  PRIMARY KEY (Код_груза),
  UNIQUE (Код_вида_груза)
);

CREATE TABLE Виды_автомобилей
(
  Описание INT NOT NULL,
  Наименование INT NOT NULL,
  Код_вида_автомобиля INT NOT NULL,
  PRIMARY KEY (Код_вида_автомобиля)
);

CREATE TABLE Сотрудники
(
  ФИО INT NOT NULL,
  Возраст INT NOT NULL,
  Пол INT NOT NULL,
  Адрес INT NOT NULL,
  Телефон INT NOT NULL,
  Паспортные INT NOT NULL,
  Код_должности INT NOT NULL,
  Код_сотрудника INT NOT NULL,
  PRIMARY KEY (Код_должности),
  UNIQUE (Код_сотрудника)
);