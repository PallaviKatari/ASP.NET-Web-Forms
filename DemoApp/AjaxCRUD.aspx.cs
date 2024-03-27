using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class AjaxCRUD : System.Web.UI.Page
    {
        // Dummy database for storing tasks
        private static List<Task> tasks = new List<Task>
        {
            new Task { Id = 1, Name = "Task 1" },
            new Task { Id = 2, Name = "Task 2" },
            new Task { Id = 3, Name = "Task 3" }
        };

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<Task> GetTasks()
        {
            return tasks;
        }

        [WebMethod]
        public static void AddTask(string name)
        {
            int newId = tasks.Count + 1;
            tasks.Add(new Task { Id = newId, Name = name });
        }

        [WebMethod]
        public static void DeleteTask(int id)
        {
            Task taskToRemove = tasks.Find(t => t.Id == id);//2
            if (taskToRemove != null)
            {
                tasks.Remove(taskToRemove);
            }
        }

        [WebMethod]
        public static void UpdateTask(int id, string name)
        {
            Task taskToUpdate = tasks.Find(t => t.Id == id);//2
            if (taskToUpdate != null)
            {
                taskToUpdate.Name = name;
            }
        }

        // Task class
        public class Task
        {
            public int Id { get; set; }
            public string Name { get; set; }
        }
    }
}