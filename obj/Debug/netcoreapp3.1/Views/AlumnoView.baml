   M S B A M L   `   `   `  ����T  PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   fCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.MetroMahApps.Metro.Controls.Dialogs  5   	   F BKalum2020v1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Kalum2020v1Kalum2020v1 5	   	   "   Kalum2020v1.Views.AlumnoView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Kmah;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	   VDialogCclr-namespace:MahApps.Metro.Controls.Dialogs;assembly=MahApps.Metro     5   	   +localclr-namespace:Kalum2020v1     5	   	     � Title$  Ventana Alumnos��5   	   $	��450��6!   $	��800��6.   8   2MahApps.Metro.Controls.Dialogs.DialogParticipation   Register 5   	   �� .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  $��0��6B   $��2��6Q      CanUserAddRows$ False��5   1      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5         AutoGenerateColumns$ False��6    �� SelectedItem 5      �� *ElementoSeleccionado+��5      �� *ListaAlumno+   Columns 5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5         MetroDataGridCheckBox1  +System.Windows.Controls.DataGridBoundColumn	   ElementStyle#	 �   6*   
   EditingElementStyle#
 �   5      ,  &System.Windows.Controls.DataGridColumn   Header$ SELECCIONAR��5         Binding 5       ��  �� RelativeSource ��  �� AncestorType DataGridRow �� Path$ 
IsSelected� �� Mode$ OneWay=�0  *System.Windows.Controls.DataGridTextColumn  5!      $ Carné��6?      
IsReadOnly$
 true��6N    6%   �� *Carne+6N     5"      $ 	Apellidos��6C   $
 true��6V    6%   �� *	Apellidos+6V     5#      $ Nombres��6A   $
 true��6R    6%   �� *	Nombres+6R     5$      $ Fecha nacimiento��6I   $
 true��5%       5$   %   �� *FechaNacimiento+5%      5'      �� 5(   
   $��1��6   $��0��6   $��Carné��61   �� 5)   
   $��1��69   $��1��6H    �� 
IsReadOnly 6   �� *IsReadOnlyCarne+��6Z   �� *ElementoSeleccionado.Carne+�� 5*   
   $��2��6   $��0��6   $��	Apellidos��61   �� 5+   
   $��2��6=   $��1��6L    6   �� *IsReadOnlyApellidos+��6^   �� * ElementoSeleccionado.Apellidos+�� 5,   
   $��3��6   $��0��6   $��Nombres��61   �� 5-   
   $��3��6<   $��1��6K    6   �� *IsReadOnlyNombres+��6]   �� *ElementoSeleccionado.Nombres+�� 5.   
   $��4��6   $��0��6   $��Fecha Nacimiento��61   (  "System.Windows.Controls.DatePicker  5/   
   $��4��6?   $��1��6N   {�6   �� *IsFechaNacimiento+   SelectedDate 50      �� *&$ElementoSeleccionado.FechaNacimiento+�� 51   
   $��5q�6    �� Orientation$ 
Horizontal=�6    $��5��69   $��2��6H   .+�52      �� $��5q�65   $��Agregar��6@   $��Nuevo��6p   {�6   �� *	IsNuevo+��6R   �� *	Instancia+6p   �� 53      $��5q�69   $��	Modificar��6D   $��	Modificar��6v   {�6   �� *IsModificar+��6X   �� *	Instancia+6v   �� 54      $��Eliminar��6V   $��5q�6r   $��Eliminar��6}   {�6   �� *
IsEliminar+��68   �� *	Instancia+6}   �� 55      $��5q�67   $��Guardar��6B   $��Guardar��6r   {�6   �� *	IsGuardar+��6T   �� *	Instancia+6r   �� 56      $��Cancelar��6V   $��5q�6r   $��Cancelar��6}   {�6   �� *
IsCancelar+��68   �� *	Instancia+6}   57      58      59      