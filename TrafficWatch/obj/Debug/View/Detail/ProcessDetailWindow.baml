   M S B A M L   `   `   `  ����  TrafficWatch2    ,TrafficWatch.View.Detail.ProcessDetailWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   
   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          � Title$  Process Detail��5   	   $��178.791��6    $	��500��61   $	��300��6=   $	��190��6L    � WindowStartupLocation$ CenterScreen=�6\    � 	Resources 5
       �� 
TargetType �� Property �� Value   	BaseLabel  	LeftLabel �� BasedOn  
RightLabel��%�  '��       &	  H     &	 �     7   &	     7   �� 5   
   " ��6   .�5      ��  � ��$ 30 �6'   5      �� 5   
   " �6   .�5      ��  � ��$ Center=�62   5      �� 5   
   " �6   8   .�5      ��  � ��$
 Left=�64   �� 5       � ��$ 15, 0, 0, 0q�6'   5      �� 5   
   " �6   8   .�5      ��  � ��$ 	15,0,15,0q�6'   5      5      .��5      � -   5        $��ContentGrid��5       $��0, 20, 0, 0q�6    � RowDefinitions 5   
   �� 5      �� 5      �� 5       �� 5!       � ColumnDefinitions 5$   
   �� 5%      $
��Auto �6   �� 5&      .+�5)   
   �� $��0��6   $��0��6!   #��[ 61   $	��PID��6T   �� 5*   
   $��1��6   $��0��6!   #��[ 61   $��Process Name��6T   �� 5+   
   $��2��6   $��0��6!   #��[ 61   $��Process Path��6T   �� 5-   
   -   5        $��	ProcessID��5-      $��0��6%   $��1��62   #��[ 6B   $��0��6f   ]� 5.   
   $��1��6   $��1��6!   #��[ 61   .+�5/      �� -   5        $��ProcessIcon��5/      $��Center=�6'   ��6B   �� 	 �� ElementName$	 ProcessName��
 �� Path$
 FontSize��� 50      -   5        $��ProcessName��50      $��Center=�6+   $��Unknown��6F   51      �� 53   
   -   5        $��ProcessPath��53      $��2��6'   $��1��64   #��[ 6D   �� 54   
   -   5        $��
OpenButton��54      $��3��6#   $��1��60   #��[ 6@   $
��Left=�6d   .��55      ]� .+�56      �� -   5        $��OpenButtonImage��56      $��Center=�6/   ��6J   �� $	 OpenButtonText��$
 FontSize��� 57      -	   5        $��OpenButtonText��57      $��Center=�62   $��Open Path In FileExplorer��6M   58      59      �� 5:   
   -
   5        $��MonitorButton��5:      $��Monitor Process��6&   $��3��6@   $��1��6M   #��[ 6]   $
��Left=�6�   $��	166,5,0,6q�6�   6�   5=      5>      