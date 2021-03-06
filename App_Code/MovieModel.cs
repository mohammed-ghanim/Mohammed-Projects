﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Account
{
    public int ID { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    public int RoleID { get; set; }

    public virtual Role Role { get; set; }
}

public partial class Genre
{
    public Genre()
    {
        this.Movies = new HashSet<Movie>();
    }

    public int ID { get; set; }
    public string Name { get; set; }

    public virtual ICollection<Movie> Movies { get; set; }
}

public partial class Movie
{
    public Movie()
    {
        this.Genres = new HashSet<Genre>();
    }

    public int ID { get; set; }
    public string Title { get; set; }
    public int mYear { get; set; }
    public string Starring { get; set; }
    public string Poster { get; set; }
    public string Summary { get; set; }

    public virtual ICollection<Genre> Genres { get; set; }
}

public partial class Role
{
    public Role()
    {
        this.Accounts = new HashSet<Account>();
    }

    public int ID { get; set; }
    public string RoleName { get; set; }

    public virtual ICollection<Account> Accounts { get; set; }
}

public partial class TopTenMovy
{
    public int ID { get; set; }
    public string Title { get; set; }
    public int mYear { get; set; }
    public string Starring { get; set; }
    public string Poster { get; set; }
    public string Summary { get; set; }
}
