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
    public partial class EditWorkout : System.Web.UI.Page
    {
        WorkoutBLL bll = new WorkoutBLL(ConfigurationManager.ConnectionStrings["MySwoleMateConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            //Only load the values if the request is not a PostBack
            if (!IsPostBack)
            {
                //Get a WorkoutViewModel object holding data of the selected workout
                WorkoutViewModel workout = bll.GetWorkoutById(Convert.ToInt32(Request.QueryString["WorkoutID"]));

                //Fill textboxes with the correct values from the database
                WorkoutName.Text = workout.WorkoutName;
                Exercise1.Text = workout.Exercise1;
                Exercise1Reps.Text = workout.Exercise1Reps.ToString();
                Exercise1Sets.Text = workout.Exercise1Sets.ToString();
                Exercise2.Text = workout.Exercise2;
                Exercise2Reps.Text = workout.Exercise2Reps.ToString();
                Exercise2Sets.Text = workout.Exercise2Sets.ToString();
                Exercise3.Text = workout.Exercise3;
                Exercise3Reps.Text = workout.Exercise3Reps.ToString();
                Exercise3Sets.Text = workout.Exercise3Sets.ToString();
                Exercise4.Text = workout.Exercise4;
                Exercise4Reps.Text = workout.Exercise4Reps.ToString();
                Exercise4Sets.Text = workout.Exercise4Sets.ToString();
                Exercise5.Text = workout.Exercise5;
                Exercise5Reps.Text = workout.Exercise5Reps.ToString();
                Exercise5Sets.Text = workout.Exercise5Sets.ToString();
            }
        }

        protected void WorkoutEditButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //Create a WorkoutViewModel object to be used to edit database
                WorkoutViewModel workout = new WorkoutViewModel();

                //Parse data from textboxes into respective fields in model
                workout.WorkoutID = Convert.ToInt32(Request.QueryString["WorkoutID"]);
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
                bll.EditWorkout(workout);
                //Redirect to Workout.aspx page
                Response.Redirect("~/Workout.aspx");
            }
            
        }
    }
}