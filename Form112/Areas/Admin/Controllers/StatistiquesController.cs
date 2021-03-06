﻿using DataLayer.Businesslayer;
using DataLayer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Form112.Areas.Admin.Controllers
{
    public class StatistiquesController : Controller
    {
        private Form112Entities _db = new Form112Entities();

        // GET: Admin/Statistiques
        /// <summary>
        /// Par requête Linq : construit une liste d'objets StatCroisières (objet croisière + nombre de vues) et l'ordonne par nombre de vues descendant
        /// </summary>
        /// <returns>la liste des croisièers associées à leur nombre de vues</returns>
        public ActionResult Index()
        {
            var listVueCroisieres = _db.ProduitTracking
                .GroupBy(m => m.IdProduit)
                .Select(g => new StatCroisieres{ Croisiere = _db.Croisieres.Where(c => c.IdCroisiere == g.Key).FirstOrDefault(), NbVues = g.Count() })
                .OrderByDescending(o => o.NbVues)
                .ToList();
            
            return View(listVueCroisieres);
        }


    }
}