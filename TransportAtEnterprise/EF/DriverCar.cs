//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TransportAtEnterprise.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class DriverCar
    {
        public int ID { get; set; }
        public int IDDriver { get; set; }
        public int IDCar { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual Car Car { get; set; }
        public virtual Driver Driver { get; set; }
    }
}
