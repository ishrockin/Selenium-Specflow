using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Support;
using TechTalk.SpecFlow;
using NUnit.Framework;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.IE;
using System.Diagnostics;
using OpenQA.Selenium.Support.UI;
using OpenQA.Selenium.Interactions;

namespace SpecFlowDemo
{
    [Binding, Scope(Feature = "LargeBinRequest")]
    public class LargeBinRequestSteps
    {
        public IWebDriver driver;
        [Given(@"user is on the findresidentialwasteservices page")]
        public void GivenUserIsOnTheFindresidentialwasteservicesPage()
        {
            driver = new ChromeDriver();
            driver.Url = "https://selfservice-test.sutton.gov.uk/action/findresidentialwasteservices";
            driver.Manage().Window.Maximize();
        }
        
        [When(@"they enter the correct property details to search their address")]
        public void WhenTheyEnterTheCorrectPropertyDetailsToSearchTheirAddress()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$3dab8bc7-99be-4948-ba6d-2806eb40df38")).SendKeys("SM2 7HY");
            js.ExecuteScript("window.scrollBy(0,950);");
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"user selects the relevant address & clicks on next")]
        public void WhenUserSelectsTheRelevantAddressClicksOnNext()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;
            var wait1 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait1.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            //var button = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12"));
            //Actions actions = new Actions(driver);
            //actions.MoveToElement(button);
            js.ExecuteScript("window.scrollBy(0,950);");

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();
        }
        
        [When(@"they select more waste options & manage my containers")]
        public void WhenTheySelectMoreWasteOptionsManageMyContainers()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            js.ExecuteScript("window.scrollBy(0,650);");
            var wait3 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait3.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl28")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl28")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl31")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl31")).Click();
        }
        
        [When(@"they select I want a larger bin & enter further details about contact / household")]
        public void WhenTheySelectIWantALargerBinEnterFurtherDetailsAboutContactHousehold()
        {
            var wait5 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait5.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl16")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl16")).Click();

            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"they enter the incorrect property details to search their address")]
        public void WhenTheyEnterTheIncorrectPropertyDetailsToSearchTheirAddress()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$3dab8bc7-99be-4948-ba6d-2806eb40df38")).SendKeys("SM2 7H");
            js.ExecuteScript("window.scrollBy(0,950);");
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Then(@"they get a confirmation screen with the case number")]
        public void ThenTheyGetAConfirmationScreenWithTheCaseNumber()
        {
            driver.PageSource.Contains("Confirmation");
        }
        
        [Then(@"they get a message saying details are not valid")]
        public void ThenTheyGetAMessageSayingDetailsAreNotValid()
        {
            driver.PageSource.Contains("The postcode entered is not valid");
        }
    }
}
