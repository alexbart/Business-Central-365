query 65400 "Person's who paid a fine"
{
    QueryType = Normal;

    elements
    {
        dataitem(Lending; "Book Lending")
        {
            DataItemTableFilter = "Fine Amount" = filter(> 0);
            column(Lending_ID; "Lending ID")
            {
                Caption = 'Lendind ID';
            }
            column(Book_ID; "Book ID")
            {
                Caption = 'Book ID';
            }
            column(Customer_Name; "Customer Name")
            {
                Caption = 'Customer Name';
            }
            column(Lending_Date; "Lending Date")
            {
                Caption = 'Lending Date';
            }
            column(Returning_Date; "Returning Date")
            {
                Caption = 'Returning Date';
            }
            column(Due_Date; "Due Date")
            {
                Caption = 'Due Date';
            }
            column(Fine_Amount; "Fine Amount")
            {
                Caption = 'Fine Amount';
            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}