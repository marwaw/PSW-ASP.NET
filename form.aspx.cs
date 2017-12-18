using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // if this is not the first time the page is loading
        // (i.e., the user has already submitted form data)
        if (IsPostBack)
        {
            Validate(); 

            if (IsValid)
            {
                Display();
            } 
        } 
    } 

    private void Display()
    {
        string name = nameTB.Text;
        string surname = surnameTB.Text;
        string email = emailTB.Text;
        string phone = phoneTB.Text;
        string age = AgeTB.Text;
        string postalCode = PostalCodeTB.Text;
        string address = AddressTB.Text;

        outputLabel.Text = "Dziękujemy za przesłanie formularza!<br/>Przesłane informacje:<br/>";
        outputLabel.Text +=
           String.Format("Imię: {0}{1} Nazwisko: {2}{1} E-mail: {3}{1} Telefon: {4}{1} Wiek: {5}{1} Kod pocztowy: {6}{1} Adres: {7}{1},  ",
          name, "<br/>", surname, email, phone, age, postalCode, address);
        outputLabel.Visible = true;
    }


protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}