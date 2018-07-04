// <copyright file="StudentController.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS.WebApi.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Net.Http;
    using System.Web.Http;
    using BusinessLogic;
    using BusinessLogic.Contracts;
    using Dto;
    using ViewModel.Student;

    public class StudentController : ApiController
    {
        [HttpGet]
        [Route("api/students/all")]
        public IHttpActionResult GetAllStudents()
        {
            var bl = Service.Get<IStudentBusinessLogic>();
            var filter = new StudentFilter();
            var result = bl.GetStudents(filter);

            return Ok(result);
        }

        [HttpPost]
        [Route("api/students/by")]
        public IHttpActionResult GetAllStudents([FromBody]StudentFilter filter)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            var bl = Service.Get<IStudentBusinessLogic>();
            var result = bl.GetStudents(filter);

            if (result.Any())
            {
                return Ok(result);
            }
            else
            {
                return NotFound();
            }
        }
    }
}
