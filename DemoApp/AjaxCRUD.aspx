<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxCRUD.aspx.cs" Inherits="DemoApp.AjaxCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task Manager</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Function to load tasks when the page loads
            LoadTasks();

            // Function to load tasks from server
            function LoadTasks() {
                $.ajax({
                    type: "POST",
                    url: "AjaxCRUD.aspx/GetTasks",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var tasks = response.d;//1,2,3 - id,name
                        $("#taskList").empty();//ul
                        $.each(tasks, function (index, task) {
                            $("#taskList").append("<li>" + task.Name + " <button onclick='EditTask(" + task.Id + ")'>Edit</button> <button onclick='DeleteTask(" + task.Id + ")'>Delete</button></li>");
                        });
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                    }
                });
            }

            // Function to add a new task
            $("#btnAddTask").click(function () {
                var taskName = $("#txtTaskName").val();
                $.ajax({
                    type: "POST",
                    url: "AjaxCRUD.aspx/AddTask",
                    data: JSON.stringify({ name: taskName }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        LoadTasks();
                        $("#txtTaskName").val('');
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                    }
                });
            });

            // Function to delete a task
            window.DeleteTask = function (taskId) {
                $.ajax({
                    type: "POST",
                    url: "AjaxCRUD.aspx/DeleteTask",
                    data: JSON.stringify({ id: taskId }),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function () {
                        LoadTasks();
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                    }
                });
            }

            // Function to edit a task
            window.EditTask = function (taskId) {
                var newName = prompt("Enter new task name:");
                if (newName) {
                    $.ajax({
                        type: "POST",
                        url: "AjaxCRUD.aspx/UpdateTask",
                        data: JSON.stringify({ id: taskId, name: newName }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function () {
                            LoadTasks();
                        },
                        error: function (xhr, status, error) {
                            console.log(xhr.responseText);
                        }
                    });
                }
            };
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="txtTaskName" placeholder="Task Name" />
            <input type="button" id="btnAddTask" value="Add Task" />
            <ul id="taskList"></ul>
        </div>
    </form>
</body>
</html>

