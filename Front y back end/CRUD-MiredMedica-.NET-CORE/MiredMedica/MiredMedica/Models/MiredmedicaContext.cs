using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace MiredMedica.Models
{
    public partial class MiredmedicaContext : DbContext
    {
        public MiredmedicaContext()
        {
        }

        public MiredmedicaContext(DbContextOptions<MiredmedicaContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<Empresa> Empresa { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=(local)\\SQLEXPRESS;Database=Miredmedica;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Empleado>(entity =>
            {
                entity.HasKey(e => e.Idempleado);

                entity.ToTable("empleado");

                entity.Property(e => e.Idempleado).HasColumnName("idempleado");

                entity.Property(e => e.Correo)
                    .HasColumnName("correo")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Idempresa).HasColumnName("idempresa");

                entity.Property(e => e.Materno)
                    .IsRequired()
                    .HasColumnName("materno")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("nombre")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Paterno)
                    .IsRequired()
                    .HasColumnName("paterno")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Telefono)
                    .HasColumnName("telefono")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdempresaNavigation)
                    .WithMany(p => p.Empleado)
                    .HasForeignKey(d => d.Idempresa)
                    .HasConstraintName("FK_empleado_empresa");
            });

            modelBuilder.Entity<Empresa>(entity =>
            {
                entity.HasKey(e => e.Idempresa);

                entity.ToTable("empresa");

                entity.Property(e => e.Idempresa).HasColumnName("idempresa");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnName("nombre")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });
        }
    }
}
