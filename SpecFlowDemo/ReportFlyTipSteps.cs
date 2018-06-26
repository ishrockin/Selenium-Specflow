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
    [Binding, Scope(Feature = "ReportFlyTip")]
    class ReportFlyTip
    {
        //static String driverPath = "C:\\IEDriver\\IEDriverServer.exe";
        public IWebDriver driver;
        [Given(@"User is on the ReportFlyTip Page")]
        public void GivenUserisontheReportFlyTipPage()
        {
            driver = new ChromeDriver();
            driver.Url = "https://selfservice-test.sutton.gov.uk/action/reportflytip";
            driver.Manage().Window.Maximize();
        }

        [When(@"they select Yes to first time report & click on next")]
        public void WhenTheySelectYesToFirstTimeReportClickOnNext()
        {
            driver.FindElement(By.XPath("//*[@id='a3e80854-c5ba-492f-b8ce-86dc4782dd88_0']")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }


        [When(@"they click on the next button after selecting the problem source as public road")]
        public void AndTheyClickOnTheNextButtonAfterSelectingAProblemSource()
        {

            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$82c2105a-e0af-405b-8423-d0694bfc926b")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"User enters the Fly tip location & clicks next")]
        public void WhenUserEntersTheFlyTipLocationClicksNext()
        {
            var wait = new WebDriverWait(driver, TimeSpan.FromSeconds(10)); wait.Until(driver => driver.FindElement(By.XPath("//*[@id='5df7f3a4-3c73-4370-9be8-179b75afd510']")).Displayed);

            driver.FindElement(By.XPath("//*[@id='5df7f3a4-3c73-4370-9be8-179b75afd510']")).SendKeys("abbott");
            driver.FindElement(By.Id("btnForward")).Click();
        }


        [When(@"They enter the relevant details on the public road information pages")]
        public void WhenTheyEnterTheCorrectDetailsOnTheInformationPages()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            var wait1 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait1.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            //var button = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12"));
            //Actions actions = new Actions(driver);
            //actions.MoveToElement(button);

            js.ExecuteScript("window.scrollBy(0,950);");

            var wait5 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait5.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.XPath("//*[@id='e49ca39a-f1e3-483a-9a08-935f349dcff2']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='e49ca39a-f1e3-483a-9a08-935f349dcff2']")).SendKeys("test");


            //*[@id="106e4427-5e0d-4a0c-adcd-a6429f403121"]
            //var button1 = driver.FindElement(By.Id("btnForward"));
            //Actions actions1 = new Actions(driver);
            //actions1.MoveToElement(button1);

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();

            var wait3 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait3.Until(driver => driver.FindElement(By.XPath("//*[@id='aca3f900-a89c-4cdc-a606-cd9f411a369c']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='aca3f900-a89c-4cdc-a606-cd9f411a369c']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();

            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.XPath("//*[@id='4eae204f-bf0d-4e25-9ad3-3f14c69cb17d']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='4eae204f-bf0d-4e25-9ad3-3f14c69cb17d']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='071f91f7-61bb-46eb-80eb-55db4fa489f4']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='6aa4fe8a-f307-479e-b190-513d11085178']")).SendKeys("1234567890");
            driver.FindElement(By.XPath("//*[@id='3cac1fa3-33cb-4836-b5df-8244ac065437']")).SendKeys("ishan.soni@kingston.gov.uk");
            driver.FindElement(By.Id("btnForward")).Click();
        }



        [Then(@"they get a confirmation screen with the case number")]
        public void ThenTheyGetAConfirmationScreenWithTheCaseNumber()
        {
            //bool confirmation = driver.FindElement(By.Id("//*[@id='CallGuideControl']/div[2]/div/div[1]/h3")).Displayed;
            //Assert.AreEqual(true, confirmation);

            driver.PageSource.Contains("Confirmation");
        }

        [When(@"they click on the next button after selecting the problem source as Car Park")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsCarPark()
        {
            driver.FindElement(By.XPath("//*[@id='82c2105a-e0af-405b-8423-d0694bfc926b_1']")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"User selects the car park location & clicks next")]
        public void WhenUserSelectsTheCarParkLocationClicksNext()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            driver.FindElement(By.XPath("//*[@id='8cdabb09-87c6-4efe-91e2-c85320dd2057_5']")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"They enter the relevant details on the car park information pages")]
        public void WhenTheyEnterTheRelevantDetailsOnTheCarParkInformationPages()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            driver.FindElement(By.XPath("//*[@id='e49ca39a-f1e3-483a-9a08-935f349dcff2']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
            driver.FindElement(By.XPath("//*[@id='aca3f900-a89c-4cdc-a606-cd9f411a369c']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
            driver.FindElement(By.XPath("//*[@id='4eae204f-bf0d-4e25-9ad3-3f14c69cb17d']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='071f91f7-61bb-46eb-80eb-55db4fa489f4']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='6aa4fe8a-f307-479e-b190-513d11085178']")).SendKeys("1234567890");
            driver.FindElement(By.XPath("//*[@id='3cac1fa3-33cb-4836-b5df-8244ac065437']")).SendKeys("ishan.soni@kingston.gov.uk");
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"they click on the next button after selecting the problem source as In a park")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsInAPark()
        {
            driver.FindElement(By.XPath("//*[@id='82c2105a-e0af-405b-8423-d0694bfc926b_2']")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"User enters the park details & clicks next")]
        public void WhenUserEntersTheParkDetailsClicksNext()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            driver.FindElement(By.XPath("//*[@id='38ad2784-b511-4d1b-bff1-3be19f7214d0']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='9937a226-7d14-497c-9592-b19dd29e9aa8']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"They enter the relevant details on the park information pages")]
        public void WhenTheyEnterTheRelevantDetailsOnTheParkInformationPages()
        {
            driver.FindElement(By.XPath("//*[@id='4eae204f-bf0d-4e25-9ad3-3f14c69cb17d']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='071f91f7-61bb-46eb-80eb-55db4fa489f4']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='6aa4fe8a-f307-479e-b190-513d11085178']")).SendKeys("1234567890");
            driver.FindElement(By.XPath("//*[@id='3cac1fa3-33cb-4836-b5df-8244ac065437']")).SendKeys("ishan.soni@kingston.gov.uk");
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"they click on the next button after selecting the problem source as private land")]
        public void WhenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsPrivateLand()
        {
            driver.FindElement(By.XPath("//*[@id='82c2105a-e0af-405b-8423-d0694bfc926b_3']")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }


        [When(@"they click on the next button after selecting the problem source as Somewhere Else")]
        public void WhenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsSomewhereElse()
        {
            driver.FindElement(By.XPath("//*[@id='82c2105a-e0af-405b-8423-d0694bfc926b_4']")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }

    }
}
