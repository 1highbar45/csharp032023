﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LearnEFCore.Entities
{
    [Table("Majors")]
    public class Major : BaseEntity
    {
        [Column(TypeName = "nvarchar(1000)")]
        public string MajorName { get; set; }
        public List<Student> Students { get; set; }
    }
}
