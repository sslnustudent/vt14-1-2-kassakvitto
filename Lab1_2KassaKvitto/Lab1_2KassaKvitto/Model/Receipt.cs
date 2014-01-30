using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab1_2KassaKvitto.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double DiscountRate
        {
            get;
            private set;
        }
        public double MoneyOff
        {
            get;
            private set;
        }
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                else
                {
                    _subtotal = value;
                }
            }
        }
        public double Total
        {
            get;
            private set;
        }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if(Subtotal <= 499)
            {
                DiscountRate = 0;
                MoneyOff = 0;
            }
            else if(499 < Subtotal && Subtotal <= 999)
            {
                DiscountRate = 0.05;
                MoneyOff =  Subtotal * 0.05;
            }
            else if (999 < Subtotal && Subtotal <= 4999)
            {
                DiscountRate = 0.10;
                MoneyOff = Subtotal * 0.10;
            }
            else
            {
                DiscountRate = 0.15;
                MoneyOff = Subtotal * 0.15;
            }

            Total = Subtotal - MoneyOff;



        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

    }
}