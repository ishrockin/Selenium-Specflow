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
    [Binding, Scope(Feature = "GritBin")]
    public class GritBinSteps
    {
        public IWebDriver driver;

        [Given(@"user is on the refill grit bin page")]
        public void GivenUserIsOnTheRefillGritBinPage()
        {
            driver = new ChromeDriver();
            driver.Url = "https://selfservice-test.sutton.gov.uk/action/refillgritbin";
            driver.Manage().Window.Maximize();
        }
        
        [Given(@"they click on the Next button")]
        public void GivenTheyClickOnTheNextButton()
        {
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"they enter the correct road name that has grit bins from list https://github\.com/adrianshort/suttonmaps/blob/master/importers/data/grit-bins\.csv")]
        public void WhenTheyEnterTheCorrectRoadNameThatHasGritBinsFromListHttpsGithub_ComAdrianshortSuttonmapsBlobMasterImportersDataGrit_Bins_Csv()
        {
            var wait = new WebDriverWait(driver, TimeSpan.FromSeconds(10)); wait.Until(driver => driver.FindElement(By.XPath("//*[@id='fcbc7368-25fa-40f6-bf29-2fe1ab28045a']")).Displayed);

            driver.FindElement(By.XPath("//*[@id='fcbc7368-25fa-40f6-bf29-2fe1ab28045a']")).SendKeys("carshalton");
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"user selects the relevant address & clicks on next")]
        public void WhenUserSelectsTheRelevantAddressClicksOnNext()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            var wait1 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait1.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            //var button = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12"));
            //Actions actions = new Actions(driver);
            //actions.MoveToElement(button);
            //actions.Perform();

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();
        }
        
        [When(@"they select relevant grit bin location & confirm that bin is less than 50% full")]
        public void WhenTheySelectRelevantGritBinLocationConfirmThatBinIsLessThanFull()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            var wait3 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait3.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            driver.FindElement(By.Id("06125ca9-daa2-4152-a814-ee564730549a")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            //var button1 = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl21"));
            //Actions actions = new Actions(driver);
            //actions.MoveToElement(button1);
            //actions.Perform();

            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl21")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl21")).Click();
        }

        [When(@"they are on the confirmation screen with the google link to see the bin location")]
        public void WhenTheyAreOnTheConfirmationScreenWithTheGoogleLinkToSeeTheBinLocation()
        {
            driver.FindElement(By.Id("c44128ad-3904-423f-bb69-efd147362469")).Click();

            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"they enter their contact details & select next")]
        public void WhenTheyEnterTheirContactDetailsSelectNext()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;
            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.XPath("//*[@id='b06b6fc1-f071-4192-8b98-c91fd380693d']")).Displayed);

            driver.FindElement(By.XPath("//*[@id='b06b6fc1-f071-4192-8b98-c91fd380693d']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='c4dcae0d-be31-41bc-bcd7-2be8e9965bec']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='fab645d3-810b-42c3-bf70-d54672c4b85d']")).SendKeys("ishan.soni@kingston.gov.uk");

            js.ExecuteScript("window.scrollBy(0,950);");

            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"they enter the road name that has no grit bins")]
        public void WhenTheyEnterTheRoadNameThatHasNoGritBins()
        {
            IJavaScriptExecutor js = driver as IJavaScriptExecutor;

            var wait5 = new WebDriverWait(driver, TimeSpan.FromSeconds(10)); wait5.Until(driver => driver.FindElement(By.XPath("//*[@id='fcbc7368-25fa-40f6-bf29-2fe1ab28045a']")).Displayed);

            driver.FindElement(By.XPath("//*[@id='fcbc7368-25fa-40f6-bf29-2fe1ab28045a']")).SendKeys("abbott");
            driver.FindElement(By.Id("btnForward")).Click();

            var wait6 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait6.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            js.ExecuteScript("window.scrollBy(0,950);");

            //var button2 = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12"));
            //Actions actions = new Actions(driver);
            //actions.MoveToElement(button2);
            //actions.Perform();

            var wait7 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait7.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();
        }     
        
        [Then(@"they get a confirmation screen with the case number & the corresponding email with payment details")]
        public void ThenTheyGetAConfirmationScreenWithTheCaseNumberTheCorrespondingEmailWithPaymentDetails()
        {
            driver.PageSource.Contains("Confirmation");
        }
        
        [Then(@"they get a page saying that no grit bins found on this location")]
        public void ThenTheyGetAPageSayingThatNoGritBinsFoundOnThisLocation()
        {
            driver.PageSource.Contains("Grit bin not found");
        }

        [Then(@"they get a page saying that it is not the operational time of the year")]
        public void ThenTheyGetAPageSayingThatItIsNotTheOperationalTimeOfTheYear()
        {
            driver.PageSource.Contains("Wrong time of year");
        }
    }
}
