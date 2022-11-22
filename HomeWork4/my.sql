-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках.
-- В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального),
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.


CREATE TABLE students (
  studentId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

INSERT INTO students VALUES (1, 'Василий Пупкин', 27, 'Копенгаген');
INSERT INTO students VALUES (2, 'Билл Гейтс', 67, 'Сиэтл');
INSERT INTO students VALUES (3, 'Ольга Шилова', 17, 'Москва');
INSERT INTO students VALUES (4, 'Татьяна Артемова', 33, 'Минск');
INSERT INTO students VALUES (5, 'Михаил Лыков', 45, 'Копенгаген');
INSERT INTO students VALUES (6, 'Максим Сидоров', 18, 'Москва');
INSERT INTO students VALUES (7, 'Владимир Прохоров', 30, 'Москва');
INSERT INTO students VALUES (8, 'Вера Ермакован', 38, 'Минск');
INSERT INTO students VALUES (9, 'Кирилл Петухов', 22, 'Москва');
INSERT INTO students VALUES (10, 'Даниил Елисеев', 24, 'Улан-Уде');


SELECT name
FROM students
WHERE address LIKE 'Москва' AND age >= 18 AND age < 30;
