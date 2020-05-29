using BTL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTL.Controllers
{
    public class LoginController : Controller
    {
        MSME2 db = new MSME2();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult LoginForm()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var result =
                    db.accounts.SingleOrDefault(x => x.username == model.username && x.password == model.password);
                if (result != null)
                {
                    CustomerModel customer = new CustomerModel()
                    {
                        TenTK = result.username
                    };
                    Session["UserName"] = result.username;
                    Session["Role"] = result.role.ToString();
                   
                    Session.Add(SessionContants.LOGIN, customer);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập thất bại");
                }
            }

            return View();
        }
        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]
        public ActionResult CreateAccount()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateAcount(account model)
        {
            int id = db.accounts.ToList().Count;
            if (ModelState.IsValid)
            {
                model.id = id;
                model.role = null;
                db.accounts.Add(model);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }

            return View();
        }

        [HttpGet]
        public ActionResult QLTK()
        {
            if(Session["UserName"] == null)
            {
                return RedirectToAction("LoginForm", "Login");
            }
            return View(db.accounts.ToList());
        }

    }
}