   M S B A M L   `   `   `  ����P  LTransportAtEnterprise, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:TransportAtEnterprise.Windows.Driver$TransportAtEnterprise.Windows.Driver  5   	   b ^PresentationFramework.Aero2, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5	   	   =    7TransportAtEnterprise.Windows.Driver.UpdateDriverWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:TransportAtEnterprise.Windows.Driver     5   	   ]themeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     5	   	     � Title$-  'Добавление водителей��5   	   $��552px��6&   $��472px��65   $��720px��6C   $��800px��6U    � WindowStartupLocation$ CenterScreen=�6f   $;��5/TransportAtEnterprise;component/Resources/#Noto Sans)�6�   $��16(�6�    � Icon$: 4/TransportAtEnterprise;component/Resources/truck.png��6�   ���	#FFF1F5FF � WindowStyle$
 None=�6/   � 	Resources 5
         FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  TextBox.Static.Background	 �� Color  ComboBoxEditableTextBox
 �� 
TargetType �� 
TargetType ��Name  ComboBox.Static.Background �� EndPoint �� 
StartPoint � Color � Offset  ComboBox.Static.Border  ComboBox.Static.Glyph ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background *	 &ComboBox.Static.Editable.Button.Border !
 ComboBox.MouseOver.Background  ComboBox.MouseOver.Border  ComboBox.MouseOver.Glyph * &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border  ComboBox.Pressed.Background  ComboBox.Pressed.Border  ComboBox.Pressed.Glyph ( $ComboBox.Pressed.Editable.Background $  ComboBox.Pressed.Editable.Border / +ComboBox.Pressed.Editable.Button.Background + 'ComboBox.Pressed.Editable.Button.Border   ComboBox.Disabled.Background  ComboBox.Disabled.Border  ComboBox.Disabled.Glyph ) %ComboBox.Disabled.Editable.Background % !ComboBox.Disabled.Editable.Border 0 ,ComboBox.Disabled.Editable.Button.Background , (ComboBox.Disabled.Editable.Button.Border  ComboBoxToggleButton ��Name �� CornerRadius F�Name �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� 
TargetName P� Property P� Value   ComboBoxEditableTemplate �Name � ColumnDefinitions �Name  � AllowsTransparency5  /Microsoft.Windows.Themes.SystemDropShadowChrome!  Name"   Color# �� MaxDropDownHeight$ �� ElementName% �� ClearTypeHint& ��Name' ��Name( ��Name-  'System.Windows.Input.KeyboardNavigation)   DirectionalNavigation* d�Name+ d� 	IsChecked, �� Mode- ��Name. �� 
IsReadOnly/ P� 
SourceName0 ]� 
Conditions1 �� Property ! ComboBoxTemplate2 ��Name#3 �� SelectionBoxItemStringFormat4 �� ContentStringFormat5 �� SelectionBoxItemTemplate6 �� SelectionBoxItem7 J� IsHitTestVisible " ComboBoxStyle18 �� Triggers��%�-  &	        &	 �     &	 �     &	 �    &	 �    &	 �    &	 �    &	 �    &	     &		 <    &	
 a    &	 �    &	     &	 A    &	 d    &	 �    &	 !    &	 F    &	 �    &	     &	 &    &	 I    &	 n    &	     &	 )    &	 L    &	 o    &	 �    &	 �    &	 �    &	 	    &	 &	    7  7  7  7  7  7  7 	 7  7 
 7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	  Q    7  7  7  &	! �     7  &	" A)    7   7  7  7 ! 7   �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$   $	 1 2R�6/   #��� ��6E    . $��1��6�   5      5      5      �� 5   
   $	 	#FFFFFFFF��6<   �� 5   
   "
 ��60   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       �@J�	AllowDrop . 6*   �� 5       � ��$ 0��6)   �� 5       � ��$ 0��6*   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@��PanningMode$ VerticalFirst=�69   �� 5       �@��IsFlicksEnabled .  67   �� 5       � �� 5      �� 5      " ��6&   .R�5       �� $ PART_ContentHost��6'   
������ |�.  $��Hidden=�6l   $��Hidden=�6�   5!      5#      5$      �� 5%   
   $	 0,1&�6A   $	 0,0&�6P   .��5&      � $ #FFFFFF��6   $	 0.0Q�6+   � 5'      $ #FFFFFF��6   $	 1.0Q�6+   5(      �� 5)   
   $	 Transparent��69   �� 5*   
   $	 	#FF606060��68   �� 5+   
   $	 Transparent��6F   �� 5,   
   $	 Transparent��6B   �� 5-   
   $	 Transparent��6M   �� 5.   
   $	 Transparent��6I   �� 5/   
   $	 0,1&�6D   $	 0,0&�6S   .��50      � $ #FFFFFF��6   $	 0.0Q�6+   � 51      $ #FFFFFF��6   $	 1.0Q�6+   52      �� 53   
   $	 Transparent��6<   �� 54   
   $	 	#FF000000��6;   �� 55   
   $	 	#FFFFFFFF��6I   �� 56   
   $	 Transparent��6E   �� 57   
   $	 0,1&�6T   $	 0,0&�6c   .��58      � $ #FFFFFF��6   $	 0.0Q�6+   � 59      $ #FFFFFF��6   $	 1.0Q�6+   5:      �� 5;   
   $	 Transparent��6L   �� 5<   
   $	 0,1&�6B   $	 0,0&�6Q   .��5=      � $ #FFFFFF��6   $	 0.0Q�6+   � 5>      $ #FFFFFF��6   $	 1.0Q�6+   5?      �� 5@   
   $	 Transparent��6:   �� 5A   
   $	 	#FF000000��69   �� 5B   
   $	 	#FFFFFFFF��6G   �� 5C   
   $	 Transparent��6C   �� 5D   
   $	 0,1&�6R   $	 0,0&�6a   .��5E      � $ #FFFFFF��6   $	 0.0Q�6+   � 5F      $ #FFFFFF��6   $	 1.0Q�6+   5G      �� 5H   
   $	 	#FF569DE5��6J   �� 5I   
   $	 	#FFF0F0F0��6?   �� 5J   
   $	 	#FFD9D9D9��6;   �� 5K   
   $	 Transparent��6:   �� 5L   
   $	 	#FFFFFFFF��6H   �� 5M   
   $	 Transparent��6D   �� 5N   
   $	 Transparent��6O   �� 5O   
   $	 Transparent��6K   �� 5P   
   "
 d�6-   .�5Q      ��  �@�OverridesDefaultStyle . 66   �� 5R       � �� .  6*   �� 5S       � |� .  6*   �� 5T       �@��	ClickMode$ Press=�6*   �� 5U       � �� 5V      �� 5W      " d�6&   .R�5X      �� $ templateRoot��62   $ 8��6!   8��  8�� #��z��6�    . ._�5Y      �� $ splitBorder��6%   
������ $��1q�6T   $��Right=�6h   $��0q�6�    . #��� r�6�   ._�5Z   "   F� $ arrow��6'   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5[      5\       5]      ^� 5^       5_   "   �� 5`   &    60   �� *
IsEditable+ �� " �� true6�   �� 5a   &    60   �� *IsMouseOver+ �� *Self+	 false6v   �� 5b   &    60   �� *	IsPressed+ �� *Self+	 false6t   �� 5c   &    60   �� *	IsEnabled+ �� *Self+ true6t   .0�5e   "   �� $ templateRoot��6?   8   � ��6Y   �� 5f   "   $ templateRoot��6@   8   � ��6Z   �� 5g   "   $ splitBorder��6?   8   � ��6X   �� 5h   "   $ splitBorder��6@   8   � ��6Y   5i      P� 5j       �@J�IsMouseOver . . �5k   "   �� $ arrow��69   8   � ��6L   5l      ^� 5m       5n   "   �� 5o   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5p   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5r   "   �� $ templateRoot��6?   8   � ��6Y   �� 5s   "   $ templateRoot��6@   8 	  � ��6Z   5t      ^� 5u       5v   "   �� 5w   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5x   &    60   �� *
IsEditable+ �� " �� true6�   .0�5z   "   �� $ templateRoot��6?   8 
  � ��6Y   �� 5{   "   $ templateRoot��6@   8   � ��6Z   �� 5|   "   $ splitBorder��6?   8   � ��6X   �� 5}   "   $ splitBorder��6@   8   � ��6Y   5~      P� 5       � �� . . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      P� 5�       � {� .  . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      5�      5�      5�      �� 5�   
   " ��6;   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6     . $��2��6F   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+ �� *TemplatedParent+.��5�        $! shadow��63   $" Transparent��6C   #��z# 6�   ��6W   �� *ActualWidth+$$ templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5�      �� $ DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $% Enabled=�65   .+�5�   &   �� $& canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $' 
opaqueRect��64   ��6H   �� *
Background+$$ dropDownBorder����6�   �� *ActualHeight+$$ dropDownBorder����6�   �� *ActualWidth+$$ dropDownBorder��5�   '   �� 5�   &   $( ItemsPresenter��65   $) 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $* toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  + 6�   �� *IsDropDownOpen+$, TwoWay=� �� *TemplatedParent+66  �� 5�      $ border��6   8�� #��z��6a   ._�5�      �� $- PART_EditableTextBox��6   #��z��6<   #��z��6�   8�� #��z��6-  . 6�   �� *
IsReadOnly+ �� *TemplatedParent+6-  5�      5�       5�      P� 5�       � {� .  . �5�      �� $ border��60    �@J�Opacity$
 0.56Q�6D   5�      P� 5�       �@J�IsKeyboardFocusWithin . . �5�      ��  � ��
 �   �63   5�      P� 5�      $/ 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5�      ]� 5�      0 5�      �� 5�      1 �@��
IsGrouping . 6:   �� 5�      "1 �@%�IsVirtualizingWhenGrouping .  6\   ./�5�      ��  � �� .  6F   5�      P� 5�      $/ DropDownScrollViewer��6C    � �� .  . �5�      �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$$ DropDownScrollViewer�� �@��Top�� 5�      $ 
opaqueRect��64    6L   �� *HorizontalOffset+$$ DropDownScrollViewer�� �@��Left5�      5�      �� 5�   
   " ��63   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6     . $��2��6F   $��1q�6�   $��Bottom=�6�   #��� .�6�   ��6Z   �� *IsDropDownOpen+$, TwoWay=� �� *TemplatedParent+.��5�        $! shadow��63   $" Transparent��6C   #��z# 6�   ��6W   �� *ActualWidth+$$ templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   #��� ��6   $��1q�6�   ._�5�      �� $ DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $% Enabled=�65   .+�5�   &   �� $& canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $' 
opaqueRect��64   ��6H   �� *
Background+$$ dropDownBorder����6�   �� *ActualHeight+$$ dropDownBorder����6�   �� *ActualWidth+$$ dropDownBorder��5�   '   �� 5�   &   $( ItemsPresenter��65   $) 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $* toggleButton��6   #��z��65   #��z��6_   #��z��6�   $��2��6�   8��  + 6�   �� *IsDropDownOpen+$, TwoWay=� �� *TemplatedParent+66  �� 5�      $2 contentPresenter��6#   #4 z3 6=   #��z5 6�   #��z6 6�   #��z��6�   #��z��6-  7 .  #��z��6�  # z 6�  #��z��6�  5�       5�      P� 5�      $/ 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5      ]� 5     0 5     �� 5     1 �@��
IsGrouping . 6:   �� 5     "1 �@%�IsVirtualizingWhenGrouping .  6\   ./�5     ��  � �� .  6F   5     P� 5     $/ DropDownScrollViewer��6C    � �� .  . �5	     �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$$ DropDownScrollViewer�� �@��Top�� 5
     $ 
opaqueRect��64    6L   �� *HorizontalOffset+$$ DropDownScrollViewer�� �@��Left5     5     �� 5  
   "
 ��6'   .�5     ��  �@�FocusVisualStyle8   61   �� 5      � ��8  6+   �� 5      � ��8  6,   �� 5      � ��# � ��6+   �� 5      � ��$ 1q�60   �� 5      � ��$
 Auto=�6K   �� 5      � ��$
 Auto=�6I   �� 5      � ��$ 6,3,5,3q�6(   �� 5      � �� . 6>   �� 5      �@��PanningMode$
 Both=�69   �� 5      �@��IsFlicksEnabled .  67   �� 5      � ��8  6)   8 5     P� 5      �@��
IsEditable . . �5     ��  � �� .  62   �� 5      � ��$ 2q�60   �� 5      � ��8  61   5      5"     5#     .��5$     � .+�5%  
   �� -   5        9 � Cursor$
9 Hand��5%  &    # ButtonStyle1#��� # 6a   $��24��6�   $��24��6�   $��Right=�6�   $	��Top=�6�   $��	0,24,24,0q�6�   ��64   Z� ��6K   Z� ��5&     �� 5'     : �� ImageSource$6: 0/TransportAtEnterprise;component/Resources/x.png��6   5)     �� 5*  
   $��Center=�6   $��Center=�62   .+�5+     �� $+��%Добавление водителя��6   $��	ExtraBold"�63   $��20(�6J   $��
0 0 0 40pxq�6X   �� 5,     ; �� Orientation$; 
Horizontal=�6   .+�5-     �� $��Bottom=�6   $��
0 0 48px 0q�68   .+�5.     �� $��Имя��6    $��Bottom=�6+   $
��Left=�6F   $��0,0,0,16q�6a   �� 5/     -   5        $- tbFirstName��5/  D   $
9 Hand��6Y   $��16px 16px 16px 16pxq�6g   $��Center=�6�   $��Center=�6�   $��272px��6�   $
��56px��6�    $ TextBoxStyle1#��� $ 6
  < �� SelectionBrush< 6�   Z� ��6�   Z� .��62  ��50     �� 51     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��52  .   53     �� 54     $��Фамилия��6    $��Bottom=�6/   $
��Left=�6J   $��	0,24,0,16q�6e   �� 55     -   5        $- 
tbLastName��55     $
9 Hand��62   $��16px 16px 16px 16pxq�6@   $��Center=�6^   $��Center=�6y   $��272px��6�   $
��56px��6�   #��� $ 6�   < 6�   Z� ��6�   Z� .��60  ��56     �� 57     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��58  .   59     �� 5:     $��Отчество��6    $��Bottom=�60   $
��Left=�6K   $��	0,24,0,16q�6f   �� 5;     -   5        $- tbParonymic��5;     $
9 Hand��63   $��16px 16px 16px 16pxq�6A   $��Center=�6_   $��Center=�6z   $��272px��6�   $
��56px��6�   #��� $ 6�   < 6�   Z� ��6�   Z� .��62  ��5<     �� 5=     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��5>  .   5?     �� 5@     $��Зарплата��6    $��Bottom=�60   $
��Left=�6K   $��	0,24,0,16q�6f   �� 5A     -   5        $- tbSalary��5A     $
9 Hand��60   $��16px 16px 16px 16pxq�6>   $��Center=�6\   $��Center=�6w   $��272px��6�   $
��56px��6�   #��� $ 6�   = �� 	MaxLength$= 10��6,  < 6�   Z� ��6�   Z� .��6;  ��5B     �� 5C     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��5D  .   5E     �� 5F     $��Телефон��6    $��Bottom=�6/   $
��Left=�6J   $��	0,24,0,16q�6e   �� 5G     -   5        $- tbPhone��5G     $
9 Hand��6/   $��16px 16px 16px 16pxq�6=   $��Center=�6[   $��Center=�6v   $��272px��6�   $
��56px��6�   #��� $ 6�   $= 18��6  < 6�   Z� ��6�   Z� .��6-  ��5H     �� 5I     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��5J  .   5K     5L     �� 5M     $��Center=�6   $��Bottom=�6:   .+�5N     �� $��День рождения��6    $��Bottom=�65   $
��Left=�6P   $��0,0,0,16q�6k   (  "System.Windows.Controls.DatePicker  5O     -   5        >  Name$> dpDate��5O  !   $��272px��61   $
��56px��6?   $
��16pxq�6M   ��6\   Z� ��5P     �� 5Q     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   5S     �� 5T     $C��=Дата окончания водительских прав��6    $��Bottom=�6H   $
��Left=�6c   $��	0,24,0,16q�6~     5U     -   5        $> dpDateDriver��5U  !   $��272px��67   $
��56px��6E   $
��16pxq�6S   ��6b   Z� ��5V     �� 5W     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   5Y     �� 5Z     $2��,Номер водительских прав��6    $��Bottom=�6?   $
��Left=�6Z   $��	0,24,0,16q�6u   �� 5[     -	   5        $- 
tbIDDriver��5[     $
9 Hand��62   $��16px 16px 16px 16pxq�6@   $��Center=�6^   $��Center=�6y   $��272px��6�   $
��56px��6�   #��� $ 6�   < 6�   Z� ��6�   Z� .��60  ��5\     �� 5]     $=: 7/TransportAtEnterprise;component/Resources/searchbg.png��6)   .��5^  .   5_     �� 5`     $��Статус��6    $��Bottom=�6.   $
��Left=�6I   $��	0,24,0,16q�6d   �� 5a     -
   5        ? ��Name$? cbStatus��5a     #��� " 61   $
9 Hand��6Z   $��16px 16px 16px 16pxq�6h   $��Center=�6�   $��272px��6�   $
��56px��6�   ��6�   Z� ��5b     �� 5c     $>: 8/TransportAtEnterprise;component//Resources/searchbg.png��6)   5e     �� 5f     -   5        $��0,62,0,0q�5f     $��Сохранить��6/   $
9 Hand��6C   $��Center=�6Q   $��Center=�6l   $��272px��6�   $
��56px��6�   ���#FFFFFF#��� # 6�   ��6�   Z� ��5g     �� 5h     $;: 5/TransportAtEnterprise;component/Resources/Button.png��6)   5j     5k     5l     5m     5n     5o     