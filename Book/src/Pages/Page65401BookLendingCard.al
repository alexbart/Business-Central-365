page 65401 LendingCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Book Lending";

    layout
    {
        area(Content)
        {
            group("Book Lending Details")
            {

                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                    ShowMandatory = true;
                    TableRelation = Book."Book ID";
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.', Comment = '%';
                    ShowMandatory = true;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                    ShowMandatory = true;
                    Editable = false;
                }
                field("Fine Amount"; Rec."Fine Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fine Amount field.', Comment = '%';
                    ShowMandatory = true;
                    Editable = false;
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending Date field.', Comment = '%';
                    ShowMandatory = true;

                    trigger OnValidate()

                    begin
                        // if rec."Lending Date" <> Today then
                        //     Error('Invalid Lending Date, the date must be today!');
                        Rec."Due Date" := Rec."Lending Date" + 30;
                    end;
                }
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending ID field.', Comment = '%';
                    ShowMandatory = true;
                }
                field("Returning Date"; Rec."Returning Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Returning Date field.', Comment = '%';
                    ShowMandatory = true;

                    trigger OnValidate()

                    begin
                        if rec."Returning Date" <> 0D then begin
                            if rec."Returning Date" > Rec."Due Date" then
                                Rec."Fine Amount" := 30
                            else
                                Rec."Fine Amount" := 0;
                        end;
                    end;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                    ShowMandatory = true;
                }
            }
        }
    }

    trigger OnOpenPage()

    begin

    end;
}