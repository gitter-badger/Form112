//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Commentaires
    {
        public Commentaires()
        {
            this.Commentaires1 = new HashSet<Commentaires>();
        }
    
        public int IdCommentaire { get; set; }
        public int IdCroisiere { get; set; }
        public Nullable<int> IdReponseA { get; set; }
        public string Commentaire { get; set; }
        public string NomCommentaire { get; set; }
        public System.DateTime DateCommentaire { get; set; }
    
        public virtual ICollection<Commentaires> Commentaires1 { get; set; }
        public virtual Commentaires Commentaires2 { get; set; }
        public virtual Croisieres Croisieres { get; set; }
    }
}