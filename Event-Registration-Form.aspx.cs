using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_04_Event_Registration_Portal
{
    public partial class Event_Registration_Form : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void EventsValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = listBoxEvent.GetSelectedIndices().Length > 0;
        }

        protected void TermsValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
                return;

            string name = txtName.Text.Trim();
            string enrollment = txtEnroll.Text.Trim();
            string department = dropDownDepart.SelectedValue;
            string email = txtEmail.Text.Trim();
            string mobile = txtMobile.Text.Trim();

            string gender = "";
            if (radioMale.Checked)
                gender = "Male";
            else if (radioFemale.Checked)
                gender = "Female";

            List<string> techStackItems = new List<string>();
            if (chkPython.Checked) techStackItems.Add("Python");
            if (chkJavaScript.Checked) techStackItems.Add("JavaScript");
            if (chkReact.Checked) techStackItems.Add("React JS");
            if (chkCSharp.Checked) techStackItems.Add("C#");
            if (chkRust.Checked) techStackItems.Add("Rust");
            if (chkNode.Checked) techStackItems.Add("Node JS");

            List<string> selectedEvents = new List<string>();
            foreach (ListItem item in listBoxEvent.Items)
            {
                if (item.Selected)
                    selectedEvents.Add(item.Text);
            }

            // Encode user-provided text before writing it into the response.
            Response.Write("<h2>Registration Successful!</h2>");
            Response.Write("Name: " + Server.HtmlEncode(name) + "<br/>");
            Response.Write("Enrollment: " + Server.HtmlEncode(enrollment) + "<br/>");
            Response.Write("Department: " + Server.HtmlEncode(department) + "<br/>");
            Response.Write("Email: " + Server.HtmlEncode(email) + "<br/>");
            Response.Write("Mobile: " + Server.HtmlEncode(mobile) + "<br/>");
            Response.Write("Gender: " + Server.HtmlEncode(gender) + "<br/>");
            Response.Write("Tech Stack: " + Server.HtmlEncode(string.Join(", ", techStackItems)) + "<br/>");
            Response.Write("Events: " + Server.HtmlEncode(string.Join(", ", selectedEvents)));
        }
    }
}
