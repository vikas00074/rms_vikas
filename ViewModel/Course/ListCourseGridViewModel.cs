// <copyright file="ListCourseGridViewModel.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace ViewModel.Course
{
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public class ListCourseGridViewModel
    {
        [Key]
        [ReadOnly(true)]
        [Editable(false)]
        [Description("Course System Identifier")]
        [Display(AutoGenerateField = false, Name = "Identifier", Description = "Course System Identifier", Order = 0, ShortName = "Id")]
        [Required]
        public long Id { get; set; }

        [ReadOnly(false)]
        [Editable(true)]
        [Description("Course Title")]
        [Display(AutoGenerateField = true, Description = "Title of Course", Name = "Course Title", Order = 1, ShortName = "Course")]
        [Required]
        public string Title { get; set; }

        [ReadOnly(false)]
        [Editable(true)]
        [Description("Course Level")]
        [Display(AutoGenerateField = true, Description = "Level of Course", Name = "Course Level", Order = 2, ShortName = "Level")]
        [Required]
        public int Level { get; set; }
    }
}
