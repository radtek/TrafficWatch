   M S B A M L   `   `   `  ����G  CTrafficWatch, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:TrafficWatch.ControlTrafficWatch.Control  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source �� 
TargetType �� Property �� Value m� SubmenuItemTemplateKey   BaseContextMenuStyle&    System.Windows.Media.TextOptions �� 
TargetType ��Name �� Padding	 K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation
   DirectionalNavigation �� Triggers P� Property P� Value �� 
TargetName3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   Opacity   ShadowDepth  ContextMenuDarkOnly �� BasedOn  ContextMenuItemTextDarkOnly ! ContextMenuBackgroundDarkOnly  ContextMenuBorderDarkOnly  ContextMenuStyle1  MenuBackgroundBrush  WindowBorderBrush
 J� Uid �� Triggers �� Binding �� RelativeSource �� Value  BaseSeparatorStyle 	 MenuItemSeparatorDarkOnly  
 ContextMenuSeparatorDarkOnly  MenuItemTemplateDarkOnly � ColumnDefinitions z� SharedSizeGroup ��Name   ContextMenuItemGlyphDarkOnly J� SnapsToDevicePixels ��Name * &ContextMenuItemBackgroundHoverDarkOnly ' #ContextMenuItemTextDisabledDarkOnly  MenuItemDarkOnly  CheckboxStyle  NormalWindowForeground " LargeWindows10FocusVisualStyle �Name  CheckBoxBackground  CheckBoxBorder J� Opacity �� ContentStringFormat  �� ContentStringFormat  CheckBoxBackgroundHover  CheckBoxBorderHover  CheckBoxBackgroundPressed  CheckBoxBorderPressed  CheckBoxBackgroundChecked  CheckBoxBorderChecked! ]� 
Conditions" �� Property# �� Value�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      ,local"clr-namespace:TrafficWatch.Control  5        5      �� 5   
   $ SystemThemeColors.xaml?�6   %�  'm�       7 &	  |     &	 �    7   &	 3    &	 �    &		 �    7  &	  	    &	 �    7  &	 I    7  �� 5      " m�6&   .�5   
   ��  �@�OverridesDefaultStyle . 62   �� 5	   
    � ��8   6%   5
      �� 5      " ��6)   .�5   
   ��  �@J�SnapsToDevicePixels . 60   �� 5   
    �@  TextFormattingMode$ Ideal=�6;   �� 5   
    �@�OverridesDefaultStyle . 62   �� 5   
    �@�IsSharedSizeScope . 63   �� 5   
    � ��$	 311��6%   �� 5   
    �@��HasDropShadow . 6*   �� 5   
    � ��$ 12(�6%   �� 5   
    � ��$ Segoe UI)�6'   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $ Border��6   ._�5      �� $	 2,8q�6!   #��z��5   )   #��z��5   )   $��1q�5   )   ._�5      �� 	 . $
 Cycle=�6<   5      5       5      P� 5        �@��HasDropShadow . . �5!      �� $ Border��6%    �@��CornerRadius$ 0��6Q   �� 5"      $ Border��6%    � ��
 ���� 6O   �� 5#      $ Border��6%    �@��Padding$ 0,0,5,5q�6L   �� 5$      $ Border��6%    �@J�Effect 5%   "     5&   &   $ 4Q�67   $	 0.8Q�5'   ?   $ 2Q�5(   ?   5*      5+      5-      5/      50      �� 51      8   " ��53      .�54   
   ��  � ��# �  6'   �� 55   
    � ��# �  6'   �� 56   
    � ��# �  6(   57      �� 58      " ��6&   .�59   
   ��  � ��# �  6'   �� 5:   
    � ��$ 1q�6,   �� 5;   
    � ��# �  6(   �� 5<   
    � �� 5=      �� 5>      " ��6"   .R�5?      �� $ 	Border_93��6   ��5@      �� 5A      " ��6$   .�5B   "   ��  �@�Tag# � Y�68    5C   "   �� 5D   &    62   �� *Tag+ �� *Self+ True6p   .a�5E   *   ��  � ��
 ���� 6G   �� 5F   *    �@��Padding$ 0,0,5,5q�6D   �� 5G   *    �@J�Effect 5H   .     5I   2   $ 4Q�6C   $	 0.8Q�6R   $ 1Q�6`   5K   +   5L   '   5N      5P      5Q      5S      5T      �� 5U      " ��6'   .�5V   
   ��  � ��$ 1��6#   �� 5W   
    � ��$ 8,4,8,4q�6#   �� 5X   
    � �� 5Y      �� 5Z      " ��6"   .R�5[      �� $��1��6    $��Stretch=�5\   (   #��z��5]   (   5^      5`      5a      �� 5b      8   " ��5d      .�5e   
   ��  � ��# � 
 6'   5f      �� 5h      " m�67   .R�5i   
   �� $ Border��6   $��32��5j      
������ $��0q�5l      ._�5m      � $��0,-1,0,0q�6    5n      �� 5o      $��32 �6'   $
 Icon��62   �� 5p      $��* �6'   .+�5r      �� $ Check��6   $��14��5s   !   $��14��5t   !   $��1q�5u   !   ._�5v      �� $ 	CheckMark��6    $��Segoe MDL2 Assets)�5w   (   $��12(�5x   (   #���  5y   (    .  $	����5{   (   $y�Hidden=�5|   (   5}      �� 5~      $ 
HeaderHost��6#   $��1��5   +   $��0,0,8,0q�5�   +   $��Header��5�   +   ��. $��Center=�5�   F   5�      5�       5�   
   P� 5�       64   Z�  � ��P� 5�       �@m�	IsChecked . . �5�      �� $ 	CheckMark��6    � y�$ Visible=�6F   5�      P� 5�       �@m�IsHighlighted . . �5�      �� $ Border��6   # �  6C    � ��5�      P� 5�       � {� .  . �5�      �� # �  6/    � ��5�      5�      �� 5�      " m�6%   .�5�   
   ��  �@�OverridesDefaultStyle . 62   �� 5�   
    � ��8   6%   5�      �� 5�      " ��6"   .�5�   
   ��  � ��# �  6'   �� 5�   
    � ��$ 15(�6%   �� 5�   
    � ��$ 8,0,0,0q�6$   �� 5�   
    �@�FocusVisualStyle8   6-   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      � $ templateRoot��6   
������  .  5�      �� 5�      $
��Auto �6/   �� 5�      $��* �6/   .+�5�      �� $ checkBoxBorder��6!   $��20��5�   )   $��20��5�   )   $��1q�5�   )   #��z��5�   )   #��z��5�   )   #���  5�   )   #���  5�   )   $��2q�5�   )   ._�5�      �� $ 
optionMark��6(   $��Segoe MDL2 Assets)�5�   0   $��16(�5�   0   
�������$ 0Q�5�   0    .  $	����5�   0   5�      �� 5�      $ contentPresenter��6+   $��1��5�   3   #��z��5�   3   #��z��5�   3   #��z��5�   3   #��z��5�   3   #  z 5�   3   #��z��5�   3   |�.  ��. # z 5�   3   5�       5�      P� 5�       �@J�IsMouseOver . . �5�      �� $ checkBoxBorder��6%   # �  6W    � ���� 5�      $ checkBoxBorder��6%   # �  6X    � ��5�      P� 5�       � �� . . �5�      �� $ checkBoxBorder��6%   # �  6W    � ���� 5�      $ checkBoxBorder��6%   # �  6X    � ��5�      P� 5�       �@d�	IsChecked$
 TrueY�67   . �5�      �� $ 
optionMark��6%    �@J�Opacity$ 1Q�6P   �� 5�      $ checkBoxBorder��6%   # �  6W    � ���� 5�      $ checkBoxBorder��6%   # �  6X    � ��5�      ]� 5�      ! 5�      �� 5�   "   " �@J�IsMouseOver# . 6C   �� 5�   "   " �@d�	IsChecked$
# TrueY�6A   /�5�      �� 5�   "   $ checkBoxBorder��6)   # �  6[    � ���� 5�   "   $ checkBoxBorder��6)   # �  6\    � ��5�      ]� 5�      ! 5�      �� 5�   "   " � ��# . 6A   �� 5�   "   " �@d�	IsChecked$
# TrueY�6A   /�5�      �� 5�   "   $ checkBoxBorder��6)   # �  6[    � ���� 5�   "   $ checkBoxBorder��6)   # �  6\    � ��5�      5�      5�      5�      5�      