using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using Kalum2020v1.DataContext;
using Kalum2020v1.Models;
using System.Linq;
using System.Windows;

namespace Kalum2020v1.ModelViews
{
    public class AlumnoViewModel : INotifyPropertyChanged, ICommand
    {
        private KalumDbContext dbContext;

        private AlumnoViewModel _Instancia;

        public AlumnoViewModel Instancia
        {
            get
            {
                return this._Instancia;
            }
            set
            {
                this._Instancia = value;
                NotificarCambio("Instancia");
            }
        }
        private Alumno _ElementoSeleccionado;

        public Alumno ElementoSeleccionado
        {
            get
            {
                return this._ElementoSeleccionado;
            }
            set
            {
                this._ElementoSeleccionado = value;
                NotificarCambio("ElementoSeleccionado");                
            }
        }
        private ObservableCollection<Alumno> _ListaAlumno;

        public ObservableCollection<Alumno> ListaAlumno 
        {
            get
            {
                if(_ListaAlumno == null){
                    _ListaAlumno = new ObservableCollection<Alumno>(dbContext.Alumnos.ToList()); // select * from Alumnos
                }
                return _ListaAlumno;

            }
            set
            {
                _ListaAlumno = value;
            }
        }

        public AlumnoViewModel()
        {
            this.dbContext = new KalumDbContext();
            this.Instancia = this;
        }
        public event EventHandler CanExecuteChanged;
        public event PropertyChangedEventHandler PropertyChanged;

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parametro)
        {
              if(parametro.Equals("Nuevo"))
              {
                  this.ElementoSeleccionado = new Alumno();
              } else if( parametro.Equals("Guardar")) {
                  try
                  { 
                      Religion r =  this.dbContext.Religiones.Find(1); // Select * from Religiones where ReligionId = 1                      
                      this.ElementoSeleccionado.Religion = r;                      
                      this.dbContext.Alumnos.Add(this.ElementoSeleccionado); // insert into Alumno values(...)
                      this.dbContext.SaveChanges();
                      
                      this.ListaAlumno.Add(this.ElementoSeleccionado);                                            
                      MessageBox.Show("Datos almacenados!!!");
                  }catch(Exception e)
                  {
                      MessageBox.Show(e.Message);
                  }
              }          
        }

        public void NotificarCambio(String propiedad)
        {
            if(PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propiedad));
            }

        }
    }
}