﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrafficWatch.Services.Detail;

namespace TrafficWatch.View.Detail
{
    public class ModelHistory : INotifyPropertyChanged
    {


        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        private string monthdownload = "";
        private string monthupload = "";
        private string totaldownload = "";
        private string totalupload = "";
        private string daydownload = "";
        private string dayupload = "";
        private string maxspeed = "";
        public string MaxSpeed { get => maxspeed; set { maxspeed = value; OnPropertyChanged("MaxSpeed"); } }
        public string Totaldownload { get => totaldownload; set { totaldownload = value; OnPropertyChanged("Totaldownload"); } }
        public string Totalupload { get => totalupload; set { totalupload = value; OnPropertyChanged("Totalupload"); } }

        public string Monthdownload { get => monthdownload; set { monthdownload = value; OnPropertyChanged("Monthdownload"); } }
        public string Monthupload { get => monthupload; set { monthupload = value; OnPropertyChanged("Monthupload"); } }
        public string Daydownload { get => daydownload; set { daydownload = value; OnPropertyChanged("Daydownload"); } }
        public string Dayupload { get => dayupload; set { dayupload = value; OnPropertyChanged("Dayupload"); } }


        public ModelHistory()
        {
            //display disinge
            Totaldownload = Tool.ToString(0);
            Totalupload = Tool.ToString(0);
            Daydownload = Tool.ToString(0);
            Dayupload = Tool.ToString(0);
            Monthdownload = Tool.ToString(0);
            Monthupload = Tool.ToString(0);
            MaxSpeed = Tool.ToString(0);
        }
        public void Initialize()
        {
            CallDay();
            CallMonth();
            App._History.ChengEvent += Chenge;
        }
        int index = 0;
        double dayd = 0;
        double dayu = 0;
        double monthd = 0;
        double monthu = 0;
        private void Chenge(object sender, string e)
        {
            MaxSpeed = Tool.ToString(PopWindow.Me.MaxDownload);
            Totaldownload = Tool.ToString(App._History.Data.Total.Download);
            Totalupload = Tool.ToString(App._History.Data.Total.Upload);
            if (index < 30 || index % 30 == 0)
            {
                CallDay();
            }
            else if (index > 300)//5 minet
            {
                CallMonth();
                index = -1;
            }
            index++;
        }
        void CallDay()
        {
            int day = DateTime.Now.Day;
            dayd = 0; dayu = 0;
            var d = App._History.Data.ListHistory.Where(x => x.Date.Day == day).ToList();
            WhereDay(d);
            
        }
        void CallMonth()
        {
            int month = DateTime.Now.Month;
            monthd = 0; monthu = 0;
            var m = App._History.Data.ListHistory.Where(x => x.Date.Month == month).ToList();
            WhereMonth(m);
        }
        void WhereDay(List<DataHistory> ListData)
        {
            foreach (DataHistory d in ListData)
            {
                 dayd += d.Download; dayu += d.Upload; 
            }
            Daydownload = Tool.ToString(dayd);
            Dayupload = Tool.ToString(dayu);
        }
        void WhereMonth(List<DataHistory> ListData)
        {
            foreach (DataHistory d in ListData)
            {
                 monthd += d.Download; monthu += d.Upload; 
            }
            Monthupload = Tool.ToString(monthu);
            Monthdownload = Tool.ToString(monthd);
        }
    }
}
