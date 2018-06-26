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
    [Binding, Scope(Feature = "Barclaycard")]
    public class BarclaycardSteps
    {
        [Given(@"user is on the barclaycard page")]
        public void GivenUserIsOnTheBarclaycardPage()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Given(@"they enter the customer details & click next")]
        public void GivenTheyEnterTheCustomerDetailsClickNext()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"they click next after entering the crm product code & purchase quantity")]
        public void WhenTheyClickNextAfterEnteringTheCrmProductCodePurchaseQuantity()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"they enter the relevant card details & confirm the payment")]
        public void WhenTheyEnterTheRelevantCardDetailsConfirmThePayment()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"they enter the refused card details & confirm the payment")]
        public void WhenTheyEnterTheRefusedCardDetailsConfirmThePayment()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"they enter the uncertain card details & confirm the payment")]
        public void WhenTheyEnterTheUncertainCardDetailsConfirmThePayment()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"they get a confirmation screen with the payment details & the corresponding email with payment details")]
        public void ThenTheyGetAConfirmationScreenWithThePaymentDetailsTheCorrespondingEmailWithPaymentDetails()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"they get a message saying transaction has been declined")]
        public void ThenTheyGetAMessageSayingTransactionHasBeenDeclined()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"they get a uncertain screen followed by a confirmation screen with the payment details & the corresponding email with payment details")]
        public void ThenTheyGetAUncertainScreenFollowedByAConfirmationScreenWithThePaymentDetailsTheCorrespondingEmailWithPaymentDetails()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
