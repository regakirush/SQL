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
 
 
 8. Вывести имена и должность только Python разработчиков.
 
 
 9. Вывести имена и должность всех QA инженеров.
 
 
 10. Вывести имена и должность ручных QA инженеров.
 
 
 11. Вывести имена и должность автоматизаторов QA
 
 
 12. Вывести имена и зарплаты Junior специалистов
 
 
 13. Вывести имена и зарплаты Middle специалистов
 
 
 14. Вывести имена и зарплаты Senior специалистов
 
 
 15. Вывести зарплаты Java разработчиков
 16. Вывести зарплаты Python разработчиков
 17. Вывести имена и зарплаты Junior Python разработчиков
 18. Вывести имена и зарплаты Middle JS разработчиков
 19. Вывести имена и зарплаты Senior Java разработчиков
 20. Вывести зарплаты Junior QA инженеров
 21. Вывести среднюю зарплату всех Junior специалистов
 22. Вывести сумму зарплат JS разработчиков
 23. Вывести минимальную ЗП QA инженеров
 24. Вывести максимальную ЗП QA инженеров
 25. Вывести количество QA инженеров
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000