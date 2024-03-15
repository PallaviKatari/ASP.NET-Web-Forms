using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DemoApp;


public class EmployeeDetails // Access using ObjectDataSource Control
{
    public List<Employee> GetEmployees(int startIndex, int maxRows)
    {
        using (WebFormsEntities entities = new WebFormsEntities())
        {
            //select * from Employees order by id
            return (from employee in entities.Employees //Table name - Employees DB
                    select employee)
                        .OrderBy(employee => employee.id)
                        .Skip(startIndex)
                        .Take(maxRows).ToList();
        }
    }

    public int GetEmployeesCount()
    {
        using (WebFormsEntities entities = new WebFormsEntities())
        {
            //select count(*) from Employees
            return entities.Employees.Count();
        }
    }
}
