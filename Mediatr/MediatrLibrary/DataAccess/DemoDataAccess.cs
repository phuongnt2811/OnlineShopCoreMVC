using MediatrLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MediatrLibrary.DataAccess
{
    public class DemoDataAccess
    {
        private List<EmployeeModels> employees = new();
        public DemoDataAccess()
        {
            employees.Add(new EmployeeModels { employee_id = 1, employee_name = "Nguyen Thi Phuong" });
            employees.Add(new EmployeeModels { employee_id = 2, employee_name = "Nguyen Thi Phuong Thao" });
            employees.Add(new EmployeeModels { employee_id = 3, employee_name = "Nguyen Thi Thuy Trang" });
        }
        public List<EmployeeModels> GetAll()
        {
            return employees;
        }
        public EmployeeModels Insert( string name)
        {
            EmployeeModels employee = new EmployeeModels() {  employee_name = name};
            employee.employee_id = employees.Max(e => e.employee_id) + 1;
            employees.Add(employee);
            return employee;
        }
    }
}
