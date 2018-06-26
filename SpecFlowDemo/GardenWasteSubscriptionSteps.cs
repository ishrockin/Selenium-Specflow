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
    [Binding, Scope(Feature = "GardenWasteSubscription")]
    public class GardenWasteSubscriptionSteps
    {
        public IWebDriver driver;
        [Given(@"user is on the findresidentialwasteservices page")]
        public void GivenUserIsOnTheFindresidentialwasteservicesPage()
        {
            driver = new ChromeDriver();
            driver.Url = "https://selfservice-test.sutton.gov.uk/action/findresidentialwasteservices";
        }
        
        [When(@"they enter the correct property details to search their address")]
        public void WhenTheyEnterTheCorrectPropertyDetailsToSearchTheirAddress()
        {
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$3dab8bc7-99be-4948-ba6d-2806eb40df38")).SendKeys("SM3 9SA");
            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [When(@"user selects the relevant address & clicks on next")]
        public void WhenUserSelectsTheRelevantAddressClicksOnNext()
        {
            var wait1 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait1.Until(driver => driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Displayed);

            driver.FindElement(By.ClassName("DataGridWebUIBaseGridRowUnselected")).Click();

            var button = driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12"));
            Actions actions = new Actions(driver);
            actions.MoveToElement(button);

            var wait2 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait2.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl12")).Click();
        }
        
        [When(@"they select Subscribe to the service for Garden waste collections")]
        public void WhenTheySelectSubscribeToTheServiceForGardenWasteCollections()
        {
            var wait3 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait3.Until(driver => driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl41")).Displayed);
            driver.FindElement(By.Name("ctl00$Content$CallGuideControl$ctl41")).Click();
        }
        
        [When(@"they have 0 containers owned & customer adds 1 more garden bin")]
        public void WhenTheyHaveContainersOwnedCustomerAddsMoreGardenBin()
        {
            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).Displayed);
            //driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).SendKeys("1");
            driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).FindElement(By.CssSelector("option[value='1']")).Click();


            driver.FindElement(By.Name("ctl00$Content$btnForward")).Click(); 
        }
        
        [When(@"they enter their customer details")]
        public void WhenTheyEnterTheirCustomerDetails()
        {
            var wait5 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait5.Until(driver => driver.FindElement(By.XPath("//*[@id='370fc3ee-d1a4-4172-a577-601805c682d7']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='370fc3ee-d1a4-4172-a577-601805c682d7']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='76b3f41f-1083-4ee5-a69c-0d2720bd7fe5']")).SendKeys("test");
            driver.FindElement(By.XPath("//*[@id='e78d7ddb-7d79-4281-ab05-48f06694fe23']")).SendKeys("1234567890");
            driver.FindElement(By.XPath("//*[@id='4bb14549-49ac-4912-a2f1-d73b4c08fcaa']")).SendKeys("ishan.soni@kingston.gov.uk");
            driver.FindElement(By.Id("btnForward")).Click();
        }
                
        [When(@"they have 1 containers owned & customer selects 1 garden bins thus not requesting new bins")]
        public void WhenTheyHaveContainersOwnedCustomerSelectsGardenBinsThusNotRequestingNewBins(int p0, int p1)
        {
            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).Displayed);
            //driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).SendKeys("1");
            driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).FindElement(By.CssSelector("option[value='1']")).Click();


            driver.FindElement(By.Name("ctl00$Content$btnForward")).Click();
        }
        
        [When(@"they have 2 containers owned & customer selects 1 garden bin requesting extra bin collection")]
        public void WhenTheyHaveContainersOwnedCustomerSelectsGardenBinRequestingExtraBinCollection(int p0, int p1)
        {
            var wait4 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait4.Until(driver => driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).Displayed);
            //driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).SendKeys("1");
            driver.FindElement(By.Id("2ab0226e-0804-48a2-91b8-9611bf8e0c6d")).FindElement(By.CssSelector("option[value='2']")).Click();


            driver.FindElement(By.Name("ctl00$Content$btnForward")).Click();
        }
        
        [Then(@"they get a screen to confirm the number of containers & price")]
        public void ThenTheyGetAScreenToConfirmTheNumberOfContainersPrice()
        {
            var wait6 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait6.Until(driver => driver.FindElement(By.XPath("//*[@id='1e2d1646-b68c-468e-bba2-4d7df337091c']")).Displayed);
            driver.FindElement(By.XPath("//*[@id='1e2d1646-b68c-468e-bba2-4d7df337091c']")).Click();

            driver.FindElement(By.XPath("//*[@id='e5cc6411-e335-4a48-9a15-ae9694aae109_0']")).Click();

            driver.FindElement(By.Id("btnForward")).Click();
        }
        
        [Then(@"they navigate to Barclaycard portal for the payment")]
        public void ThenTheyNavigateToBarclaycardPortalForThePayment()
        {
            var wait7 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait7.Until(driver => driver.FindElement(By.Name("VISA_brand")).Displayed);
        }

        [When(@"they select the card type as visa & enter card details")]
        public void WhenTheySelectTheCardTypeAsVisaEnterCardDetails()
        {
            driver.FindElement(By.Name("VISA_brand")).Click();
            
            var wait8 = new WebDriverWait(driver, TimeSpan.FromSeconds(15)); wait8.Until(driver => driver.FindElement(By.Name("Ecom_Payment_Card_Name")).Displayed);
            driver.FindElement(By.Name("Ecom_Payment_Card_Name")).SendKeys("test");
            driver.FindElement(By.Name("Ecom_Payment_Card_Number")).SendKeys("4111111111111111");
            driver.FindElement(By.Name("Ecom_Payment_Card_ExpDate_Month")).FindElement(By.CssSelector("option[value='03']")).Click();
            driver.FindElement(By.Name("Ecom_Payment_Card_ExpDate_Year")).FindElement(By.CssSelector("option[value='2030']")).Click();
            driver.FindElement(By.Name("Ecom_Payment_Card_Verification")).SendKeys("123");
            driver.FindElement(By.Name("payment")).Click();
        }

        [Then(@"they get a confirmation screen with the payment details, case number & the corresponding email with payment details")]
        public void ThenTheyGetAConfirmationScreenWithThePaymentDetailsCaseNumberTheCorrespondingEmailWithPaymentDetails()
        {
            driver.PageSource.Contains("Your Payment is Accepted");
        }
    }
}
