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
    [Binding, Scope(Feature = "GraffitiFlyPosting")]
    public class GraffitiFlyPosting
    {
        public IWebDriver driver;
        [Given(@"User is on the Report Graffiti / Fly posting Page")]
        public void GivenUserIsOnTheReportGraffitiFlyPostingPage()
        {
            driver = new ChromeDriver();
            driver.Url = "https://selfservice-test.sutton.gov.uk/action/graffitiflyposting";
            driver.Manage().Window.Maximize();
        }
        
        [Given(@"they click on the next button after selecting the problem source as public building / wall")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsPublicBuildingWall()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_0")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as private building / wall")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsPrivateBuildingWall()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_1")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Monument")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsMonument()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_2")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Street Bench")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsStreetBench()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_3")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Street Litter Bin")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsStreetLitterBin()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_4")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Car Park")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsCarPark()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_5")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Park")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsPark()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_6")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Housing estate")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsHousingEstate()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_7")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Bus Stop")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsBusStop()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_8")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Post Box")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsPostBox()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_9")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Telephone Box")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsTelephoneBox()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_10")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Street Cabinet")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsStreetCabinet()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_11")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Train Station / Bridge")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsTrainStationBridge()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_12")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Given(@"they click on the next button after selecting the problem source as Somewhere else")]
        public void GivenTheyClickOnTheNextButtonAfterSelectingTheProblemSourceAsSomewhereElse()
        {
            driver.FindElement(By.Id("1496e606-a69a-46b8-87e4-f39b65e79a93_13")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"User enters the location, clicks next & adds more location details")]
        public void WhenUserEntersTheLocationClicksNextAddsMoreLocationDetails()
        {
            driver.FindElement(By.XPath("//*[@id='5df7f3a4-3c73-4370-9be8-179b75afd510']")).SendKeys("abbott");
            driver.FindElement(By.Id("btnForward")).Click();

            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            var wait1 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait1.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            var wait5 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait5.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.XPath("//*[@id='106e4427-5e0d-4a0c-adcd-a6429f403121']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='106e4427-5e0d-4a0c-adcd-a6429f403121']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"They choose report type as graffiti")]
        public void WhenTheyChooseReportTypeAsGraffiti()
        {
            driver.FindElement(By.Id("d9350c9b-f36b-4f88-9e2c-1bacef72029e_0")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"They report it to be offensive")]
        public void WhenTheyReportItToBeOffensive()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            driver.FindElement(By.Id("fb7fd6e2-6593-4c35-b4c0-17e3549d824d_0")).Click();

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.XPath("//*[@id='3661a37c-d12a-490d-9318-8a94de4e5ed1']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='3661a37c-d12a-490d-9318-8a94de4e5ed1']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
            
            
        }
        
        [When(@"They enter the relevant details on the information pages")]
        public void WhenTheyEnterTheRelevantDetailsOnTheInformationPages()
        {
        
            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.XPath("//*[@id='f593c069-cca7-406c-bb64-4c0de0723f5b']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='f593c069-cca7-406c-bb64-4c0de0723f5b']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='82ffa2fd-b92b-4dcb-82a6-27c9c0a7f680']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='80779954-5709-4d9f-9965-ababaea44cea']")).SendKeys("1234567890");
            driver.FindElement(By.XPath("//*[@id='81ab7b9c-bdb7-4d7a-b0d5-4659330eac62']")).SendKeys("ishan.soni@kingston.gov.uk");
            driver.FindElement(By.Id("btnForward")).Click();
        }

        [When(@"They report it to be Non offensive")]
        public void WhenTheyReportItToBeNonOffensive()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            driver.FindElement(By.Id("fb7fd6e2-6593-4c35-b4c0-17e3549d824d_1")).Click();

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.XPath("//*[@id='3661a37c-d12a-490d-9318-8a94de4e5ed1']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='3661a37c-d12a-490d-9318-8a94de4e5ed1']")).SendKeys("test");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"They choose report type as Fly Posting")]
        public void WhenTheyChooseReportTypeAsFlyPosting()
        {
            driver.FindElement(By.Id("d9350c9b-f36b-4f88-9e2c-1bacef72029e_1")).Click();
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Then(@"they get a confirmation screen with the case number")]
        public void ThenTheyGetAConfirmationScreenWithTheCaseNumber()
        {
            driver.PageSource.Contains("Confirmation");
        }
        
        [Then(@"they get a confirmation screen with alternative contact details & the case number as council is not responsible")]
        public void ThenTheyGetAConfirmationScreenWithAlternativeContactDetailsTheCaseNumberAsCouncilIsNotResponsible()
        {
            driver.PageSource.Contains("Alternative contact details");
        }
        
        [Then(@"they get a confirmation screen with alternative contact details & the case number")]
        public void ThenTheyGetAConfirmationScreenWithAlternativeContactDetailsTheCaseNumber()
        {
            driver.PageSource.Contains("Alternative contact details");
        }
    }
}
