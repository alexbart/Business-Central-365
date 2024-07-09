page 65403 "Book Lending List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Book Lending";

    layout
    {
        area(Content)
        {
            repeater("Book Lending List")
            {

                field("Book ID"; Rec."Book ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Book ID field.', Comment = '%';
                    TableRelation = Book."Book ID";
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.', Comment = '%';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.', Comment = '%';
                }
                field("Fine Amount"; Rec."Fine Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fine Amount field.', Comment = '%';
                }
                field("Lending Date"; Rec."Lending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending Date field.', Comment = '%';
                }
                field("Lending ID"; Rec."Lending ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Lending ID field.', Comment = '%';
                    DrillDownPageId = 65401;
                    TableRelation = "Book Lending"."Lending ID";
                }
                field("Returning Date"; Rec."Returning Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Returning Date field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
        // area(Factboxes)
        // {

        // }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }
}