// <copyright file="StudentController.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.MVC.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using Dto;
    using ViewModel.Student;

    public class StudentController : Controller
    {
        private readonly IStudentBusinessLogic bl;

        public StudentController()
        {
            bl = Service.Get<IStudentBusinessLogic>();
        }

        // GET: Student
        public ActionResult Index()
        {
            var filter = new StudentFilter();
            var result = bl.GetStudents(filter);

            return View(result);
        }

        public ActionResult Edit(int id)
        {
            var result = bl.GetStudent(id);

            return View(result);
        }

        [HttpPost]
        public ActionResult Edit(StudentViewModel student)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            return View(student);
        }
    }
}