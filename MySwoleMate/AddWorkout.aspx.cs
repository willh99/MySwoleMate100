using MySwoleMate.BLL;
using MySwoleMate.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MySwoleMate
{
    public partial class AddWorkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WorkoutAddButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString();
                WorkoutBLL bll = new WorkoutBLL(connectionstring);


                //Create a WorkoutViewModel object to be used to edit database
                WorkoutViewModel workout = new WorkoutViewModel();

                //Parse data from textboxes into respective fields in model
                workout.WorkoutName = WorkoutName.Text;
                workout.Exercise1 = Exercise1.Text;
                workout.Exercise1Reps = Convert.ToInt32(Exercise1Reps.Text);
                workout.Exercise1Sets = Convert.ToInt32(Exercise1Sets.Text);
                workout.Exercise2 = Exercise2.Text;
                workout.Exercise2Reps = Convert.ToInt32(Exercise2Reps.Text);
                workout.Exercise2Sets = Convert.ToInt32(Exercise2Sets.Text);
                workout.Exercise3 = Exercise3.Text;
                workout.Exercise3Reps = Convert.ToInt32(Exercise3Reps.Text);
                workout.Exercise3Sets = Convert.ToInt32(Exercise3Sets.Text);
                workout.Exercise4 = Exercise4.Text;
                workout.Exercise4Reps = Convert.ToInt32(Exercise4Reps.Text);
                workout.Exercise4Sets = Convert.ToInt32(Exercise4Sets.Text);
                workout.Exercise5 = Exercise5.Text;
                workout.Exercise5Reps = Convert.ToInt32(Exercise5Reps.Text);
                workout.Exercise5Sets = Convert.ToInt32(Exercise5Sets.Text);

                //Pass WorkoutViewModel to commit edits
                bll.AddWorkout(workout);
                //Redirect to Workout.aspx page
                Response.Redirect("~/Workout.aspx");
            }
        }
    }
}