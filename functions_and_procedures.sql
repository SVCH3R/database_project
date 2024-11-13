-- Функция добавления нового клиента:
CREATE FUNCTION climblab.AddClient(
  IN client_fullname VARCHAR(255),
  IN client_birthdate DATE,
  IN client_contacts VARCHAR(255)
)
RETURNS VOID AS
$$
BEGIN
  INSERT INTO climblab.Clients (client_fullname, client_birthdate, client_contacts)
  VALUES (client_fullname, client_birthdate, client_contacts);
END;
$$ LANGUAGE plpgsql;

-- Пример вызова:

SELECT climblab.AddClient(
  'Джейн Доу',
  '1980-01-01',
  '+1 (555) 123-4567'
);




-- Функция добавления нового сотрудника:

CREATE FUNCTION climblab.AddStaff(
  IN staff_job VARCHAR(255),
  IN staff_frame VARCHAR(255),
  IN staff_salary_per_frame INTEGER,
  IN staff_fullname VARCHAR(255),
  IN staff_contacts VARCHAR(255)
)
RETURNS INTEGER AS
$$
BEGIN
  INSERT INTO climblab.Staff (staff_job, staff_frame, staff_salary_per_frame, staff_fullname, staff_contacts)
  VALUES (staff_job, staff_frame, staff_salary_per_frame, staff_fullname, staff_contacts);
  RETURN lastval();
END;
$$ LANGUAGE plpgsql;


-- Пример вызова:

SELECT climblab.AddStaff(
  'Инструктор',
  'Сменный',
  1000,
  'Джон Смит',
  '+1 (555) 987-6543'
);


-- функция подсчета общей стоимости заказов для указанной даты:
CREATE FUNCTION climblab.CountOrderPricesByDate(
  IN order_date DATE
)
RETURNS INTEGER AS
$$
BEGIN
  RETURN (
    SELECT SUM(order_price)
    FROM climblab.Orders
    WHERE order_time::DATE = order_date
  );
END;
$$ LANGUAGE plpgsql;

-- пример вызова:

SELECT climblab.CountOrderPricesByDate('2024-05-28');
