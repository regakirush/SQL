 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select * from employees_103 join employees_salary_9 on  employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id; 
                           
 2. Вывести всех работников у которых ЗП меньше 2000.
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            where monthly_salary < 2000;
						    
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary_103 left join employees_salary_9 on salary_103.id = employees_salary_9.id_employees_salary_9 
                         left join employees_103 on employees_103.id = employees_salary_9.id_employees_9 
                         where employee_name is null;
 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary_103 left join employees_salary_9 on salary_103.id = employees_salary_9.id_employees_salary_9
                         left join employees_103 on employees_103.id = employees_salary_9.id_employees_9 
                         where monthly_salary < 2000 and employee_name is null;

 5. Найти всех работников кому не начислена ЗП.
 select * from employees_103 left join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_salary_9 
                             left join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                             where monthly_salary is null;
                           
 6. Вывести всех работников с названиями их должности.
 select * from employees_103 join roles_employee_73 on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_employee_73.role_id = roles_103.id;
                            
 7. Вывести имена и должность только Java разработчиков.
 select * from employees_103 join roles_employee_73 on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_employee_73.role_id = roles_103.id
                            where role_name like '%Java%';
 
 8. Вывести имена и должность только Python разработчиков.
 select * from employees_103 join roles_employee_73  on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_103.id = roles_employee_73.role_id 
                            where role_name like '%Python%';
 
 9. Вывести имена и должность всех QA инженеров.
 select * from employees_103 join roles_employee_73 on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_103.id = roles_employee_73.role_id 
                            where role_name like '%QA%';
 
 10. Вывести имена и должность ручных QA инженеров.
 select * from employees_103 join roles_employee_73 on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_103.id = roles_employee_73.role_id 
                            where role_name like '%Manual QA%';
 
 11. Вывести имена и должность автоматизаторов QA
 select * from employees_103 join roles_employee_73 on employees_103.id = roles_employee_73.employee_id 
                            join roles_103 on roles_103.id = roles_employee_73.role_id 
                            where role_name like '%Automation QA%';
 
 12. Вывести имена и зарплаты Junior специалистов
select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on employees_salary_9.id_employees_9 = roles_employee_73.employee_id 
                            join roles_103 on roles_employee_73.role_id = roles_103.id
                            where role_name like 'Junior%';
 
 13. Вывести имена и зарплаты Middle специалистов
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on employees_salary_9.id_employees_9 = roles_employee_73.employee_id 
                            join roles_103 on roles_employee_73.role_id = roles_103.id
                            where role_name like 'Middle%';
 
 14. Вывести имена и зарплаты Senior специалистов
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on employees_salary_9.id_employees_9 = roles_employee_73.employee_id 
                            join roles_103 on roles_employee_73.role_id = roles_103.id
                            where role_name like 'Senior%';
 
 15. Вывести зарплаты Java разработчиков
 select * from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%Java%';
 
 16. Вывести зарплаты Python разработчиков
 select * from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%Python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where role_name like 'Junir Python%';
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where role_name like 'Middle JavaScript%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where role_name like 'Senior Java develope%';
 
 20. Вывести зарплаты Junior QA инженеров
 select * from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%Junior QA%';
 
 21. Вывести среднюю зарплату всех Junior специалистов
 select avg (monthly_salary) as avg from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like 'Junior%';
 
 22. Вывести сумму зарплат JS разработчиков
 select sum (monthly_salary) as sum from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%JavaScript%';
 
 23. Вывести минимальную ЗП QA инженеров
 select min (monthly_salary) as min from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%QA%';
 
 24. Вывести максимальную ЗП QA инженеров
 select max (monthly_salary) as max from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%QA%';
 
 25. Вывести количество QA инженеров
 select count (role_name) as count from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%QA%';
 
 26. Вывести количество Middle специалистов.
 select count (role_name) as count from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like 'Middle%';
 
 27. Вывести количество разработчиков
 select count (role_name) as count from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id 
                                 where role_name like '%developer';
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum (monthly_salary) as sum from employees_salary_9 join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                                 join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                                 join roles_103 on roles_employee_73.role_id = roles_103.id
                                 where role_name like '%developer';
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            order by monthly_salary;
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where monthly_salary between 1700 and 2300 order by monthly_salary;
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where monthly_salary < 2300 order by monthly_salary;
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select * from employees_103 join employees_salary_9 on employees_103.id = employees_salary_9.id_employees_9 
                            join salary_103 on employees_salary_9.id_employees_salary_9 = salary_103.id 
                            join roles_employee_73 on roles_employee_73.employee_id = employees_salary_9.id_employees_9 
                            join roles_103 on roles_employee_73.role_id = roles_103.id 
                            where monthly_salary in (1100, 1500, 2000) order by monthly_salary;
 