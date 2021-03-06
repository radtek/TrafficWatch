﻿using EarTrumpet.Services;
using System;
using System.Runtime.InteropServices;
using System.Windows;
using System.Windows.Interop;
using System.Windows.Media;

namespace TrafficWatch
{
    static class BlurWindowExtensions
    {
        static class Interop
        {
            [DllImport("user32.dll")]
            internal static extern int SetWindowCompositionAttribute(IntPtr hwnd, ref WindowCompositionAttribData data);

            [StructLayout(LayoutKind.Sequential)]
            internal struct WindowCompositionAttribData
            {
                public WindowCompositionAttribute Attribute;
                public IntPtr Data;
                public int SizeOfData;
            }

            [StructLayout(LayoutKind.Sequential)]
            internal struct AccentPolicy
            {
                public AccentState AccentState;
                public AccentFlags AccentFlags;
                public int GradientColor;
                public int AnimationId;
            }

            [Flags]
            internal enum AccentFlags
            {
                // ...
                DrawLeftBorder = 0x20,
                DrawTopBorder = 0x40,
                DrawRightBorder = 0x80,
                DrawBottomBorder = 0x100,
                DrawAllBorders = (DrawLeftBorder | DrawTopBorder | DrawRightBorder | DrawBottomBorder)
                // ...
            }

            internal enum WindowCompositionAttribute
            {
                // ...
                WCA_ACCENT_POLICY = 19
                // ...
            }

            internal enum AccentState
            {
                ACCENT_DISABLED = 0,
                ACCENT_ENABLE_GRADIENT = 1,
                ACCENT_ENABLE_TRANSPARENTGRADIENT = 2,
                ACCENT_ENABLE_BLURBEHIND = 3,
                ACCENT_INVALID_STATE = 4
            }
        }

        public static void EnableBlur(this Window window)
        {
            if (SystemParameters.HighContrast)
            {
                return; // Blur is not useful in high contrast mode
            }
            if (App.IsWindows8orhigher())
                SetAccentPolicy(window, Interop.AccentState.ACCENT_ENABLE_BLURBEHIND);
            else
            {
                SetGlass(window);
            }
        }
        public static void SetGlass(this Window window)
        {
            window.Background = new SolidColorBrush(Color.FromArgb(127, 31, 31, 31));
            window.Foreground = new SolidColorBrush(Colors.White);
        }
        public static void DisableGlass(this Window window)
        {
            window.Background = new SolidColorBrush(Color.FromArgb(255, 31, 31, 31));
            window.Foreground = new SolidColorBrush(Colors.White);
        }
        public static void DisableBlur(this Window window)
        {
            if (App.IsWindows8orhigher())
                SetAccentPolicy(window, Interop.AccentState.ACCENT_DISABLED);
            else
            {
                DisableGlass(window);
            }
        }

        

        private static void SetAccentPolicy(Window window, Interop.AccentState accentState)
        {
            var windowHelper = new WindowInteropHelper(window);

            var accent = new Interop.AccentPolicy()
            {
                AccentState = accentState,
                AccentFlags = GetAccentFlagsForTaskbarPosition()
            };
            var accentStructSize = Marshal.SizeOf(accent);

            var accentPtr = Marshal.AllocHGlobal(accentStructSize);
            Marshal.StructureToPtr(accent, accentPtr, false);

            var data = new Interop.WindowCompositionAttribData()
            {
                Attribute = Interop.WindowCompositionAttribute.WCA_ACCENT_POLICY,
                SizeOfData = accentStructSize,
                Data = accentPtr
            };
            Interop.SetWindowCompositionAttribute(windowHelper.Handle, ref data);

            Marshal.FreeHGlobal(accentPtr);
        }

        private static Interop.AccentFlags GetAccentFlagsForTaskbarPosition()
        {
            var flags = Interop.AccentFlags.DrawAllBorders;

            switch (TaskbarService.GetWinTaskbarState().TaskbarPosition)
            {
                case TaskbarPosition.Top:
                    flags &= ~Interop.AccentFlags.DrawTopBorder;
                    break;

                case TaskbarPosition.Bottom:
                    flags &= ~Interop.AccentFlags.DrawBottomBorder;
                    break;

                case TaskbarPosition.Left:
                    flags &= ~Interop.AccentFlags.DrawLeftBorder;
                    break;

                case TaskbarPosition.Right:
                    flags &= ~Interop.AccentFlags.DrawRightBorder;
                    break;
            }

            return flags;
        }
    }
}
