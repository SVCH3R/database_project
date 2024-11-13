-- Delete FROM climblab.Sessions_x_Equipment *;
-- Delete FROM climblab.Sessions_ *;
-- Delete FROM climblab.Orders *;
-- Delete FROM climblab.Abonements *;
-- Delete FROM climblab.Equipment *;
-- Delete FROM climblab.Staff *;
-- Delete FROM climblab.Clients *;



-- Заполнение таблицы клиентов
INSERT INTO climblab.Clients (client_fullname, client_birthdate, client_contacts) VALUES
('Иванов Иван Иванович', '1990-05-15', '123-456-789'),
('Петров Петр Петрович', '1985-10-20', '987-654-321'),
('Сидорова Анна Сергеевна', '1995-03-08', '456-789-123'),
('Козлова Елена Дмитриевна', '1988-12-01', '789-123-456'),
('Смирнов Александр Александрович', '1992-07-25', '321-654-987'),
('Николаева Ольга Ивановна', '1987-04-12', '654-987-321'),
('Кузнецов Артем Владимирович', '1993-11-30', '987-123-456'),
('Васильева Екатерина Сергеевна', '1986-09-05', '456-321-789'),
('Морозов Дмитрий Петрович', '1991-02-18', '789-456-123'),
('Павлова Анна Андреевна', '1989-08-22', '654-321-987'),
('Калинина Наталья Денисовна', '1994-06-07', '321-987-654'),
('Лебедев Алексей Игоревич', '1984-03-14', '123-789-456'),
('Исакова Людмила Васильевна', '1996-01-29', '456-123-789'),
('Соколов Павел Станиславович', '1983-10-04', '789-456-123'),
('Федорова Мария Алексеевна', '1990-05-15', '654-321-987'),
('Андреев Денис Олегович', '1985-10-20', '987-123-456'),
('Григорьева Ольга Николаевна', '1995-03-08', '321-789-456'),
('Романов Владимир Артемович', '1988-12-01', '456-987-123'),
('Тимофеев Михаил Владиславович', '1992-07-25', '789-456-321'),
('Комаров Артем Сергеевич', '1987-04-12', '123-321-789'),
('Волков Андрей Валерьевич', '1993-11-30', '987-789-456'),
('Богданова Екатерина Андреевна', '1986-09-05', '321-456-789'),
('Макаров Даниил Максимович', '1991-02-18', '789-123-456'),
('Филиппова Наталья Ильинична', '1989-08-22', '456-789-123'),
('Алексеев Сергей Андреевич', '1994-06-07', '123-456-789'),
('Королева Лариса Александровна', '1984-03-14', '789-321-456'),
('Пономарев Владислав Анатольевич', '1996-01-29', '456-789-321'),
('Кузьмина Елена Дмитриевна', '1983-10-04', '987-654-321'),
('Марков Александр Степанович', '1990-05-15', '321-789-456'),
('Гаврилова Ольга Михайловна', '1985-10-20', '654-123-789'),
('Беляева Марина Александровна', '1995-03-08', '123-456-321'),
('Антонов Андрей Анатольевич', '1988-12-01', '789-321-456'),
('Кудряшова Татьяна Сергеевна', '1992-07-25', '456-789-123'),
('Зайцев Сергей Николаевич', '1987-04-12', '321-456-789'),
('Полякова Анастасия Владимировна', '1993-11-30', '789-123-456'),
('Сидорова Екатерина Игоревна', '1986-09-05', '456-789-321'),
('Лазарев Александр Петрович', '1991-02-18', '321-987-456'),
('Краснова Надежда Сергеевна', '1989-08-22', '789-456-321'),
('Журавлев Александр Петрович', '1987-09-15', '444-555-666'),
('Ильина Мария Сергеевна', '1992-03-30', '555-666-777'),
('Куликов Сергей Андреевич', '1991-08-04', '666-777-888'),
('Андреев Александр Сергеевич', '1990-03-15', '111-222-333'),
('Беляева Екатерина Ивановна', '1985-06-20', '222-333-444');



-- Заполнение таблицы персонала
INSERT INTO climblab.Staff (staff_job, staff_frame, staff_salary_per_frame, staff_fullname, staff_contacts) VALUES
('Инструктор', 'часовая', 500, 'Иванов Иван Иванович', '111-222-333'),
('Администратор', 'месячная', 1000, 'Петров Петр Петрович', '222-333-444'),
('Тренер', 'послесессионная', 700, 'Сидорова Анна Сергеевна', '333-444-555'),
('Уборщик', 'ежедневная', 300, 'Козлова Елена Дмитриевна', '444-555-666'),
('Бармен', 'почасовая', 400, 'Смирнов Александр Александрович', '555-666-777'),
('Повар', 'посменная', 600, 'Николаева Ольга Ивановна', '666-777-888'),
('Менеджер', 'месячная', 1200, 'Кузнецов Артем Владимирович', '777-888-999'),
('Бухгалтер', 'месячная', 1500, 'Васильева Екатерина Сергеевна', '888-999-000'),
('Охранник', 'посменная', 700, 'Морозов Дмитрий Петрович', '999-000-111'),
('Портье', 'почасовая', 400, 'Павлова Анна Андреевна', '000-111-222'),
('Техник', 'посменная', 800, 'Калинина Наталья Денисовна', '111-222-333'),
('Администратор', 'месячная', 1000, 'Лебедев Алексей Игоревич', '222-333-444'),
('Инструктор', 'часовая', 500, 'Исакова Людмила Васильевна', '333-444-555'),
('Тренер', 'послесессионная', 700, 'Соколов Павел Станиславович', '444-555-666'),
('Уборщик', 'ежедневная', 300, 'Федорова Мария Алексеевна', '555-666-777'),
('Бармен', 'почасовая', 400, 'Андреев Денис Олегович', '666-777-888'),
('Повар', 'посменная', 600, 'Григорьева Ольга Николаевна', '777-888-999'),
('Менеджер', 'месячная', 1200, 'Романов Владимир Артемович', '888-999-000'),
('Бухгалтер', 'месячная', 1500, 'Тимофеев Михаил Владиславович', '999-000-111'),
('Охранник', 'посменная', 700, 'Комаров Артем Сергеевич', '000-111-222'),
('Портье', 'почасовая', 400, 'Волков Андрей Валерьевич', '111-222-333'),
('Техник', 'посменная', 800, 'Богданова Екатерина Андреевна', '222-333-444'),
('Администратор', 'месячная', 1000, 'Макаров Даниил Максимович', '333-444-555'),
('Инструктор', 'часовая', 500, 'Филиппова Наталья Ильинична', '444-555-666'),
('Тренер', 'послесессионная', 700, 'Алексеев Сергей Андреевич', '555-666-777'),
('Уборщик', 'ежедневная', 300, 'Королева Лариса Александровна', '666-777-888'),
('Бармен', 'почасовая', 400, 'Пономарев Владислав Анатольевич', '777-888-999'),
('Повар', 'посменная', 600, 'Кузьмина Елена Дмитриевна', '888-999-000'),
('Менеджер', 'месячная', 1200, 'Марков Александр Степанович', '999-000-111'),
('Бухгалтер', 'месячная', 1500, 'Гаврилова Ольга Михайловна', '000-111-222'),
('Охранник', 'посменная', 700, 'Беляева Марина Александровна', '111-222-333'),
('Портье', 'почасовая', 400, 'Антонов Андрей Анатольевич', '222-333-444'),
('Техник', 'посменная', 800, 'Кудряшова Татьяна Сергеевна', '333-444-555'),
('Администратор', 'месячная', 1000, 'Зайцев Сергей Николаевич', '444-555-666'),
('Инструктор', 'часовая', 500, 'Полякова Анастасия Владимировна', '555-666-777'),
('Тренер', 'послесессионная', 700, 'Сидорова Екатерина Игоревна', '666-777-888'),
('Уборщик', 'ежедневная', 300, 'Лазарев Александр Петрович', '777-888-999'),
('Инструктор', 'Часовая', 300, 'Смирнов Александр Владимирович', '111-222-333'),
('Тренер', 'Месячная', 5000, 'Кузнецова Ольга Алексеевна', '222-333-444'),
('Администратор', 'Месячная', 4500, 'Петров Дмитрий Игоревич', '333-444-555');



-- Заполнение таблицы оборудования
INSERT INTO climblab.Equipment (equip_name) VALUES
('Скальные туфли 35 размер'),
('Скальные туфли 36 размер'),
('Скальные туфли 37 размер'),
('Скальные туфли 38 размер'),
('Скальные туфли 39 размер'),
('Скальные туфли 40 размер'),
('Скальные туфли 41 размер'),
('Скальные туфли 42 размер'),
('Скальные туфли 43 размер'),
('Скальные туфли 44 размер'),
('Скальные туфли 45 размер'),
('Скальные туфли 46 размер'),
('Скальные туфли 47 размер'),
('Магнезия 100 грамм'),
('Магнезия 200 грамм');



-- Заполнение таблицы абонементов
INSERT INTO climblab.Abonements (client_id, abon_price, abon_start_time, abon_end_time) VALUES
(1, 5000, '2024-01-01', '2024-12-31'),
(2, 7000, '2024-02-15', '2024-08-15'),
(3, 6000, '2024-03-20', '2024-09-20'),
(4, 8000, '2024-04-10', '2024-10-10'),
(5, 5500, '2024-05-05', '2024-11-05'),
(6, 7500, '2024-06-15', '2024-12-15'),
(7, 6500, '2024-07-01', '2025-01-01'),
(8, 8500, '2024-08-25', '2025-02-25'),
(9, 5800, '2024-09-10', '2025-03-10'),
(10, 7800, '2024-10-20', '2025-04-20'),
(11, 5200, '2024-11-15', '2025-05-15'),
(12, 7200, '2024-12-05', '2025-06-05'),
(13, 6200, '2025-01-20', '2025-07-20'),
(14, 8200, '2025-02-10', '2025-08-10'),
(15, 5400, '2025-03-25', '2025-09-25'),
(16, 7400, '2025-04-10', '2025-10-10'),
(17, 6400, '2025-05-01', '2025-11-01'),
(18, 8400, '2025-06-15', '2025-12-15'),
(19, 5600, '2025-07-10', '2026-01-10'),
(20, 7600, '2025-08-20', '2026-02-20'),
(21, 5000, '2025-09-15', '2026-03-15'),
(22, 7000, '2025-10-05', '2026-04-05'),
(23, 6000, '2025-11-20', '2026-05-20'),
(24, 8000, '2025-12-10', '2026-06-10'),
(25, 5500, '2026-01-25', '2026-07-25'),
(26, 7500, '2026-02-15', '2026-08-15'),
(27, 6500, '2026-03-01', '2026-09-01'),
(28, 8500, '2026-04-25', '2026-10-25'),
(29, 5800, '2026-05-10', '2026-11-10'),
(30, 7800, '2026-06-20', '2026-12-20'),
(31, 5200, '2026-07-15', '2027-01-15'),
(32, 7200, '2026-08-05', '2027-02-05'),
(33, 6200, '2026-09-20', '2027-03-20'),
(34, 8200, '2026-10-10', '2027-04-10'),
(35, 5400, '2026-11-25', '2027-05-25'),
(36, 7400, '2026-12-10', '2027-06-10'),
(37, 6400, '2027-01-01', '2027-07-01'),
(38, 8400, '2027-02-15', '2027-08-15'),
(39, 5600, '2027-03-10', '2027-09-10'),
(40, 7600, '2027-04-20', '2027-10-20');


-- Заполнение таблицы заказов
INSERT INTO climblab.Orders (staff_id, order_time, order_price) VALUES
(1, '2024-05-01 10:00:00', 200),
(2, '2024-05-02 15:30:00', 150),
(3, '2024-05-03 12:00:00', 180),
(4, '2024-05-04 09:45:00', 220),
(5, '2024-05-05 11:20:00', 250),
(6, '2024-05-06 14:30:00', 170),
(7, '2024-05-07 17:00:00', 190),
(8, '2024-05-08 13:45:00', 210),
(9, '2024-05-09 16:20:00', 240),
(10, '2024-05-10 11:30:00', 230),
(11, '2024-05-11 10:15:00', 260),
(12, '2024-05-12 09:00:00', 180),
(13, '2024-05-13 14:45:00', 200),
(14, '2024-05-14 16:30:00', 210),
(15, '2024-05-15 12:20:00', 220),
(16, '2024-05-16 11:00:00', 190),
(17, '2024-05-17 10:30:00', 180),
(18, '2024-05-18 13:15:00', 170),
(19, '2024-05-19 15:45:00', 200),
(20, '2024-05-20 16:10:00', 210),
(21, '2024-05-21 12:40:00', 230),
(22, '2024-05-22 14:20:00', 240),
(23, '2024-05-23 11:50:00', 250),
(24, '2024-05-24 09:30:00', 260),
(25, '2024-05-25 13:00:00', 180),
(26, '2024-05-26 14:15:00', 190),
(27, '2024-05-27 15:50:00', 200),
(28, '2024-05-28 10:05:00', 220),
(29, '2024-05-29 16:25:00', 210),
(30, '2024-05-30 11:35:00', 230),
(31, '2024-05-31 12:45:00', 240),
(32, '2024-06-01 09:20:00', 250),
(33, '2024-06-02 14:00:00', 260),
(34, '2024-06-03 10:10:00', 180),
(35, '2024-06-04 11:55:00', 170),
(36, '2024-06-05 13:35:00', 200),
(37, '2024-06-06 15:15:00', 220),
(38, '2024-06-07 16:40:00', 210),
(39, '2024-06-08 12:25:00', 230),
(40, '2024-06-09 09:40:00', 240);


-- Заполнение таблицы сеансов
INSERT INTO climblab.Sessions_ (abon_id, session_date, session_start_time, session_end_time, staff_id, session_cost) VALUES
(1, '2024-05-01', '10:00:00', '12:00:00', 1, 300),
(2, '2024-05-02', '11:00:00', '13:00:00', 2, 320),
(3, '2024-05-03', '12:00:00', '14:00:00', 3, 340),
(4, '2024-05-04', '13:00:00', '15:00:00', 4, 360),
(5, '2024-05-05', '14:00:00', '16:00:00', 5, 380),
(6, '2024-05-06', '15:00:00', '17:00:00', 6, 400),
(7, '2024-05-07', '16:00:00', '18:00:00', 7, 420),
(8, '2024-05-08', '17:00:00', '19:00:00', 8, 440),
(9, '2024-05-09', '18:00:00', '20:00:00', 9, 460),
(10, '2024-05-10', '19:00:00', '21:00:00', 10, 480),
(11, '2024-05-11', '20:00:00', '22:00:00', 11, 500),
(12, '2024-05-12', '21:00:00', '23:00:00', 12, 520),
(13, '2024-05-13', '22:00:00', '00:00:00', 13, 540),
(14, '2024-05-14', '23:00:00', '01:00:00', 14, 560),
(15, '2024-05-15', '00:00:00', '02:00:00', 15, 580),
(16, '2024-05-16', '01:00:00', '03:00:00', 16, 600),
(17, '2024-05-17', '02:00:00', '04:00:00', 17, 620),
(18, '2024-05-18', '03:00:00', '05:00:00', 18, 640),
(19, '2024-05-19', '04:00:00', '06:00:00', 19, 660),
(20, '2024-05-20', '05:00:00', '07:00:00', 20, 680),
(21, '2024-05-21', '06:00:00', '08:00:00', 21, 700),
(22, '2024-05-22', '07:00:00', '09:00:00', 22, 720),
(23, '2024-05-24', '08:00:00', '10:00:00', 23, 740),
(24, '2024-05-24', '09:00:00', '11:00:00', 24, 760),
(25, '2024-05-24', '10:00:00', '12:00:00', 25, 780),
(26, '2024-05-24', '11:00:00', '13:00:00', 26, 800),
(27, '2024-05-24', '12:00:00', '14:00:00', 27, 820),
(28, '2024-05-28', '13:00:00', '15:00:00', 28, 840),
(29, '2024-05-29', '14:00:00', '16:00:00', 29, 860),
(30, '2024-05-30', '15:00:00', '17:00:00', 30, 880),
(31, '2024-05-31', '16:00:00', '18:00:00', 31, 900),
(32, '2024-06-01', '17:00:00', '19:00:00', 32, 920),
(33, '2024-06-02', '18:00:00', '20:00:00', 33, 940),
(34, '2024-06-03', '19:00:00', '21:00:00', 34, 960),
(35, '2024-06-04', '20:00:00', '22:00:00', 35, 980),
(36, '2024-06-05', '21:00:00', '23:00:00', 36, 1000),
(37, '2024-06-06', '22:00:00', '00:00:00', 37, 1020),
(38, '2024-06-07', '23:00:00', '01:00:00', 38, 1040),
(39, '2024-06-08', '00:00:00', '02:00:00', 39, 1060),
(40, '2024-06-09', '01:00:00', '03:00:00', 40, 1080);



-- Заполнение таблицы связи сеансов и оборудования
INSERT INTO climblab.Sessions_x_Equipment (session_id, equip_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(3, 4),
(3, 1),
(4, 4),
(4, 5),
(4, 1),
(5, 5),
(5, 6),
(5, 7),
(6, 6),
(6, 7),
(6, 8),
(7, 7),
(7, 8),
(7, 9),
(8, 8),
(8, 9),
(8, 10),
(9, 9),
(8, 10),
(8, 11),
(10, 10),
(10, 11),
(10, 12),
(11, 11),
(11, 12),
(11, 13),
(12, 12),
(12, 13),
(12, 14),
(13, 13),
(13, 14),
(13, 15),
(14, 14),
(14, 15),
(14, 15);
