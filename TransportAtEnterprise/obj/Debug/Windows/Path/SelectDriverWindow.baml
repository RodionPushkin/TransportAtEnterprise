   M S B A M L   `   `   `  ����P  LTransportAtEnterprise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:TransportAtEnterprise.Windows.Path"TransportAtEnterprise.Windows.Path  5   	   ;    5TransportAtEnterprise.Windows.Path.SelectDriverWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Blocal0clr-namespace:TransportAtEnterprise.Windows.Path     5   	     � Title$  SelectDriverWindow��5   	   $	��450��6$   $	��800��61   .��5	      � ���	#FFF1F5FF � RowDefinitions 5
   
   �� 5      $
��72px �6   6,   �� 5      $��1* �6   6*   .+�5   
   �� -   5         ��Name$ search��5       � Cursor$
 Hand��6"   $��
0 0 12px 0q�60   $��56px 16px 16px 16pxq�6D   $��0��6b   $��1��6o   $��Center=�6   $��Right=�6�   $��272px��6�   $
��56px��6�      TextBoxStyle1#���   6   �� 	MaxLength$	 150��6+   �� SelectionBrush 6�   Z� ��6�   Z� .��6\  ��5      �� 5       �� ImageSource$= 7/TransportAtEnterprise;component/Resources/searchbg.png��6   .��5   "   5      �� 5   
   -   5         ��Name$ lvDriver��5   M   $��1��6@   ��6_   Z� ��6u   Z�  �� View 5      �� 5      .P�5      �� $��ID��6J   	 �� DisplayMemberBinding	 6%   �� *ID+6J   �� 5      $��Имя��6P   	 6%   �� *	FirstName+6P   �� 5      $��Фамилия��6O   	 6%   �� *
LastName+6O   �� 5      $��Отчество��6Q   	 6%   �� *
Patronymic+6Q   �� 5      $��Дата рождения��6j   	 6%   �� *
Birthday+
 �� StringFormat$
 
dd.MM.yyyy��6j   �� 5      $��Зарплата��6U   	 6%   �� *salaryFormated+6U   �� 5      $��Телефон��6R   	 6%   �� *phoneNumber+6R   �� 5      $C��=Дата окончания водительских прав��6u   	 6%   �� *DriverLicenseFinish+$
 
dd.MM.yyyy��6u   �� 5      $2��,Номер водительских прав��6T   	 6%   �� *DriverLicense+6T   �� 5      $��Статус��6Y   	 6%   �� *DriverStatus.Title+6Y   5       5"      5#      5$      