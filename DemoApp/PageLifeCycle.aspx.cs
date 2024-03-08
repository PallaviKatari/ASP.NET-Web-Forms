using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoApp
{
    public partial class PageLifeCycle : System.Web.UI.Page
    {
        //This event happens with an ASP.NET page request after the start stage is completed
        //and before the initialization stage starts.
        //The Ispostback property is determined - Loads the data only for the first time not on every Page_Load
        //The event allows us to set the master page and theme of a web application dynamically,
        //create or re-create dynamic controls, and set or get profile property values.
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Label1.Text += "<br/>" + "PreInit";
        }

        //The page init event occurs after the controls are initialized.
        //This event reads or initializes control properties.
        //The server controls are loaded and initialized from the webform view state.
        //View state - preserve the state of various child controls of the webpage during postback.(later session in detail)
        //This event is used to set or get control properties.
        protected void Page_Init(object sender, EventArgs e)
        {
            Label2.Text += "<br/>" + "Init";
        }

        //This event is raised immediately after the end of page initialization.
        //ViewState is not yet loaded
        //This event can be used to make changes in ViewState and process initialization tasks to be completed.
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            Label3.Text += "<br/>" + "InitComplete";
        }

        //This event happens just before the page load event.
        //It is raised when the page loads the viewstate and viewstate data are loaded to controls.
        protected override void OnPreLoad(EventArgs e)
        {
            Label4.Text += "<br/>" + "PreLoad";
        }

        //The page load event occurs when the page calls the onload method on page object, then a recursive onload for each control is invoked.
        //We can create dynamic controls in this method.
        //In this event page lifecycle, all values are restored and then check the value of Isvalid.
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text += "<br/>" + "Load";
        }

        //This event is raised at the end of the event handling stage.
        //Use of this event for tasks that require all other controls on the page be loaded.
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Label6.Text += "<br/>" + "LoadComplete";
        }

        //This event is raised just before the rendering stage of the page.
        //This event is raised after the page object has created all controls that are required
        //in order to render the page.
        //The page object raises the prerender event on the page object,
        //and then recursively does the same for each child control.
        protected override void OnPreRender(EventArgs e)
        {
            Label7.Text += "<br/>" + "PreRender";
        }

        //Savestatecomplete event occurs raised after view state and controls state(preserve data when viewstate is disabled)
        //have been saved for the page and for all controls.
        protected override void OnSaveStateComplete(EventArgs e)
        {
            Label8.Text += "<br/>" + "SaveStateComplete";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<br/>" + "Button1_Click");
        }
    }
}
