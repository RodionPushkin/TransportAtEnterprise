   M S B A M L   `   `   `  ����P  LTransportAtEnterprise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:TransportAtEnterpriseTransportAtEnterprise  5   	   &     TransportAtEnterprise.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:TransportAtEnterprise     5   	     � Title$  TransportAtEnterprise��5   	   $��720px��6'   $��1280px��66   $��720px��6E   $��1280px��6W    � WindowStartupLocation$ CenterScreen=�6i   $;��5/TransportAtEnterprise;component/Resources/#Noto Sans)�6�   $��16(�6�    � Icon$: 4/TransportAtEnterprise;component/Resources/truck.png��6�   ���	#FFF1F5FF.��5	      � ���	#FFF1F5FF � ColumnDefinitions 5
   
   �� 5      $
��12px �6   6.   �� 5      $
��56px �6   6.   �� 5      $��1* �6   6,   �� 5      $
��72px �6   6.    � RowDefinitions 5   
   �� 5      $
��24px �6   6,   �� 5      $
��56px �6   6,   �� 5      $��* �6   6)   .+�5   
   �� -   5         ��Name$ header��5      $
��Bold"�6$   $��1��66   $��2��6C   $��Center=�6S   $
��Left=�6n   $
��25px(�6�    �� 
LineHeight$
 30px��6�   $��Заголовок��6�   �� 5   
   $��0 0 232px 0q�6   $��Right=�6%   $
��24px��6A   $
��24px��6O   $��2��6\   $��1��6l   $��/Resources/search.png��6y    K� ZIndex$ 1��6�   �� 5   
   -   5         ��Name$ search��5      	 � Cursor$
	 Hand��6"   $��56px 16px 16px 16pxq�60   $��1��6N   $��2��6[   $��Center=�6k   $��Right=�6�   $��272px��6�   $
��56px��6�      TextBoxStyle1#���   6�   
 �� 	MaxLength$	
 150��6   �� SelectionBrush 6�   Z� ��6�   Z� .��6H  ��5      �� 5       �� ImageSource$= 7/TransportAtEnterprise;component/Resources/searchbg.png��6   .��5   "   5      � 5   
   $��1��6   $��2��6$   $��Center=�61   $��Center=�6N   .+�5      �� -   5         ��Name$ driver��5   #   $
	 Hand��6   $
��56px��63   $
��56px��6A     ButtonStyle1#���  6�   ��6c   Z� ��6z   Z� ��5      �� 5      $; 5/TransportAtEnterprise;component/Resources/driver.png��6!   5"      �� 5#      -   5        $	 car��5#   #   $
	 Hand��6   $
��56px��60   $
��56px��6>   $��0 24px 0 24pxq�6�   #���  6�   ��6b   Z� ��6y   Z� ��5$      �� 5%      $8 2/TransportAtEnterprise;component/Resources/car.png��6!   5'      �� 5(      -   5        $ office��5(   #   $
	 Hand��6   $
��56px��63   $
��56px��6A   #���  6�   ��6e   Z� ��6|   Z� ��5)      �� 5*      $; 5/TransportAtEnterprise;component/Resources/office.png��6!   5,      5-      �� 5.   
   -   5        $	 add��5.   �   $ 1��6   $
	 Hand��6"   $��Right=�60   $��Bottom=�6L   $��
0 0 0 48pxq�6g   $��2��6{   $��2��6�   $
��56px��6�   $
��56px��6�   #���  6�   ��6�   Z� ��6�   Z� ��5/      �� 50      $8 2/TransportAtEnterprise;component/Resources/add.png��6   52       � 53   
   -   5          �Name$ frame��53   \   $��2��6   $��2��6   $
��24pxq�6-     � NavigationUIVisibility$ Hidden=�6<   6m   54      55      