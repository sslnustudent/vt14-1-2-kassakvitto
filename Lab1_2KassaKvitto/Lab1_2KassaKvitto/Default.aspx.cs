using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_2KassaKvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OkButton_Click(object sender, EventArgs e)
        {
            Model.Receipt receipt = new Model.Receipt(double.Parse(ValueTextBox.Text));
            ReceiptBox.Visible = true;
            TotalNumberLabel.Text = String.Format("Total {0:c}", receipt.Subtotal);
            RabatSatsNumberLabel.Text = String.Format("Rabatsats {0:p0}", receipt.DiscountRate);
            RabatNumberLabel.Text = String.Format("Rabat {0:c}", receipt.MoneyOff);
            ToPayNumberLabel.Text = String.Format("Att betala {0:c}", receipt.Total);


        }
    }
}