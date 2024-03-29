query 61106 FBM_GLEntryBankAcc_PBI
{

    QueryType = API;
    Caption = 'GLEBankAcc';
    APIPublisher = 'FBMGroup';
    APIGroup = 'app1';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'GLEBankAcc';
    EntitySetName = 'GLEBankAcc';
    elements
    {
        dataitem(GLEntry; "G/L Entry")
        {
            column(G_L_Account_No; "G/L Account No.")
            {
            }
            column(Posting_Date; "Posting Date")
            {
            }
            column(Document_No; "Document No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Sum_Amount; Amount)
            {
                Method = Sum;
            }
            column(Transaction_No; "Transaction No.")
            {
            }
            column(Dimension_Set_ID; "Dimension Set ID")
            {
            }
            column(Reversed; Reversed)
            { }

            dataitem(BankAccount; "Bank Account")
            {
                DataItemLink = "No." = GLEntry."Source No.";
                column(No; "No.")
                {
                }
                column(Name; Name)
                {
                }
                dataitem(Customer; "Customer")
                {
                    DataItemLink = "No." = GLEntry."Source No.";
                    column(CustomerNo; "No.")
                    { }
                    column(CustomerName; Name)
                    {
                    }
                    dataitem(Vendor; "Vendor")
                    {
                        DataItemLink = "No." = GLEntry."Source No.";
                        column(VendorNo; "No.")
                        { }
                        column(VendorName; Name)
                        {
                        }
                    }
                }
            }
        }
    }
}

