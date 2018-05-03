data Bool = False | True

type CardHolder = String
type CardNumber = String
type Address = [String]
type CustomerID = String

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)
--Here, we're saying that we support three ways to bill our customers.
-- . If they want to pay by credit card, they must supply a card number, the
-- holder's name, and the holder's billing address as arguments to the
-- CreditCard value constructor
-- Alternatively, they can pay the person who delivers their shipment.
-- Since we don't need to store any extra information about this, we specify no
-- arguments for the CashOnDelivery constructor. Finally, we can send an invoice
-- to the specified customer, in which case we need their CustomerID as an argument
-- to the Invoice constructor
