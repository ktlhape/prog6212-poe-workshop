using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectLibrary;

namespace PROG6212_POE_WORKSHOP.Controllers
{
    public class ProjectController : Controller
    {
        // GET: ProjectController
        public ActionResult Index()
        {
            return View(Project.AllProjects().Result);
        }

        // GET: ProjectController/Details/5
        public ActionResult Details(string id)
        {
            Project pr = Project.AllProjects().Result.Find(p => p.Code.Equals(id));
            return View(pr);
        }

        // GET: ProjectController/Create : Open the Create View
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProjectController/Create : save data to the database
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection col)
        {
            try
            {
                //Get input from the user
                string code = col["txtCode"];
                string prName = col["txtPrName"];
                DateTime startDate = Convert.ToDateTime(col["dpStartDate"]);
                DateTime endDate = Convert.ToDateTime(col["dpEndDate"]);
                double rate = Convert.ToDouble(col["txtRate"]);

                Project p = new Project(code, prName, startDate, endDate, rate);
                p.AddProject();

                return View("Index", Project.AllProjects().Result);
            }
            catch
            {
                return View();
            }
        }

        // GET: ProjectController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ProjectController/Edit/5
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

        // GET: ProjectController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ProjectController/Delete/5
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
