﻿using Form112.Infrastructure.SearchCroisiers.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataLayer.Model;

namespace Form112.Infrastructure.SearchCroisiers.Option
{
    internal class SearchOptionDateDepart : SearchOption
    {
        private readonly DateTime _DateDepart;

        public SearchOptionDateDepart(SearchBase sb, DateTime dateDepart)
            : base(sb)
        {
            _DateDepart = dateDepart;
        }

        public override IEnumerable<Croisieres> GetResult()
        {
            if (_DateDepart.Date != DateTime.Now.Date)
            {
                return SearchBase.GetResult().Where(x => x.DateDepart.Month == _DateDepart.Month && x.DateDepart.Year == _DateDepart.Year);
            }
            else
            {
                return SearchBase.GetResult();
            }
        }
    }
}