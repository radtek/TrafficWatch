   M S B A M L   `   `   `  ����G  CTrafficWatch, Version=1.1.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:TrafficWatch.View.MonitorTrafficWatch.View.Monitor  5   	   ;"clr-namespace:TrafficWatch.ControlTrafficWatch.Control  5   	   .    (TrafficWatch.View.Monitor.MonitorProcess   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9local'clr-namespace:TrafficWatch.View.Monitor     5   	   7Controls"clr-namespace:TrafficWatch.Control     5   	     � Title$  MonytorProcess��5	   	   $��300.364��6    $��388.71��61    � 
ResizeMode$ NoResize=�6@   .��5
      � .+�5   
   �  � ColumnDefinitions 5      �� 5      �� 5      .+�5      �� -   5         ��Name$ Icons��5      $
��Left=�6#   $��32��6>   $��6,10,0,0q�6J   $	��Top=�6\   $��32��6t   �� 5      -   5         ��Name$ Names��5      $
��Left=�6'   $��	43,10,0,0q�6B   $
��Wrap=�6U   $
��Name��6i   $	��Top=�6u   �� 5      -   5        $ up��5      $��23��6%   $
��Left=�61   $
��Wrap=�6L   $	��Top=�6`   $��	94,52,0,0q�6x   $��98��6�   $
��0K/s��6�   �� 5      -   5        $
 down��5      $��23��6'   $
��Wrap=�63   $��	94,87,0,0q�6G   $
��Left=�6Z   $��98��6u   $	��Top=�6�   $
��0K/s��6�   �� 5      $��Upload :��6   $��30��6'   $��	14,45,0,0q�63   $
��Left=�6F   $��73��6a   $	��Top=�6l   �� 5      $��
Download :��6   $��30��6*   $��	14,80,0,0q�66   $
��Left=�6I   $��73��6d   $	��Top=�6o   �� 5      -   5        $	 up2��5      $��1��6%   $��23��66   $
��Left=�6B   $
��Wrap=�6]   $	��Top=�6q   $��	94,52,0,0q�6�   $��98��6�   $
��0K/s��6�   �� 5      -   5        $ down2��5      $��1��6'   $��23��68   $
��Wrap=�6D   $��	94,87,0,0q�6X   $
��Left=�6k   $��98��6�   $	��Top=�6�   $
��0K/s��6�   �� 5      $��Upload :��6   $��1��6'   $��30��67   $��	14,45,0,0q�6C   $
��Left=�6V   $��73��6q   $	��Top=�6|   �� 5      $��
Download :��6   $��1��6)   $��30��6:   $��	14,80,0,0q�6F   $
��Left=�6Y   $��73��6t   $	��Top=�6   5      9� 5   
   $��Expander��6   $	��154��6%   $��10,115,10,0q�62   $	��Top=�6G    9� 
IsExpanded . .��5      � ���	#FFE5E5E5$��0,0,-2,0q�6*   .+�5       �� $��History Lenth :��6   $
��Left=�62   $��3,7,0,0q�6M   $	��Top=�6^   �� 5!      -   5        $
��Left=�5!      $��20��65   $��94,10,-51,0q�6A    �� TextWrapping$
 Wrap=�6V   $	��Top=�6�   $��87��6�    �� TextAlignment$ Center=�6�   ��6j   �� *HistoryLenth+ �� ElementName$ Chart1��6�   '   !TrafficWatch.Control.ChartTraffic  5"      -   5        	  Name$	 Chart1��5"   (   '   !TrafficWatch.Control.ChartTraffic
   MouseRightButtonDown$!
 Chart1_MouseRightButtonDown��6�   $��93��68   $��0,38,0,0q�6D      History . $	��Top=�6     Zoom 6e   �� *Zoom.X+ �� RelativeSource �� *FindAncestor+ �� AncestorType"  6  5#      5$      5%      5&      