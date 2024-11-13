-- 1. список всех клиентов, посещавших скалодром в определенный день:

SELECT DISTINCT client_fullname
FROM climblab.Clients c
JOIN climblab.Abonements a ON c.client_id = a.client_id
JOIN climblab.Sessions_ s ON a.abon_id = s.abon_id
WHERE s.session_date = '2024-05-24';


-- 2. все сотрудники, работавшие в определенную смену:

SELECT staff_fullname
FROM climblab.Staff
WHERE staff_id IN (
  SELECT staff_id
  FROM climblab.Sessions_
  WHERE session_date = '2024-05-24'
);

-- 3. список всего оборудования, арендованного клиентами в определенный день:

SELECT equip_name
FROM climblab.Equipment e
JOIN climblab.Sessions_x_Equipment se ON e.equip_id = se.equip_id
JOIN climblab.Sessions_ s ON se.session_id = s.session_id
WHERE s.session_date = '2024-05-08'
AND s.abon_id IN (
  SELECT abon_id
  FROM climblab.Abonements
);

-- 4. общщая стоимость заказов, сделанных в определенный период:

SELECT SUM(order_price)
FROM climblab.Orders
WHERE order_time BETWEEN '2024-01-01 00:00:00' AND '2024-06-09 23:59:59';

-- 5. все клиенты, которые не посещали скалодром в течение какого-то периода

SELECT client_fullname
FROM climblab.Clients
WHERE client_id NOT IN (
  SELECT DISTINCT client_id
  FROM climblab.Abonements
  JOIN climblab.Sessions_ ON climblab.Abonements.abon_id = climblab.Sessions_.abon_id
  WHERE session_date BETWEEN '2024-05-01' and '2024-07-02'
);


-- 6. наиболее часто используемое оборудование на скалодроме:

SELECT equip_name, COUNT(*) AS usage_count
FROM climblab.Equipment e
JOIN climblab.Sessions_x_Equipment se ON e.equip_id = se.equip_id
GROUP BY equip_name
ORDER BY usage_count DESC;

--7 средняя стоимость посещения

SELECT AVG(session_cost)
FROM climblab.Sessions_
WHERE abon_id IN (
  SELECT abon_id
  FROM climblab.Abonements
);

-- 8. дни с наибольшим количеством посещений скалодрома:

SELECT session_date, COUNT(*) AS visit_count
FROM climblab.Sessions_
GROUP BY session_date
ORDER BY visit_count DESC
LIMIT 10;

-- 9. средняя стоимость заказов для каждого сотрудника

SELECT
  staff_fullname,
  AVG(order_price) AS avg_order_price
FROM climblab.Staff
JOIN climblab.Orders ON climblab.Staff.staff_id = climblab.Orders.staff_id
GROUP BY
  staff_fullname;

-- 10. список всех клиентов и их текущих абонементов:
SELECT
  client_fullname,
  abon_price,
  abon_start_time,
  abon_end_time
FROM climblab.Clients
JOIN climblab.Abonements ON climblab.Clients.client_id = climblab.Abonements.client_id
WHERE
  abon_end_time > CURRENT_TIMESTAMP;