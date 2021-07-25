using Procheshta.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Procheshta.Dal
{
    public class DataManagerHospital
    {
        ProcheshtaDBContext db = new ProcheshtaDBContext();
        public IQueryable<Hospital> GetAll()
        {
            return db.Hospitals
                .AsQueryable();
        }
        public void Insert(Hospital h)
        {
            db.Hospitals.Add(h);
            db.SaveChanges();
            
        }
        public void Edit(Hospital h)
        {
            db.Entry(h).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
        public void Delete(Hospital h)
        {
            db.Entry(h).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}