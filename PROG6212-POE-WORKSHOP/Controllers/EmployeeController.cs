using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectLibrary;

namespace PROG6212_POE_WORKSHOP.Controllers
{
    public class EmployeeController : Controller
    {
        public List<Project> prList;
        public EmployeeController()
        {
            prList = Project.AllProjects().Result;
        }
        public ActionResult Login() => View();

        [HttpPost]
        public ActionResult VerifyLogin(IFormCollection col)
        {
            try
            {
                string empNo = col["txtEmpNo"];
                string pass = col["txtPass"];

                Employee em = Employee.GetEmployee(empNo);

                if (em.EmployeeNo.Equals(empNo) && em.Password.Equals(pass))
                {
                    List<Project> prList = Project.EmployeeProjects(empNo).Result;
                    ViewBag.EmpName = Employee.GetEmployee(empNo).Firstname;
                    return View("EmpProjects", prList);
                }
                else
                {
                    ViewBag.errorMsg = "Invalid login details";
                    return View("Login");
                }
            }
            catch (Exception ex)
            {
                ViewBag.errorMsg = ex.Message;
                return View("Login");
            }

        }
        public ActionResult EmpProjects() => View();

        public ActionResult Stats()
        {
            return View(prList);
        }
        // GET: EmployeeController
        public ActionResult Index()
        {
            return View(Employee.AllEmployees());
        }

        // GET: EmployeeController/Details/5
        public ActionResult Details(string id)
        {
            return View(Employee.GetEmployee(id));
        }

        // GET: EmployeeController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: EmployeeController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: EmployeeController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: EmployeeController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: EmployeeController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: EmployeeController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
